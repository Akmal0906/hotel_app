import 'package:flutter/material.dart';
import 'package:hotel_app/presentation/widgets/best_package_screen.dart';

class AllBestPack extends StatelessWidget {
  const AllBestPack({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GridView.builder(
          itemCount: 10,
          gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (BuildContext context, int index) {
            return const BestpackScreen();
          },
        ),
      ),
    );
  }
}
