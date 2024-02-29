import 'package:dio/dio.dart';

class LasfFMService {
  late final Dio _dio;
  final String key = const String.fromEnvironment('KEY');
  late final String session;

  LastFMService() {
    _dio = Dio();
    _dio.options.baseUrl = 'http://ws.audioscrobbler.com/2.0';
    _dio.options.headers['User-Agent'] = 'Zune - mobile mp3 player app';
    _dio.options.queryParameters = {'format': 'json', 'api_key': key};
  }

  Future<dynamic> searchArtistsBio(String artist) async {
    try {
      final response = await _dio.get('/', queryParameters: {
        'method': 'artist.getinfo',
        'artist': artist,
      });
      return response.data['artist']['bio']['summary'];
    } catch (e) {
      throw Exception(e);
    }
  }
}
