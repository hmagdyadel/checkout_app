import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
AppBar buildAppBar(BuildContext context, {required String title}) {
  return AppBar(
    title: const Text('My Cart', style: Styles.textStyle25),
    centerTitle: true,
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: IconButton(
      icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
      onPressed: () => Navigator.pop(context),
    ),
  );
}
