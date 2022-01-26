import 'package:flutter/material.dart';
import 'package:house_rent/model/house.dart';

class ContentIntro extends StatelessWidget {
  final House house;
  const ContentIntro({Key? key, required this.house}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            house.name,
            style: Theme.of(context).textTheme.headline1!.copyWith(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            house.address,
            style: Theme.of(context).textTheme.headline1!.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "5000 sqft",
            style: Theme.of(context).textTheme.headline1!.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
          ),
          const SizedBox(
            height: 5,
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "\$4455 ",
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                TextSpan(
                  text: "Per Month",
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
