import 'package:flutter/material.dart';

class DashedLine extends StatelessWidget {
  const DashedLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.of(context).size.height * 0.2 + 20,
      left: 28,
      right: 28,
      child: Row(
        children: List.generate(
          30,
          (index) => Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: Container(color: const Color(0xFF888888), height: 2),
            ),
          ),
        ),
      ),
    );
  }
}
