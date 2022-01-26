import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "About",
            style: Theme.of(context).textTheme.headline1!.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc porttitor ex quam, vel bibendum massa elementum a. In commodo, orci.",
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
          ),
        ],
      ),
    );
  }
}
