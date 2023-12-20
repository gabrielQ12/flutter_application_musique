
import 'package:flutter_application_musique/services/music_datas.dart';

import '../model/raw_model/artist.dart';

class MusicHandler {
  final datas = MusicDatas();

  List<Artist> allArtists() {
    List<Artist> artists = [];
    final all = datas.allDatas();
    for( var song in all) {
      if (!artists.contains(song.artist)) {
        artists.add(song.artist);
      }
    }
    return artists;
  }
}