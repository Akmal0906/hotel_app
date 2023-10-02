import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class ShowMap extends StatefulWidget {
  const ShowMap({super.key});

  @override
  State<ShowMap> createState() => _ShowMapState();
}

class _ShowMapState extends State<ShowMap> {
  final Completer<GoogleMapController> _controller = Completer();
  static const LatLng sourceLocation = LatLng(37.33500926, -122.03272188);
  static const LatLng destination = LatLng(37.33429383, -122.0600055);
  List<LatLng> polylineCoordinates = [];
  LocationData? currentLocation;
  BitmapDescriptor sourceIcon = BitmapDescriptor.defaultMarker;
  BitmapDescriptor destinationIcon = BitmapDescriptor.defaultMarker;
  BitmapDescriptor currentLocationIcon = BitmapDescriptor.defaultMarker;


  void getcurrentLocation() async {
    Location location = Location();

    location.getLocation().then((value) => currentLocation = value);
    GoogleMapController googleMapController = await _controller.future;

    location.onLocationChanged.listen((event) {
      currentLocation = event;
      googleMapController.animateCamera(CameraUpdate.newCameraPosition(
          CameraPosition(
              target: LatLng(event.latitude!, event.longitude!), zoom: 13.5)));
      setState(() {});
    });
  }

  void getPolyPoints() async {
    PolylinePoints polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      'AIzaSyCTAe-bUEbm5m1fmyzCPVU_g-2VD2XnnTk',
      PointLatLng(sourceLocation.latitude, sourceLocation.longitude),
      PointLatLng(destination.latitude, destination.longitude),
    );
    if (result.points.isNotEmpty) {
      result.points.forEach((PointLatLng point) =>
          polylineCoordinates.add(LatLng(point.latitude, point.longitude)));
      setState(() {});
    }
  }

  void setCustomMarkerIcon() {
    BitmapDescriptor.fromAssetImage(
        ImageConfiguration.empty, 'assets/images/currentLocation.svg');
  }

  @override
  void initState() {
    getcurrentLocation();
    getPolyPoints();
    setCustomMarkerIcon();
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentLocation == null
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : GoogleMap(
              myLocationButtonEnabled: true,
              zoomControlsEnabled: true,
              mapType: MapType.satellite,
              initialCameraPosition: CameraPosition(
                  target: LatLng(
                      currentLocation!.latitude!, currentLocation!.longitude!),
                  zoom: 14.5),
              polylines: {
                Polyline(
                    polylineId: const PolylineId('route'),
                    width: 6,
                    points: polylineCoordinates),
              },
              onMapCreated: (controller) {
                _controller.complete(controller);
                // addMarker('test', cureentLocation);
              },
              markers: {
                Marker(
                    markerId: const MarkerId('currentLocation'),
                    position: LatLng(currentLocation!.latitude!,
                        currentLocation!.longitude!)),
                const Marker(
                    markerId: MarkerId('source'), position: sourceLocation),
                const Marker(
                    markerId: MarkerId('destination'), position: destination),
              },
            ),
    );
  }
}
