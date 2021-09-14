import 'dart:ui';
import "package:flutter/material.dart";

class BlurredImage extends StatelessWidget {
  final ImageProvider imageProvider;
  final bool showBlur;

  const BlurredImage(
      {Key? key, required this.imageProvider, required this.showBlur})
      : super(key: key);

  BlurredImage.network(String imageUrl, {this.showBlur = false})
      : imageProvider = NetworkImage(imageUrl);

  BlurredImage.asset(String assetName, {this.showBlur = false})
      : imageProvider = AssetImage(assetName);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image(
          image: imageProvider,
          fit: BoxFit.cover,
        ),
        if (showBlur)
          ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                color: Colors.grey.withOpacity(0.1),
                alignment: Alignment.center,
              ),
            ),
          ),
      ],
    );
  }
}
