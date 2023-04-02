import 'package:ecom_app/features/on%20Boarding/presentation/widgets/page_view_item.dart';
import 'package:flutter/material.dart';

class Custompageview extends StatelessWidget {
  const Custompageview({Key? key,@required this.pageController}) : super(key: key);
final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [

        Pageview_item(
          image: 'assets/imgs/1.png',
          title: 'E Shopping',
          subTitle: 'Explore  top organic fruits & grab them',
        ),
        Pageview_item(
          image: 'assets/imgs/2.png',
          title: 'E Shopping',
          subTitle: 'Get your order by speed delivery',
        ),
        Pageview_item(
          image:'assets/imgs/3.png',
          title: 'E Shopping',
          subTitle: 'Order is arrived at your Place',
        ),
      ],
    );
  }
}
