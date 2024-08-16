import 'package:flutter/material.dart';
import 'package:four_card_feature_section/components/feature_item.dart';
import 'package:four_card_feature_section/models/features.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(249, 249, 249, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "Reliable, efficient delivery",
                style: TextStyle(
                  color: Color.fromRGBO(68, 68, 80, 1),
                  fontSize: 27,
                ),
                textAlign: TextAlign.center,
              ),
              const Text(
                "Powered by Technology",
                style: TextStyle(
                  fontSize: 27,
                  color: Color.fromRGBO(61, 60, 79, 1),
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              const Text(
                "Our artificial intelligence powered tools use millions of project data points to ensure that your project is successful",
                style: TextStyle(
                  color: Color.fromRGBO(156, 156, 156, 1),
                  fontSize: 18,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              ...features.map((feature) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: FeatureItem(feature),
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}
