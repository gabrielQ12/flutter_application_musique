import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learn_music/model/raw_model/album.dart';
import 'package:learn_music/model/services/music_handler.dart';
import 'package:learn_music/views/cells/album_view_cell.dart';

import '../../model/raw_model/album.dart';
import '../../model/services/music_handler.dart';

class AlbumsContainer extends StatelessWidget {
  List<Album> albums = MusicHandler().allAlbums();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Albums", style: GoogleFonts.signika(fontSize: 20)),
          Container(
            height: 300,
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: albums.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
                itemBuilder: ((context, index) => AlbumViewCell(album: albums[index],))
            ),
          )
        ],
      ),
    );
  }
}