import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_app/presentation/view/registr_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: size.height,
            width: size.width,
            decoration: BoxDecoration(
                color: Colors.yellow,
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.yellow.shade200,
                      Colors.yellow.shade200,
                      Colors.yellow.shade400,
                      Colors.yellow.shade400,
                      Colors.yellow.shade600,
                      Colors.yellow.shade800,
                      Colors.yellow.shade800,
                      Colors.yellow.shade900,
                      Colors.yellow.shade900,
                    ])),
            child: SvgPicture.asset(
              'assets/images/hotel.svg',
              fit: BoxFit.cover,
              width: size.width,
              height: size.height,
            ),
          ),
          Container(
            margin: const EdgeInsets.all(24),
            child: const Card(
                child: Image(
                  image: AssetImage(
                    'assets/images/img.png',
                  ),
                  fit: BoxFit.cover,
                )),
          ),
          const Positioned(
            bottom: 200,
            child: Text(
              'WELCOME',
              style: TextStyle(
                  fontSize: 28,
                  fontFamily: 'textfont',
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Positioned(
            bottom: 170,
            child: Text(
              'Book and enjoy your vacation with us',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'textfont',
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
            Positioned(
              bottom: 100,
              child:  CircleAvatar(
                radius: 24,
                backgroundColor: Colors.yellow,
                child: Center(
                    child: IconButton(
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const RegistrScreen()));
                      },
                      icon:const Icon(
                  Icons.chevron_right_outlined,
                  color: Colors.white,
                  weight: 20,
                  size: 32,
                ),
                    )),
              )),
        ],
      ),
    );
  }
}
