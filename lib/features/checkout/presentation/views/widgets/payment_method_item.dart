import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentMethodItem extends StatelessWidget {
  final bool isActive;
  final String image;

  const PaymentMethodItem({super.key, required this.isActive, required this.image});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      width: 103,
      height: 62,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: isActive ? Color(0xFF34A853) : Color(0xFFE0E0E0), width: 2),
      ),
      child: Center(child: SvgPicture.asset(image, height: 35, fit: BoxFit.scaleDown)),
    );
  }
}
