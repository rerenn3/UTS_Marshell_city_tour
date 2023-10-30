import 'package:flutter/material.dart';

class ImageGallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _buildImage('https://picsum.photos/id/152/300/200'),
          _buildImage('https://picsum.photos/id/162/300/200'),
          _buildImage('https://picsum.photos/id/172/300/200'),
        ],
      ),
    );
  }

  Widget _buildImage(String imageUrl) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8.0),
        child: Image.network(
          imageUrl,
          height: 300,
          width: 150,
        ),
      ),
    );
  }
}
