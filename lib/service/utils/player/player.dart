import 'package:audio_service/audio_service.dart';
import 'package:just_audio/just_audio.dart';
import 'package:zune/service/utils/models/music.dart';
import 'package:zune/service/utils/player/create_audio_source.dart';


class Player extends BaseAudioHandler with QueueHandler, SeekHandler {
  AudioPlayer _player = AudioPlayer();

  void _playerHandlerState(PlaybackEvent e) {
    playbackState.add(
      playbackState.value.copyWith(
        controls: [
          MediaControl.skipToPrevious,
          _player.playing ? MediaControl.pause : MediaControl.play,
          MediaControl.skipToNext 
        ],
        systemActions: const {
          MediaAction.seek,
          MediaAction.seekBackward,
          MediaAction.seekForward
        },
        processingState: const{
          ProcessingState.idle: AudioProcessingState.idle,
          ProcessingState.loading: AudioProcessingState.loading,
          ProcessingState.buffering: AudioProcessingState.buffering,
          ProcessingState.ready: AudioProcessingState.ready,
          ProcessingState.completed: AudioProcessingState.completed,
        }[_player.processingState]!,
        playing: _player.playing,
        updatePosition: _player.position,
        bufferedPosition: _player.bufferedPosition,
        queueIndex: e.currentIndex
      )
    );
  }

  void _changeMusic() {
    _player.currentIndexStream.listen(
      (i) {
        final playlist = queue.value;

        if (i == null || playlist.isEmpty) return;

        mediaItem.add(playlist[i]);
      }
    );
  }

  Future<void> init({required List<Music> songs}) async {
    _player.playbackEventStream.listen(_playerHandlerState);
  
    final audios = songs.map((s) => CreateAudioSource.create(s)).toList();
  
    await _player.setAudioSource(ConcatenatingAudioSource(children: audios));

    final nQueue = queue.value..addAll(songs);
    queue.add(nQueue);

    _changeMusic();

    _player.processingStateStream.listen((state) {
      if (state == ProcessingState.completed) skipToNext();
    });
  }

  //FUNCTIONS
  @override
  Future<void> play() => _player.play();

  @override
  Future<void> pause() => _player.pause();

  @override
  Future<void> seek(Duration position) => _player.seek(position);

  @override
  Future<void> skipToQueueItem(int index) async {
    await _player.seek(Duration.zero, index: index);
    play();
  }

  @override
  Future<void> skipToNext() async => _player.seekToNext();

  @override
  Future<void> skipToPrevious() async => _player.seekToPrevious();
}