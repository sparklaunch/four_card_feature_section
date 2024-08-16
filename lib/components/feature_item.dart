import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:four_card_feature_section/models/feature.dart';

class FeatureItem extends StatelessWidget {
  final Feature feature;
  const FeatureItem(this.feature, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            spreadRadius: 10,
            blurRadius: 10,
            color: Colors.black.withOpacity(0.1),
            offset: const Offset(0, 5),
          )
        ],
      ),
      clipBehavior: Clip.hardEdge,
      child: Column(
        children: [
          Divider(
            thickness: 8,
            color: feature.color,
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  feature.title,
                  style: const TextStyle(
                    color: Color.fromRGBO(42, 44, 63, 1),
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  feature.content,
                  style: const TextStyle(
                    color: Color.fromRGBO(160, 160, 160, 1),
                    height: 1.8,
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  children: [
                    const Spacer(),
                    SvgPicture.asset(
                        "assets/images/${feature.title.replaceAll(" ", "")}.svg")
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
