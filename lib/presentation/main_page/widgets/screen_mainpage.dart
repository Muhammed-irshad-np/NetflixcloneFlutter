import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:netflixclone/core/colors/colors.dart';
import 'package:netflixclone/presentation/downloads/widgets/screen_downloads.dart';
import 'package:netflixclone/presentation/fast_laugh/fast_laugh.dart';
import 'package:netflixclone/presentation/home/screen_home.dart';
import 'package:netflixclone/presentation/main_page/widgets/bottom_nav.dart';
import 'package:netflixclone/presentation/new_and_hot/screenNewandHot.dart';
import 'package:netflixclone/presentation/search/screen_search.dart';

class ScreenMainPage extends StatelessWidget {
  ScreenMainPage({super.key});
  final _screnlist = const [
    ScreenHome(),
    ScreenNewAndHot(),
    ScreenFastLaugh(),
    ScreenSearch(),
    ScreenDownloads()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: bottombuttonIndex,
        builder: (context, index, _) {
          return _screnlist[index];
        },
      ),
      bottomNavigationBar: BottomNavWidget(),
    );
  }
}
