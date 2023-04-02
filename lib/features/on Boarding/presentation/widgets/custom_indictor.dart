import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../../../../core/constant.dart';

class customindicator extends StatelessWidget {
  const customindicator({Key? key, required this.dots}) : super(key: key);
 final double? dots;
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: 3,
      position: dots!,
      decorator: DotsDecorator(
          color: Colors.transparent,
          activeColor: mycolor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(color: mycolor)
          )
      ),
    );
  }
}
