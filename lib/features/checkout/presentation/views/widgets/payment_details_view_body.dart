import 'dart:developer';

import 'package:flutter/material.dart';

import 'custom_button.dart';
import 'custom_credit_card.dart';
import 'payment_methods_list_view.dart';
import '../success_view.dart';

class PaymentDetailsViewBody extends StatefulWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: const PaymentMethodsListView()),
          SliverToBoxAdapter(
            child: CustomCreditCard(
              formKey: formKey,
              autoValidateMode: autoValidateMode,
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: CustomButton(
                title: "Pay",
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    log("Paid");

                  } else {
                    // setState(() {
                    //   autoValidateMode = AutovalidateMode.always;
                    // });
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const SuccessView(),
                      ),
                    );
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
