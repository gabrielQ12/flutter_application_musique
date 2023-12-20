import 'package:flutter_application_musique/model/raw_model/song.dart';
import 'package:learn_music/model/raw_model/artist.dart';
import 'package:learn_music/model/raw_model/song.dart';

import 'artist.dart';

class Album {
  String title;
  Artist artist;
  List<Song> songs;

  Album({required this.artist, required this.title, required this.songs});
}