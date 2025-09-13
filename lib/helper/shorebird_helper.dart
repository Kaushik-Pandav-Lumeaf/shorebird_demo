import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shorebird_code_push/shorebird_code_push.dart';

class ShorebirdHelper {
  ShorebirdHelper._();

  static final ShorebirdHelper instance = ShorebirdHelper._();

  factory ShorebirdHelper() => instance;

  late String currentAppVersion;
  late ShorebirdUpdater updater;
  Future<void> init() async {
    updater = ShorebirdUpdater();
    final currentPatch = await updater.readCurrentPatch();

    currentAppVersion = "(patch: ${currentPatch?.number ?? 'none'})";

    print("current app version = $currentAppVersion");
  }

  Future<void> checkForUpdates(BuildContext context) async {
    final status = await updater.checkForUpdate();

    switch (status) {
      case UpdateStatus.upToDate:
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("app is up to date")));
      case UpdateStatus.outdated:
        updater.update();
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text("new update available for download starting to download it")));
      case UpdateStatus.restartRequired:
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text("new update is download restart your app to see changes")));
      case UpdateStatus.unavailable:
    }
  }
}
