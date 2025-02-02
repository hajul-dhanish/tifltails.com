import 'package:flutter/material.dart';
String contactAdmin = "Please contact system support";

class ExceptionDesign {
  serviceErrorUI(context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: Text(
          contactAdmin,
          // style: AppTheme.of(context).title2,
        ),
      ),
    );
  }
}