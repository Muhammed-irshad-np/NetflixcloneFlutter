import 'package:flutter/material.dart';
import 'package:netflixclone/core/constants.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          const Text("Downloads"),
          const Spacer(),
          const Icon(
            size: 40,
            Icons.cast,
            color: Colors.white,
          ),
          kwidth,
          Container(
            color: Colors.blue,
            height: 30,
            width: 30,
          )
        ],
      ),
    ));
  }
}
