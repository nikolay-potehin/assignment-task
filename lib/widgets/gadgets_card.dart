import 'package:assignment_task/widgets/my_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GadgetsCard extends StatelessWidget {
  const GadgetsCard({
    super.key,
    required this.name,
    required this.gadgets,
    required this.assetName,
  });

  final String name;
  final String gadgets;
  final String assetName;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MyContainer(
        onTap: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: const Color.fromRGBO(108, 99, 255, 1),
                borderRadius: BorderRadius.circular(40),
              ),
              child: SizedBox(
                width: 20,
                height: 20,
                child: SvgPicture.asset(assetName),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              gadgets,
              style: const TextStyle(
                color: Color.fromRGBO(144, 148, 153, 1),
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
