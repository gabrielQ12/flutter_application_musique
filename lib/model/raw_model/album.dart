
import 'package:flutter_application_musique/model/raw_model/song.dart';

import 'artist.dart';


class Album {
  String title;
  Artist  artist;
  List<Song> songs;

  Album({required this.title, required this.artist, required this.songs});

}