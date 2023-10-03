import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
 final String image;
 const  IconWidget({
    super.key,required this.image
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(left: 12),
      padding: const EdgeInsets.all(8),
      decoration:const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xffF5F3EE),
        boxShadow: [
          BoxShadow(
              blurRadius: 2,
              offset: Offset(0, 4),
              color: Colors.black38
          ),
        ],

      ),
      child: Image.asset(image,fit: BoxFit.cover,height: 32,width: 32,),

    );
  }
}