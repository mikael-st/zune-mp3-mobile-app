import 'package:just_audio/just_audio.dart';
import 'package:zune/service/utils/models/music.dart';

class CreateAudioSource {
  static UriAudioSource create(Music item){
    return ProgressiveAudioSource(Uri.parse(item.id));
  }
} 