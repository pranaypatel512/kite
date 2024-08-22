import 'package:flutter/material.dart';

import '../../widgets/empty_widget.dart';

class PortfolioScreen extends StatelessWidget {
  final List<Tab> portfolioTabs = <Tab>[
    Tab(text: 'Holdings'),
    Tab(text: 'Positions'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: portfolioTabs.length,
        child: Column(children: [
          TabBar(tabs: portfolioTabs),
          Expanded(
            child: TabBarView(
              children: portfolioTabs.map((Tab tab) {
                return PortfolioTabContent(tabTitle: tab.text!);
              }).toList(),
            ),
          ),
        ]));
  }
}

class PortfolioTabContent extends StatelessWidget {
  final String tabTitle;

  PortfolioTabContent({required this.tabTitle});

  @override
  Widget build(BuildContext context) {
    const String assetName = 'assets/empty_state.svg';
    return EmptyStateWidget(
      title: 'No $tabTitle Available',
      subTitle: 'You don\'t have any $tabTitle at the moment.',
      assetName: assetName,
    );
  }
}
