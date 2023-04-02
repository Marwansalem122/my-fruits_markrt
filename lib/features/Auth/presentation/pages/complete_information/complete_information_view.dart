import 'package:ecom_app/features/Auth/presentation/pages/complete_information/widgets/complete_information_body.dart';
import 'package:flutter/material.dart';
// import 'package:ecoM_App/features/Auth/presentation/pages/complete_information/widgets/complete_information_body.dart';

class CompleteInformationView extends StatelessWidget {
  const CompleteInformationView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : CompleteInformationBody(),
    );
  }
}