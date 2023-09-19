import 'package:flutter/material.dart';

class MoneyTrackerTab extends StatelessWidget {
  const MoneyTrackerTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Tab(
      key: Key('moneyTrackerTab'),
      icon: Icon(
        Icons.monetization_on_outlined,
        size: 40,
      ),
      iconMargin: EdgeInsets.zero,
    );
  }
}
