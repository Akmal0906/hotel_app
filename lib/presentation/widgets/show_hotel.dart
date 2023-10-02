import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShowHotel extends StatelessWidget {
  const ShowHotel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 140,
                width: double.infinity,
                margin: const EdgeInsets.only(left: 16, right: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    boxShadow: const [
                      BoxShadow(
                          color: Colors.black,
                          offset: Offset(0, 2),
                          blurRadius: 1)
                    ],
                    image: const DecorationImage(
                      image: AssetImage(
                        'assets/images/room.jpg',
                      ),
                      fit: BoxFit.cover,
                    )),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 17, right: 2),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      width: 80,
                      height: 26,
                      decoration: const BoxDecoration(
                          color: Color(0xff2f6d68),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              bottomLeft: Radius.circular(12))),
                      child: const Center(
                        child: Text(
                          '\$99/day',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'textfont'),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 6, left: 27, right: 27),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Toshkent city hotel',
                      style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'textfont',
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    Text(
                      'Gulshan circle 2',
                      style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'textfont',
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ],
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      'assets/images/star.svg',
                      fit: BoxFit.fill,
                      height: 16,
                      width: 16,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 4),
                      child: Text(
                        '4.8 (21 rating)',
                        style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'textfont',
                            fontSize: 16),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
