import 'package:flutter/material.dart';
import 'package:hotel_app/presentation/widgets/best_package_screen.dart';
import 'package:hotel_app/presentation/widgets/see_all_best_package.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 46),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Hello',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                              fontFamily: 'textfont'),
                        ),
                        Text(
                          'check the availability',
                          style: TextStyle(
                              color: Colors.grey.shade400,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              fontFamily: 'textfont'),
                        ),
                      ],
                    ),
                  ),
                  const CircleAvatar(
                    backgroundColor: Colors.green,
                    radius: 28,
                    child: CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(
                        'assets/images/splash.jpg',
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15, top: 14),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 80,
                      width: (size.width - 80) / 3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.grey.shade200),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'check in',
                            style: TextStyle(
                                color: Colors.grey.shade400,
                                fontFamily: 'textfont',
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            'Sun 27,2023',
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 16,
                                fontFamily: 'textfont',
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 80,
                      width: (size.width - 80) / 3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.grey.shade200),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'check out',
                            style: TextStyle(
                                color: Colors.grey.shade400,
                                fontFamily: 'textfont',
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            'Mon 28,2023',
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: 16,
                                fontFamily: 'textfont',
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: (size.width - 80) / 3,
                      height: 80,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.grey.shade200),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'guest',
                            style: TextStyle(
                                color: Colors.grey.shade400,
                                fontFamily: 'textfont',
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            '2 person',
                            style: TextStyle(
                                color: Colors.green,
                                fontFamily: 'textfont',
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 14, bottom: 30),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 4,
                    fixedSize: Size(size.width - 48, 28),
                    backgroundColor: Colors.green.shade900),
                child: const Center(
                  child: Text(
                    'Search',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'textfont',
                        fontSize: 22),
                  ),
                ),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Some best package',
                    style: TextStyle(
                        fontFamily: 'textfont',
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const AllBestPack()));
                      },
                      child: Text(
                        'See All >',
                        style: TextStyle(
                            color: Colors.grey.shade400,
                            fontSize: 18,
                            fontFamily: 'textfont',
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const BestpackScreen();
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 22, right: 22, top: 28),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Some best hotels',
                    style: TextStyle(
                        fontFamily: 'textfont',
                        fontWeight: FontWeight.bold,
                        fontSize: 22),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'See All >',
                        style: TextStyle(
                            color: Colors.grey.shade400,
                            fontSize: 18,
                            fontFamily: 'textfont',
                            fontWeight: FontWeight.bold),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return const BestpackScreen();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
