import 'package:flutter/material.dart';

class SongCard extends StatelessWidget {
  final AssetImage image;

  const SongCard({Key? key, required this.image}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      child: Column(
        children: [
          Image(
            image: image,
            width: 140,
            height: 140,
          ),
          Text(
            "indian hits",
            style: Theme.of(context).textTheme.caption,
            softWrap: true,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          )
        ],
      ),
    );
  }
}
