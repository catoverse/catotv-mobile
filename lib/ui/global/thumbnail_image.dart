import 'package:feed/core/constants/assets.dart';
import 'package:feed/ui/global/blurred_image.dart';
import 'package:flutter/material.dart';

class ThumbnailImage extends StatelessWidget {
  final String thumbnail;
  final double? aspectRatio;

  const ThumbnailImage({Key? key, required this.thumbnail, this.aspectRatio})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: aspectRatio ?? 16 / 9,
      child: Image.network(thumbnail,
          fit: BoxFit.fill,
          loadingBuilder: (_, child, loadingProgress) {
            if (loadingProgress == null) return child;
            return BlurredImage.asset(
              Assets.placeholderImage,
              showBlur: true,
            );
          },
          errorBuilder: (_, __, ___) => BlurredImage.asset(
                Assets.placeholderImage,
                showBlur: true,
              )),
    );
  }
}
