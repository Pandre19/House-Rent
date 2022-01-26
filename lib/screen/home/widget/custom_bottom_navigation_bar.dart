import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final bottomBarItem = [
    "home",
    "home_search",
    "notification",
    "chat",
    "home_mark"
  ];
  CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 15,
      ),
      margin: const EdgeInsets.only(
        bottom: 25,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 4,
            blurRadius: 3,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        ...bottomBarItem
            .map(
              (e) => SvgPicture.asset(
                "assets/icons/$e.svg",
                color: Theme.of(context).primaryColor,
              ),
            )
            .toList()
      ]),
    );
  }
}
