import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kite/extension/extensions.dart';

import '../theme/app_colors.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const CommonAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4.0, right: 12.0, top: 4.0),
      child: AppBar(
        leading: IconButton(
          icon:  AssetVectorIcon(path: "assets/ic_back.svg"),
          onPressed: () {
            Navigator.of(context)
                .pop(); // Navigates back to the previous screen
          },
        ),
        actions: [
          SvgPicture.asset(
            "assets/kite_logo.svg",
            semanticsLabel: "Zerodha",
            colorFilter:
                const ColorFilter.mode(AppColors.logoColor, BlendMode.srcIn),
            height: 26,
            width: 26,
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class AssetVectorIcon extends StatelessWidget {
  final String path;
  final double height;
  final double width;
   Color? tintColor;

   AssetVectorIcon({
    Key? key,
    required this.path,
    this.height=32,
    this.width=32,
    this.tintColor=AppColors.white
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Check if the current theme is dark mode
    final bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    
    // Update color based on the current theme
    return SvgPicture.asset(
      path,
      width: width,
      height: height,
      colorFilter: ColorFilter.mode(
        tintColor ?? (isDarkMode ? Colors.grey : Colors.black), // Use your custom colors here
        BlendMode.srcIn,
      ),
    );
  }
}