import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavigationIcon extends StatelessWidget {
  const NavigationIcon({
    super.key,
    required this.assetName,
    required this.color,
  });

  final String assetName;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: SizedBox(
        width: 20,
        height: 20,
        child: SvgPicture.asset(
          assetName,
          colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
        ),
      ),
    );
  }
}
