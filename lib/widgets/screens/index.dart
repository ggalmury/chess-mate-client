import 'package:chess_mate_client/widgets/atoms/navigation_bar_item.dart';
import 'package:chess_mate_client/widgets/layouts/logo_appbar.dart';
import 'package:chess_mate_client/widgets/molecules/navigation_bar_container.dart';
import 'package:chess_mate_client/widgets/screens/opening_screen.dart';
import 'package:chess_mate_client/widgets/screens/option_screen.dart';
import 'package:chess_mate_client/widgets/screens/pvp_screen.dart';
import 'package:flutter/material.dart';

class Index extends StatefulWidget {
  const Index({super.key});

  @override
  State<Index> createState() => _IndexState();
}

class _IndexState extends State<Index> {
  final List<Widget> _screens = const [
    OpeningScreen(),
    PvpScreen(),
    OptionScreen(),
  ];

  int _pageIndex = 0;

  void _setPageIndex(int index) {
    setState(() {
      _pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LogoAppBar(),
      body: SafeArea(
        child: _screens.elementAt(_pageIndex),
      ),
      bottomNavigationBar: NavigationBarContainer(
        items: [
          NavigationBarItem(label: "오프닝", assetName: "book"),
          NavigationBarItem(label: "PVP", assetName: "piece"),
          NavigationBarItem(label: "옵션", assetName: "setting"),
        ],
        currentIndex: _pageIndex,
        onPressed: _setPageIndex,
      ),
    );
  }
}
