import 'package:flutter/material.dart';
import 'package:netflixclone/presentation/custom_widgets/custom_appbar/custom_appbar.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(50), child: CustomAppbar()),
      body: Center(
        child: Text("Downloads"),
      ),
    );
  }
}
