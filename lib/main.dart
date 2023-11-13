import 'package:assignment_task/constants.dart';
import 'package:assignment_task/pages/home_page.dart';
import 'package:assignment_task/pages/profile_page.dart';
import 'package:assignment_task/pages/scenarious_page.dart';
import 'package:assignment_task/widgets/navigation_icon.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true,
          scaffoldBackgroundColor: const Color.fromRGBO(249, 249, 249, 1),
          appBarTheme: const AppBarTheme(
            backgroundColor: Color.fromRGBO(249, 249, 249, 1),
          )),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color.fromRGBO(108, 99, 255, 1),
        selectedFontSize: 10,
        unselectedFontSize: 10,
        onTap: (newIndex) => setState(() => pageIndex = newIndex),
        currentIndex: pageIndex,
        items: _bottomNavbarItems,
      ),
    );
  }
}

const _pages = [
  HomePage(),
  ScenariousPage(),
  ProfilePage(),
];

const _bottomNavbarItems = [
  BottomNavigationBarItem(
    label: 'Дом',
    icon: NavigationIcon(
      assetName: 'assets/icons/home.svg',
      color: kSecondaryColor,
    ),
    activeIcon: NavigationIcon(
      assetName: 'assets/icons/home.svg',
      color: kPrimaryColor,
    ),
  ),
  BottomNavigationBarItem(
    label: 'Сценарии',
    icon: NavigationIcon(
      assetName: 'assets/icons/scenarious.svg',
      color: kSecondaryColor,
    ),
    activeIcon: NavigationIcon(
      assetName: 'assets/icons/scenarious.svg',
      color: kPrimaryColor,
    ),
  ),
  BottomNavigationBarItem(
    label: 'Профиль',
    icon: NavigationIcon(
      assetName: 'assets/icons/profile.svg',
      color: kSecondaryColor,
    ),
    activeIcon: NavigationIcon(
      assetName: 'assets/icons/profile.svg',
      color: kPrimaryColor,
    ),
  ),
];
