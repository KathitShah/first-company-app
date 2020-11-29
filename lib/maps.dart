import 'dart:collection';
import 'location.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapPage extends StatefulWidget {
  final String locationId;
  final String locationName;

  MapPage({Key key, @required this.locationId, @required this.locationName})
      : super(key: key);

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  Set<Marker> _markers = LinkedHashSet<Marker>();
  GoogleMapController _mapController;
  BitmapDescriptor _markerIcon;
  List<dynamic> oakBankLocationData;

  @override
  void initState() {
    super.initState();
    getLocation();
  }

  void getLocation() async {
    var locationData = await LocationModel().getLocation(widget.locationId);
    setState(() {
      oakBankLocationData = locationData;
    });
  }

  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;
    setState(
      () {
        if (oakBankLocationData != null) {
          for (int i = 0; i < oakBankLocationData.length; i++) {
            _markers.add(
              Marker(
                markerId: MarkerId('${oakBankLocationData[i]["id"]}'),
                position: LatLng(
                    double.parse(oakBankLocationData[i]["mLatitude"]),
                    double.parse(oakBankLocationData[i]["mLongitude"])),
                infoWindow: InfoWindow(
                  title: oakBankLocationData[i]["mTitle"],
                  snippet: oakBankLocationData[i]["mAddress"],
                ), // icon: _markerIcon,
              ),
            );
          }
        }
        _mapController
            .animateCamera(CameraUpdate.newLatLngBounds(_bounds(_markers), 50));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return oakBankLocationData != null
        ? Scaffold(
            backgroundColor: Colors.white,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(50.0),
              child: AppBar(
                leading: IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                centerTitle: true,
                automaticallyImplyLeading: false,
                backgroundColor: Color(0xff2d5a77),
                title: Text('${widget.locationName}'),
                elevation: 0,
                iconTheme: IconThemeData(color: Colors.white),
              ),
            ),
            body: Stack(
              children: [
                GoogleMap(
                  onMapCreated: _onMapCreated,
                  initialCameraPosition: CameraPosition(
                    target: LatLng(
                        double.parse(oakBankLocationData[0]["mLatitude"]),
                        double.parse(oakBankLocationData[0]["mLongitude"])),
                  ),
                  markers: _markers,
                ),
              ],
            ),
          )
        : Scaffold(
            backgroundColor: Colors.white,
            body: Stack(
              children: [
                Center(
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.red,
                  ),
                )
              ],
            ),
          );
  }

  LatLngBounds _bounds(Set<Marker> markers) {
    if (markers == null || markers.isEmpty) return null;
    return _createBounds(markers.map((m) => m.position).toList());
  }

  LatLngBounds _createBounds(List<LatLng> positions) {
    final southwestLat = positions.map((p) => p.latitude).reduce(
        (value, element) => value < element ? value : element); // smallest
    final southwestLon = positions
        .map((p) => p.longitude)
        .reduce((value, element) => value < element ? value : element);
    final northeastLat = positions.map((p) => p.latitude).reduce(
        (value, element) => value > element ? value : element); // biggest
    final northeastLon = positions
        .map((p) => p.longitude)
        .reduce((value, element) => value > element ? value : element);
    return LatLngBounds(
        southwest: LatLng(southwestLat, southwestLon),
        northeast: LatLng(northeastLat, northeastLon));
  }
}
