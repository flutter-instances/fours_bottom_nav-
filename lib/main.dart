import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:fours_bottom_nav/screen/favorite.dart';
import 'package:fours_bottom_nav/screen/home.dart';
import 'package:fours_bottom_nav/screen/profile.dart';
import 'package:fours_bottom_nav/screen/search.dart';
import 'package:fours_bottom_nav/screen/settings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectPosition = 0;
  final screens = [
    const Home(),
    const Search(),
    const Favorite(),
    const Profile(),
    const Settings()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_selectPosition],
      bottomNavigationBar: ConvexAppBar(
        color: Colors.black,
        backgroundColor: Colors.white,
        activeColor: Colors.black,
        style: TabStyle.reactCircle,
        items: const [
          TabItem(
            icon: Icons.home,
          ),
          TabItem(icon: Icons.search),
          TabItem(icon: Icons.favorite),
          TabItem(icon: Icons.person),
          TabItem(icon: Icons.settings),
        ],
        initialActiveIndex: _selectPosition,
        onTap: (index) {
          setState(() {
            _selectPosition = index;
          });
        },
      ),
    );
  }
}
