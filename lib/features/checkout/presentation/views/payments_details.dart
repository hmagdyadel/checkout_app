import 'package:flutter/material.dart';

import 'widgets/custom_app_bar.dart';
import 'widgets/payment_details_view_body.dart';

class PaymentsDetails extends StatelessWidget {
  const PaymentsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: "Payment Details"),
      body: PaymentDetailsViewBody(),
    );
  }
}
