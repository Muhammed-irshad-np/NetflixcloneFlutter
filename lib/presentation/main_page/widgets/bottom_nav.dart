import 'package:flutter/material.dart';

import 'package:netflixclone/core/colors/colors.dart';

ValueNotifier<int> bottombuttonIndex = ValueNotifier(0);

class BottomNavWidget extends StatelessWidget {
  const BottomNavWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: bottombuttonIndex,
      builder: (context, index, _) {
        return BottomNavigationBar(
          onTap: (index) {
            bottombuttonIndex.value = index;
          },
          selectedLabelStyle: const TextStyle(color: Colors.white),
          currentIndex: bottombuttonIndex.value,
          selectedIconTheme: const IconThemeData(color: Colors.white),
          unselectedIconTheme: const IconThemeData(color: Colors.grey),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.collections), label: 'New & Hot'),
            BottomNavigationBarItem(
                icon: Icon(Icons.emoji_emotions), label: 'Fast Laughs'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.download), label: 'Downloads'),
          ],
          backgroundColor: backgroundcolor,
          type: BottomNavigationBarType.fixed,
        );
      },
    );
  }
}
