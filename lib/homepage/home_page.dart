import 'dart:io';

import 'package:flutter/material.dart';
import 'package:shorebird_demo/helper/shorebird_helper.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("this is new shorebird 111 2222 new patch "),
              ElevatedButton(
                onPressed: () {
                  ShorebirdHelper.instance.checkForUpdates(context);
                },
                child: Text("check new updates"),
              ),
              ElevatedButton(
                onPressed: () {
                  exit(0);
                },
                child: Text("restart app"),
              ),
              Text("first patch with shorebird ci cd"),
              Text("first patch with shorebird ci cd"),
              Text("first patch with shorebird ci cd"),
              Text("first patch with shorebird ci cd"),
              Text("first patch with shorebird ci cd"),
              Image.asset("assets/select 1.png"),
              Text("patch version :${ShorebirdHelper.instance.currentAppVersion}"),
            ],
          ),
        ),
      ),
    );
  }
}
