import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class Utils {
  static loader(context) {
    return SizedBox(
      height: 40.0,
      width: 40.0,
      child: LoadingIndicator(
        indicatorType: Indicator.ballScaleMultiple,
        strokeWidth: 1.5,
      ),
    );
  }
}