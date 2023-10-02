import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hotel_app/presentation/view/combain_screem.dart';

class RegistrScreen extends StatefulWidget {
  const RegistrScreen({super.key});

  @override
  State<RegistrScreen> createState() => _RegistrScreenState();
}

class _RegistrScreenState extends State<RegistrScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextEditingController userController = TextEditingController();
    TextEditingController passController = TextEditingController();

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
           alignment: Alignment.topCenter,
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
              padding: const EdgeInsets.only(top: 70),
              margin: const EdgeInsets.all(24),
              child: const Card(
                  child: Image(
                image: AssetImage(
                  'assets/images/img.png',
                ),
                fit: BoxFit.cover,
              )),
            ),
            Positioned(
              top: 300,
              left: size.width / 2 - 100,
              child: const Text(
                'bookme.com',
                style: TextStyle(
                    fontSize: 28,
                    fontFamily: 'textfont',
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              bottom: 300,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: size.width,
                    margin: const EdgeInsets.symmetric(horizontal: 12),
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: TextFormField(
                      controller: userController,
                      decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.green, width: 1.5),
                          ),
                          border: InputBorder.none,
                          hintText: 'User Name',
                          hintStyle: TextStyle(
                              color: Colors.white,
                              fontFamily: 'textfont',
                              fontSize: 22,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 12),
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    width: size.width,
                    child: TextFormField(
                      controller: passController,
                      decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.green, width: 1.5),
                          ),
                          border: InputBorder.none,
                          hintText: 'Password',
                          hintStyle: TextStyle(
                              color: Colors.white,
                              fontFamily: 'textfont',
                              fontSize: 22,
                              fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 170,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 4,
                  backgroundColor: Colors.green,
                  fixedSize: Size(size.width-32, size.height * 0.05),
                ),
                child: const Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'textfont',
                        fontSize: 24),
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const CombainScreen()));
                },
              ),
            ),
           const Positioned(
              bottom: 120,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'or',
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'textfont',
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Positioned(
              bottom: 60,
              child: SizedBox(
                width: size.width/3,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  GestureDetector(
                    onTap: (){},
                    child:const Image(
                      image: AssetImage('assets/images/google.png'),fit: BoxFit.cover,height: 32,width: 32,
                    ),
                  ),
                    GestureDetector(
                      onTap: (){},
                      child:const Image(
                        image: AssetImage('assets/images/facebook.png'),fit: BoxFit.cover,height: 32,width: 32,
                      ),
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
