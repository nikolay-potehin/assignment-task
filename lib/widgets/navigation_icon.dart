import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavigationIcon extends StatelessWidget {
  const NavigationIcon({
    super.key,
    required this.assetName,
  });

  final String assetName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: SizedBox(
        width: 20,
        height: 20,
        child: SvgPicture.asset(assetName),
      ),
    );
  }
}
