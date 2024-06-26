import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageWidget extends StatelessWidget {
  final String imagePath;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final Color? color;
  const ImageWidget({
    super.key,
    this.width,
    required this.imagePath,
    this.height,
    this.color,
    this.fit,
  });

  @override
  Widget build(BuildContext context) {
    return imagePath.getimageType() == imageType.network
        ? CachedNetworkImage(
            imageUrl: imagePath,
            width: width,
            height: height,
            errorWidget: (context, url, error) => Icon(Icons.error),
            progressIndicatorBuilder: (context, url, progress) =>
                Icon(Icons.image),
          )
        : imagePath.getimageType() == imageType.svg
            ? SvgPicture.asset(
                imagePath,
                width: width,
                height: height,
                color: color,
              )
            : imagePath.getimageType() == imageType.png
                ? Image.asset(
                    imagePath,
                    width: width,
                    height: height,
                  )
                : Image.asset(
                    imagePath,
                    width: width,
                    height: height,
                  );
  }
}

enum imageType { network, png, svg, jpeg }

extension CheckTheImageType on String {
  imageType getimageType() {
    if (this.startsWith('http')) {
      return imageType.network;
    } else if (this.endsWith('.svg')) {
      return imageType.svg;
    } else if (this.endsWith('.png')) {
      return imageType.png;
    } else {
      return imageType.jpeg;
    }
  }
}
