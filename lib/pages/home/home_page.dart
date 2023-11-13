import 'package:assignment_task/pages/home/gadgets_card.dart';
import 'package:assignment_task/widgets/my_title.dart';
import 'package:assignment_task/pages/home/room_card.dart';
import 'package:assignment_task/pages/home/stat_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _stats(),
            _rooms(),
            _gadgets(),
          ],
        ),
      ),
      appBar: _appBar(),
    );
  }

  Padding _stats() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          StatCard(title: 'Потребление', value: '3.23 кВт·ч'),
          SizedBox(width: 8),
          StatCard(title: 'Температура', value: '26.5°C'),
          SizedBox(width: 8),
          StatCard(title: 'Влажность', value: '67%'),
        ],
      ),
    );
  }

  Padding _rooms() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyTitle('Комнаты'),
          SizedBox(height: 8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RoomCard(
                name: 'Детская',
                gadgets: '3 устройства',
                temperature: '26.5°C',
                humidity: '63%',
                electricity: '2 кВт·ч',
              ),
              SizedBox(width: 7),
              RoomCard(
                name: 'Кухня',
                gadgets: '1 устройство',
                temperature: '26.5°C',
                humidity: '63%',
                electricity: '2 кВт·ч',
              ),
            ],
          ),
          SizedBox(height: 7),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RoomCard(
                name: 'Спальня',
                gadgets: '3 устройства',
                temperature: '26.5°C',
                humidity: '—',
                electricity: '—',
              ),
              SizedBox(width: 7),
              Expanded(child: SizedBox()),
            ],
          ),
        ],
      ),
    );
  }

  Padding _gadgets() {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyTitle('Устройства'),
          SizedBox(height: 8),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GadgetsCard(
                name: 'Безопасность',
                gadgets: '2 устройства',
                assetName: 'assets/icons/safety.svg',
              ),
              SizedBox(width: 7),
              GadgetsCard(
                name: 'Освещение',
                gadgets: '4 устройства',
                assetName: 'assets/icons/light.svg',
              ),
            ],
          ),
          SizedBox(height: 7),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GadgetsCard(
                name: 'Умная розетка',
                gadgets: '5 устройств',
                assetName: 'assets/icons/smart_socket.svg',
              ),
              SizedBox(width: 7),
              GadgetsCard(
                name: 'Контроллер',
                gadgets: '1 устройство',
                assetName: 'assets/icons/controller.svg',
              ),
            ],
          ),
        ],
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      title: const Text(
        'Мой дом',
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
