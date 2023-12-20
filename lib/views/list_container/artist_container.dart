
import 'package:flutter/material.dart';
import 'package:flutter_application_musique/model/raw_model/artist.dart';
import 'package:flutter_application_musique/services/music_handler.dart';
import 'package:flutter_application_musique/views/cells/artist_circle_cell.dart';
import 'package:google_fonts/google_fonts.dart';

class ArtistContainer extends StatelessWidget {

  final List<Artist> artists = MusicHandler().allArtists();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text("Artistes", style: GoogleFonts.signika(fontSize: 20)),
          Container(
            height: 90,
              child: ListView.builder(
                itemCount: artists.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index ) =>ArtistCircleCell(artist: artists[index], height: 75))
              ),
          )
        ],
      )
    );
  }
}