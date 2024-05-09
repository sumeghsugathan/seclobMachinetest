import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({
    super.key,
    required this.imageUrls,
  });

  final List imageUrls;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(
        crossAxisCount: 3,
        children: imageUrls.map((imageUrl) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(
              imageUrl,
              fit: BoxFit.cover,
            ),
          );
        }).toList(),
      ),
    );
  }
}
