import 'package:flutter/material.dart';

import '../../../../../generated/assets.dart';
import '../payments_details.dart';
import 'custom_button.dart';
import 'order_info_item.dart';
import 'total_price.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(height: 18),
          Expanded(child: Image.asset(Assets.imagesBasket)),
          SizedBox(height: 25),
          OrderInfoItem(title: "Order Subtotal", value: r"$42.22"),
          SizedBox(height: 3),
          OrderInfoItem(title: "Discount", value: r"$0"),
          SizedBox(height: 3),
          OrderInfoItem(title: "Shipping", value: r"$8"),
          SizedBox(height: 3),
          Divider(thickness: 2, height: 34),
          TotalPrice(title: "Total", value: r"$50.22"),
          SizedBox(height: 16),
          CustomButton(
            title: "Complete Order",
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const PaymentsDetails(),
                ),
              );
            },
          ),
          SizedBox(height: 30),
        ],
      ),
    );
  }
}
