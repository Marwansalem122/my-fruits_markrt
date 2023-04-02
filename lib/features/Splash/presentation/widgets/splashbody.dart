import 'package:ecom_app/core/constant.dart';
import 'package:ecom_app/core/utils/size_config.dart';
import 'package:ecom_app/features/on%20Boarding/presentation/widgets/onBoarding_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class splashbody extends StatefulWidget {
  const splashbody({Key? key}) : super(key: key);

  @override
  State<splashbody> createState() => _splashbodyState();
}

class _splashbodyState extends State<splashbody> with SingleTickerProviderStateMixin{
  AnimationController? animation;
  Animation<double>? fading;
  @override
  void initState() {

    super.initState();
    animation=AnimationController(vsync:this,duration: Duration(milliseconds: 600) );
    fading=Tween<double>(begin: .2,end:1 ).animate(animation!);

    animation?.repeat(reverse: true);
    goToNextview();
  }
  @override
  void dispose() {
animation?.dispose();
super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
       backgroundColor: mycolor,
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
           

              FadeTransition(
                opacity: fading!,
                child: Text("Fruit Market",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                  ),
                ),
              ),
          //Spacer(),
            Image.asset("assets/imgs/splash_view_image.png",fit: BoxFit.fill,)
          ],
        ),
      ),
    );
  }

  void goToNextview() {
    Future.delayed(Duration(seconds: 2),(){
      Get.to(()=>onBoardingBody(),transition: Transition.fade);
    });
  }
}
