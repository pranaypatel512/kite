import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        AccountSection(title: 'Account', items: ['Profile', 'Settings']),
        AccountSection(title: 'Console', items: ['Reports', 'Statements']),
        AccountSection(title: 'Support', items: ['Help Center', 'Contact Us']),
        AccountSection(title: 'Others', items: ['Logout', 'Terms & Conditions']),
      ],
    );
  }
}

class AccountSection extends StatelessWidget {
  final String title;
  final List<String> items;

  const AccountSection({super.key, required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        ...items.map((item) => ListTile(
          title: Text(item),
          trailing: const Icon(Icons.arrow_forward_ios),
        )),
        const Divider(),
      ],
    );
  }
}
