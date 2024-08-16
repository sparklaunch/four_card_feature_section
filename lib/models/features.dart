import 'package:flutter/material.dart';
import 'package:four_card_feature_section/models/feature.dart';

final List<Feature> features = [
  Feature(
    title: "Supervisor",
    content: "Monitors activity to identify project roadblocks",
    color: const Color.fromRGBO(63, 200, 200, 1),
  ),
  Feature(
    title: "Team Builder",
    content:
        "Scans our talent network to create the optimal team for your project",
    color: const Color.fromRGBO(210, 80, 83, 1),
  ),
  Feature(
    title: "Karma",
    content: "Regularly evaluates our talent to ensure quality",
    color: const Color.fromRGBO(234, 159, 70, 1),
  ),
  Feature(
    title: "Calculator",
    content:
        "Uses data from past projects to provide better delivery estimates",
    color: const Color.fromRGBO(76, 146, 231, 1),
  )
];
