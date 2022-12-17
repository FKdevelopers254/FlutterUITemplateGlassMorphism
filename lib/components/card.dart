import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ArtistCard extends StatelessWidget {
  final String imagePath;
  const ArtistCard({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(35),
          child: Image.asset(imagePath,
          fit: BoxFit.cover,)),
    );
  }
}
