import 'package:flutter/material.dart';
import 'package:shapify/widgets/fake_search.dart';

class CategoryScreen extends StatefulWidget {
  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: FakeSearch(),
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: sideNavigator(size),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: categView(size),
          ),
        ],
      ),
    );
  }
}

Widget sideNavigator(Size size) {
  return Container(
    height: size.height * 0.8,
    width: size.width * 0.2,
    color: Colors.grey.shade200,
  );
}

Widget categView(Size size) {
  return Container(
    height: size.height * 0.8,
    width: size.width * 0.8,
    color: Colors.white,
  );
}
