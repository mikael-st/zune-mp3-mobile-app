import 'package:audio_service/audio_service.dart';
import 'package:just_audio/just_audio.dart';


class Player extends BaseAudioHandler with QueueHandler, SeekHandler {
  AudioPlayer _player = AudioPlayer();
}