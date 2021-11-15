import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_spotify/widgets/album_card.dart';
import 'package:new_spotify/widgets/song_card.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.topLeft,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 6,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomRight,
                  colors: [
                Colors.white.withOpacity(0.5),
                Colors.white.withOpacity(0.1),
                Colors.black.withOpacity(0),
              ])),
        ),
        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomRight,
                    colors: [
                  Colors.black.withOpacity(0),
                  Colors.black.withOpacity(.9),
                  Colors.black.withOpacity(1),
                  Colors.black.withOpacity(1),
                  Colors.black.withOpacity(1),
                ])),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Recently Played",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        Row(
                          children: [
                            Icon(Icons.history),
                            SizedBox(width: 20),
                            Icon(Icons.settings),
                          ],
                        )
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    padding: EdgeInsets.all(30),
                    child: Row(
                      children: [
                        AlbumItemCard(
                          label: "Best Mode",
                          image: AssetImage("assets/album1.jpg"),
                        ),
                        SizedBox(width: 16),
                        AlbumItemCard(
                          label: "silent",
                          image: AssetImage("assets/album2.jpg"),
                        ),
                        SizedBox(width: 16),
                        AlbumItemCard(
                          label: "travel",
                          image: AssetImage("assets/swadesh.jpg"),
                        ),
                        SizedBox(width: 16),
                        AlbumItemCard(
                          label: "telugu hits",
                          image: AssetImage("assets/telugu.jpg"),
                        ),
                        SizedBox(width: 16),
                        AlbumItemCard(
                          label: "indian classic",
                          image: AssetImage("assets/kishorekumar.jpg"),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 32,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          "Good Evening",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            RowAlbumCard(
                              label: "top 50",
                              image: AssetImage("assets/album1.jpg"),
                            ),
                            SizedBox(width: 16),
                            RowAlbumCard(
                              label: "New hits",
                              image: AssetImage("assets/album3.jpg"),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            RowAlbumCard(
                              label: "Romantic",
                              image: AssetImage("assets/telugu2.jpg"),
                            ),
                            SizedBox(width: 16),
                            RowAlbumCard(
                              label: "classic",
                              image: AssetImage("assets/kishorekumar.jpg"),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            RowAlbumCard(
                              label: "traveling songs",
                              image: AssetImage("assets/ilahi.jpg"),
                            ),
                            SizedBox(width: 16),
                            RowAlbumCard(
                              label: "English Classic",
                              image: AssetImage("assets/album2.jpg"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          "recent",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          children: [
                            SongCard(
                              image: AssetImage("assets/album2.jpg"),
                            ),
                            SizedBox(width: 16),
                            SongCard(
                              image: AssetImage("assets/uri.jpg"),
                            ),
                            SizedBox(width: 16),
                            SongCard(
                              image: AssetImage("assets/master.jpg"),
                            ),
                            SizedBox(width: 16),
                            SongCard(
                              image: AssetImage("assets/telugu.jpg"),
                            ),
                            SizedBox(width: 16),
                            SongCard(
                              image: AssetImage("assets/kishorekumar.jpg"),
                            ),
                            SizedBox(width: 16),
                            SongCard(
                              image: AssetImage("assets/album3.jpg"),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          "Recommended",
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        child: Row(
                          children: [
                            SongCard(
                              image: AssetImage("assets/album3.jpg"),
                            ),
                            SizedBox(width: 16),
                            SongCard(
                              image: AssetImage("assets/album2.jpg"),
                            ),
                            SizedBox(width: 16),
                            SongCard(
                              image: AssetImage("assets/album1.jpg"),
                            ),
                            SizedBox(width: 16),
                            SongCard(
                              image: AssetImage("assets/swadesh.jpg"),
                            ),
                            SizedBox(width: 16),
                            SongCard(
                              image: AssetImage("assets/telugu.jpg"),
                            ),
                            SizedBox(width: 16),
                            SongCard(
                              image: AssetImage("assets/uri.jpg"),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}

class RowAlbumCard extends StatelessWidget {
  final AssetImage image;
  final String label;
  const RowAlbumCard({
    Key? key,
    required this.image,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white10,
          borderRadius: BorderRadius.circular(4),
        ),
        clipBehavior: Clip.antiAlias,
        child: Row(
          children: [
            Image(
              image: image,
              height: 48,
              width: 48,
              fit: BoxFit.cover,
            ),
            SizedBox(width: 8),
            Text(label),
          ],
        ),
      ),
    );
  }
}
