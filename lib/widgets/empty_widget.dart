import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EmptyStateWidget extends StatelessWidget {
  final String title;
  final String subTitle;
  final String assetName;

  const EmptyStateWidget({super.key, required this.title, required this.subTitle, required this.assetName,});

  @override
  Widget build(BuildContext context) {
    final Widget svg = SvgPicture.asset(
        assetName,
        semanticsLabel: title
    );
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          svg,
          const SizedBox(height: 16),
          Text(
            title,
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: 8),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ],
      ),
    );
  }
}
