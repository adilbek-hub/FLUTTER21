import 'package:flutter/material.dart';
import 'package:i_am_rich_app/app_images.dart';
import 'package:i_am_rich_app/app_text.dart';
import 'package:i_am_rich_app/app_text_style.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: _myAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              appText.iamRich,
              style: appTextStyle.textStyle,
            ),
            Image.asset(
              AppImages.imageAlmaz,
            ),
          ],
        ),
      ),
    ));
  }

  AppBar _myAppBar() {
    return AppBar(
      toolbarHeight: 100.0,
      elevation: 20,
      title: const Center(
        child: Text('Тапшырма 3'),
      ),
    );
  }
}
