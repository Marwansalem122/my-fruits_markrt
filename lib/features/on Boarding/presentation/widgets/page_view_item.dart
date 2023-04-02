import 'package:ecom_app/core/utils/size_config.dart';
import 'package:ecom_app/core/widgets/space_widget.dart';
import 'package:flutter/material.dart';

class Pageview_item extends StatelessWidget {
  const Pageview_item({Key? key, this.title, this.subTitle, this.image})
      : super(key: key);

  final String? title;
  final String? subTitle;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(18),
        SizedBox(
            height: SizeConfig.defaultSize! * 25, child: Image.asset(image!)),
        const VerticalSpace(2.5),

        Text(
          title!,
          style: TextStyle(
            fontSize: 20,
            color: const Color(0xff2f2e41),
            fontWeight: FontWeight.w600,
          ),
          //textAlign: TextAlign.left,
        ),
        const VerticalSpace(1),
        Text(
          subTitle!,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: const Color(0xff78787c),
          ),
        //  textAlign: TextAlign.left,
        ),
      ],
    );
  }
}
