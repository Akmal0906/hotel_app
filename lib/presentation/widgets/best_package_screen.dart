import 'package:flutter/material.dart';
class BestpackScreen extends StatelessWidget {
  const BestpackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.only(left: 15),
    //  margin:const EdgeInsets.all(8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset('assets/images/splash.jpg',fit: BoxFit.cover,),
      ),
    );
  }
}
