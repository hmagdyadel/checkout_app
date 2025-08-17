import 'package:flutter/material.dart';

import 'widgets/custom_app_bar.dart';
import 'widgets/success_view_body.dart';

class SuccessView extends StatelessWidget {
  const SuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: ""),
      body: Transform.translate(
        offset: const Offset(0, -10),
        child: SuccessViewBody(),
      ),
    );
  }
}
