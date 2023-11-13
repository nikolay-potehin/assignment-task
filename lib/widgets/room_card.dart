import 'package:assignment_task/widgets/my_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RoomCard extends StatelessWidget {
  const RoomCard({
    super.key,
    required this.name,
    required this.gadgets,
    required this.temperature,
    required this.humidity,
    required this.electricity,
  });

  final String name;
  final String gadgets;
  final String temperature;
  final String humidity;
  final String electricity;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MyContainer(
        onTap: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            const SizedBox(height: 8),
            Wrap(
              spacing: 8,
              runSpacing: 4,
              children: [
                _RoomStat(
                  value: temperature,
                  assetName: 'assets/icons/temperature.svg',
                ),
                _RoomStat(
                  value: humidity,
                  assetName: 'assets/icons/humidity.svg',
                ),
                const SizedBox(width: 30),
                _RoomStat(
                  value: electricity,
                  assetName: 'assets/icons/electricity.svg',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _RoomStat extends StatelessWidget {
  const _RoomStat({
    required this.value,
    required this.assetName,
  });

  final String value;
  final String assetName;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(2),
          child: SvgPicture.asset(assetName),
        ),
        const SizedBox(width: 4),
        Text(
          value,
          style: const TextStyle(
            color: Color.fromRGBO(144, 148, 153, 1),
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
