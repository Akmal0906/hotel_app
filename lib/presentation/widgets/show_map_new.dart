import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:hotel_app/presentation/widgets/map_icon_widget.dart';
import 'package:hotel_app/utilis/hotel_description.dart';
import 'package:location/location.dart';

class ShowMapNew extends StatefulWidget {
  const ShowMapNew({super.key});

  @override
  State<ShowMapNew> createState() => _ShowMapNewState();
}

class _ShowMapNewState extends State<ShowMapNew> {
  bool _serviceEnabled = false;
  PermissionStatus? _permissionGranted;
  LocationData? _locationData;
  Location location = Location();
  static const LatLng googlePlex = LatLng(37.4223, -122.0848);
  static const LatLng applePlex = LatLng(37.3346, -122.0090);

  Future<dynamic> getLocation() async {
    _serviceEnabled = (await location.serviceEnabled());
    if (!_serviceEnabled) {
      _serviceEnabled = (await location.requestService());
      _permissionGranted = await location.hasPermission();
      if (_permissionGranted == PermissionStatus.denied) {
        _permissionGranted = await location.requestPermission();
      }
    }
    _locationData = await location.getLocation();
    return _locationData;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition:
            const CameraPosition(target: googlePlex, zoom: 13),
        markers: {
          const Marker(
            markerId: MarkerId('_currentLocation'),
          ),
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          _settingModalBottomSheet(context);
        },
      ),
    );
  }

  void _settingModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16),
                    topLeft: Radius.circular(16))),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 22, left: 30, bottom: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Geokbanjo Hotel',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'textfont',
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Gulshan circle 2, Seoul',
                          style: TextStyle(
                              color: Colors.grey.shade600,
                              fontFamily: 'textfont',
                              fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 160,
                    width: double.infinity,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            margin: const EdgeInsets.only(left: 16, right: 13),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: const [
                                  BoxShadow(
                                      blurRadius: 4,
                                      color: Colors.black12,
                                      offset: Offset(0, 8))
                                ],
                                image: const DecorationImage(
                                    image: AssetImage(
                                      'assets/images/room.jpg',
                                    ),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        Expanded(
                            flex: 1,
                            child: Column(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    margin: const EdgeInsets.only(right: 18),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        boxShadow: const [
                                          BoxShadow(
                                              blurRadius: 4,
                                              color: Colors.black12,
                                              offset: Offset(0, 8))
                                        ],
                                        image: const DecorationImage(
                                            image: AssetImage(
                                              'assets/images/room.jpg',
                                            ),
                                            fit: BoxFit.cover)),
                                  ),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    margin: const EdgeInsets.only(right: 18),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        boxShadow: const [
                                          BoxShadow(
                                              blurRadius: 4,
                                              color: Colors.black12,
                                              offset: Offset(0, 8))
                                        ],
                                        image: const DecorationImage(
                                            image: AssetImage(
                                              'assets/images/room.jpg',
                                            ),
                                            fit: BoxFit.cover)),
                                  ),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 17.0, top: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SvgPicture.asset(
                          'assets/images/star.svg',
                          fit: BoxFit.cover,
                          height: 20,
                          width: 10,
                        ),
                        Text(
                          '4.8 (21 rating)',
                          style: TextStyle(
                              color: Colors.grey.shade600,
                              fontFamily: 'textfont',
                              fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 24, top: 11),
                    child: Text(
                      'OVERVIEW',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: 'textfont'),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 24, top: 8),
                    child: Text(
                      str,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: 'textfont'),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 24, top: 11),
                    child: Text(
                      'FEATURES',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: 'textfont'),
                    ),
                  ),
                  Container(
                    height: 68,
                    padding: EdgeInsets.only(bottom: 20),
                    width: double.infinity,
                    child: ListView.builder(
                      itemCount: list.length,
                      scrollDirection: Axis.horizontal,
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return IconWidget(
                          image: list[index],
                        );
                      },
                    ),
                  ),
                  Container(
                    color: const Color(0xffF5F3EE),
                    width: double.infinity,
                    child: Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 25, bottom: 22, top: 16),
                          child: RichText(
                              text: const TextSpan(children: [
                            TextSpan(
                                text: '\$99.00 ',
                                style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'textfont',
                                    color: Colors.black)),
                            TextSpan(
                                text: 'PER DAYS',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'textfont',
                                    color: Colors.black54)),
                          ])),
                        ),
                        Positioned(
                          right: 0,
                          top: 14,
                          child: Container(
                            padding: const EdgeInsets.only(
                                top: 8, bottom: 8, left: 11, right: 11),
                            alignment: Alignment.center,
                            decoration: const BoxDecoration(
                                color: Color(0xff317773),
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(12),
                                    topLeft: Radius.circular(12))),
                            child: const Text(
                              'BOOK NOW',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'textfont',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}
