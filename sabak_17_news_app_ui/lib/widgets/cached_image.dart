import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CustomCachedImage extends StatelessWidget {
  const CustomCachedImage({
    Key? key,
    required this.imageUrl,
    this.fit = BoxFit.cover,
  }) : super(key: key);
  final String imageUrl;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      placeholder: (context, url) => Center(
        child: SpinKitWaveSpinner(color: Colors.red),
      ),
      errorWidget: (context, url, error) => Image.asset(
        'assets/no_mage.png',
        fit: fit,
      ),
      fit: fit,
    );
  }
}
