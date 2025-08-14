import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/styles.dart';
import '../../../../../generated/assets.dart';

class CardInfoWidget extends StatelessWidget {
  const CardInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 305,
      height: 85,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 22,
          vertical: 16,
        ),
        child: Row(
          children: [
            SvgPicture.asset(Assets.imagesMasterCard),
            SizedBox(width: 23),
            Column(
              children: [
                Text("Mastercard", style: Styles.textStyle18),
                Text("**** 1234", style: Styles.textStyle18),
              ],
            ),
          ],
        ),
      ),
    );
  }
}