import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';

extension DarkMode on BuildContext {
  /// is dark mode currently enabled?
  bool get isDarkMode {
    final brightness = MediaQuery.of(this).platformBrightness;
    return brightness == Brightness.dark;
  }
}

// Play Store URL
final Uri playStoreUrl = Uri.parse('https://play.google.com/store/apps/details?id=com.zerodha.kite3&hl=en_IN');

extension LaunchURLExtension on BuildContext {
  // Extension method to launch a URL
  Future<void> launchURL(Uri url) async {
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}