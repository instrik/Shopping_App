// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:shapify/widgets/fake_search.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: FakeSearch(),
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.blue,
            indicatorWeight: 2,
            tabs: [
              RepeatedTab(
                label: 'Men',
              ),
              RepeatedTab(
                label: 'Women',
              ),
              RepeatedTab(
                label: 'Shoes',
              ),
              RepeatedTab(label: 'Bags'),
              RepeatedTab(label: 'Elec.'),
              RepeatedTab(label: 'Acc.'),
              RepeatedTab(label: 'Garden'),
              RepeatedTab(label: 'Kids'),
              RepeatedTab(label: 'Beauty'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            RepeatedTab(label: 'Men'),
            RepeatedTab(label: 'Women'),
            RepeatedTab(label: 'Shoes'),
            RepeatedTab(label: 'Bags'),
            RepeatedTab(label: 'Elec.'),
            RepeatedTab(label: 'Acc.'),
            RepeatedTab(label: 'Garden'),
            RepeatedTab(label: 'Kids'),
            RepeatedTab(label: 'Beauty'),
          ],
        ),
      ),
    );
  }
}

class RepeatedTab extends StatelessWidget {
  final String label;
  const RepeatedTab({required this.label});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(label),
    );
  }
}
