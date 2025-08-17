import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';
import 'card_info_widget.dart';
import 'custom_check_icon.dart';
import 'dashed_line.dart';
import 'payment_item_info.dart';
import 'total_price.dart';

class SuccessViewBody extends StatelessWidget {
  const SuccessViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: double.infinity,
            decoration: ShapeDecoration(
              color: Color(0xFFEDEDED),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 66, left: 22, right: 22),
              child: Column(
                children: [
                  Text("Thank You!", style: Styles.textStyle25),
                  Text(
                    "Your transaction was successful",
                    style: Styles.textStyle20,
                  ),
                  SizedBox(height: 42),
                  PaymentInfoItem(title: "Date", value: r"01/24/2023"),
                  SizedBox(height: 20),
                  PaymentInfoItem(title: "Time", value: r"10:15 AM"),
                  SizedBox(height: 20),
                  PaymentInfoItem(title: "To", value: r"Sam Louis"),
                  Divider(thickness: 2, height: 60),
                  TotalPrice(title: "Total", value: r"$50.22"),
                  SizedBox(height: 30),
                  CardInfoWidget(),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(FontAwesomeIcons.barcode, size: 65),
                      Container(
                        width: 113,
                        height: 58,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                            side: BorderSide(
                              width: 1.5,
                              color: const Color(0xFF34A853),
                            ),
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "PAID",
                            textAlign: TextAlign.center,
                            style: Styles.textStyle24.copyWith(
                              color: const Color(0xFF34A853),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height:
                        ((MediaQuery.of(context).size.height * 0.2 + 20) / 2) -
                        29,
                  ),
                ],
              ),
            ),
          ),
          CustomCheckIcon(),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.2,
            left: -20,
            child: CircleAvatar(backgroundColor: Colors.white),
          ),
          DashedLine(),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.2,
            right: -20,
            child: CircleAvatar(backgroundColor: Colors.white),
          ),
        ],
      ),
    );
  }
}
