import 'package:flutter/material.dart';
import 'package:insightify/src/screens/top_albums.dart';
import 'package:insightify/src/screens/top_artists.dart';
import 'package:insightify/src/screens/top_tracks.dart';
import 'package:insightify/src/utils/database_helper.dart';

enum SortBy { timePlayed, timesPlayed }

class TopLists extends StatelessWidget {
  const TopLists({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: const TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.person_outline),
                iconMargin: EdgeInsets.all(0),
                text: 'Artists',
                height: 50,
              ),
              Tab(
                icon: Icon(Icons.album_outlined),
                iconMargin: EdgeInsets.all(0),
                text: 'Albums',
                height: 50,
              ),
              Tab(
                icon: Icon(Icons.music_note_outlined),
                iconMargin: EdgeInsets.all(0),
                text: 'Tracks',
                height: 50,
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          TopArtists(
              key:
                  Key('topArtists${DatabaseHelper().getDateRange.toString()}')),
          TopAlbums(
              key: Key('topAlbums${DatabaseHelper().getDateRange.toString()}')),
          TopTracks(
              key: Key('topTracks${DatabaseHelper().getDateRange.toString()}')),
        ]),
      ),
    );
  }
}
