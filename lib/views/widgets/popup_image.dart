import 'package:flutter/material.dart';

class PopupImage extends StatelessWidget {
  final String imagePath;

  const PopupImage(this.imagePath);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          barrierDismissible: true,
          builder: (context) => GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: Image.asset(
              imagePath,
            ),
          ),
        );
      },
      child: LayoutBuilder(
        builder: (context, constraints) => Image.asset(
          imagePath,
          height: constraints.maxWidth / 1.61,
          width: constraints.maxWidth,
          fit: BoxFit.cover,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}

class PopupNetworkImage extends StatelessWidget {
  final String imageUrl;

  const PopupNetworkImage(this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          barrierDismissible: true,
          builder: (context) => GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: Image.network(
              imageUrl,
            ),
          ),
        );
      },
      child: LayoutBuilder(
        builder: (context, constraints) => Image.network(
          imageUrl,
          height: constraints.maxWidth / 1.61,
          width: constraints.maxWidth,
          fit: BoxFit.cover,
          alignment: Alignment.center,
        ),
      ),
    );
  }
}
