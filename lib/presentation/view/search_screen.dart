import 'package:flutter/material.dart';
import 'package:hotel_app/presentation/widgets/show_hotel.dart';
import 'package:hotel_app/presentation/widgets/show_map.dart';
import 'package:hotel_app/presentation/widgets/show_map_new.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool isPressed = false;
  List<String> items = ['Nearby', 'Popular', 'All'];
  int current = 0;

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
                          'Location',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 28,
                              fontFamily: 'textfont'),
                        ),
                        Text(
                          'Toshkent',
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
              padding: const EdgeInsets.only(left: 22, right: 22),
              child: SizedBox(
                height: 60,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          current = index;
                        });
                      },
                      child: AnimatedContainer(
                        duration: const Duration(seconds: 2),
                        width: size.width / 3 - 20,
                        height: 44,
                        margin: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: current == index
                                ? Colors.white70
                                : Colors.white54),
                        child: Text(
                          items[index],
                          style: TextStyle(
                              color:
                                  current == index ? Colors.black : Colors.grey,
                              fontFamily: 'textfont',
                              fontSize: 22),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const ShowMapNew()));
                      },
                      child: const ShowHotel());
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
