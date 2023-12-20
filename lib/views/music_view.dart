
import 'package:flutter/material.dart';
import 'package:flutter_application_musique/views/list_container/artist_container.dart';

class MusicView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const Divider(),
          ArtistContainer(),

        ],
      )
    );
  }

}