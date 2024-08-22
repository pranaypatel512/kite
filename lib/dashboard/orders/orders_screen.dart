import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../widgets/empty_widget.dart';

class OrdersScreen extends StatelessWidget {
  final List<Tab> orderTabs = <Tab>[
    Tab(text: 'Open'),
    Tab(text: 'Executed'),
    Tab(text: 'GTT'),
    Tab(text: 'Basket'),
    Tab(text: 'SIPs'),
    Tab(text: 'Alerts'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: orderTabs.length,
        child: Column(children: [
          TabBar(tabs: orderTabs),
          Expanded(
            child: TabBarView(
              children: orderTabs.map((Tab tab) {
                return OrdersTabContent(tabTitle: tab.text!);
              }).toList(),
            ),
          ),
        ]));
  }
}

class OrdersTabContent extends StatelessWidget {
  final String tabTitle;

  const OrdersTabContent({super.key, required this.tabTitle});

  @override
  Widget build(BuildContext context) {
    const String assetName = 'assets/empty_state.svg';
    return EmptyStateWidget(
      title: 'No $tabTitle Orders',
      subTitle: 'You don\'t have any $tabTitle orders at the moment.',
      assetName: assetName,
    );
  }
}
