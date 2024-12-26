import 'package:flutter/material.dart';
import 'package:sabak_17_news_app_ui/constants/app_colors/app_bar_bgc.dart';
import 'package:sabak_17_news_app_ui/constants/app_colors/icons_color.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            blurRadius: 15,
            color: Color(0xffffd4cc),
            spreadRadius: 1,
            offset: Offset(5, 15),
          )
        ],
      ),
      child: CircleAvatar(
        radius: 30,
        backgroundColor: orangeColor,
        child: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            color: searchColor,
            size: 30,
          ),
        ),
      ),
    );
  }
}
