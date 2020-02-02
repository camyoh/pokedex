import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class PokemonImage extends StatelessWidget {
  final String urlImage;

  const PokemonImage({Key key, this.urlImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;
    return Container(
      width: _screenSize.width,
      height: _screenSize.height * 0.3,
      child: Center(
          child: CachedNetworkImage(
        imageUrl: 'https://$urlImage',
        placeholder: (context, url) => CircularProgressIndicator(),
        errorWidget: (context, url, error) => Icon(Icons.error),
      )),
    );
  }
}
