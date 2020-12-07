import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'web.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:map_launcher/map_launcher.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:geolocator/geolocator.dart';
import 'dart:io' show Platform;

class BusinessTextPage extends StatefulWidget {
  dynamic businessId;

  BusinessTextPage({this.businessId});

  @override
  _BusinessTextPageState createState() => _BusinessTextPageState();
}

class _BusinessTextPageState extends State<BusinessTextPage> {
  dynamic businessData;
  List<IconDataSolid> plusMinus =
      List<IconDataSolid>.filled(1000, FontAwesomeIcons.plus, growable: true);
  List<bool> visibility = List<bool>.filled(1000, false, growable: true);
  Position _currentPosition;
  // var shared = new List<int>.(3, 0, growable: true);
  // void sharedNumbers() {
  //   print(shared);
  // }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getCurrentLocation();
    getBusinessPageData();

    // sharedNumbers();
  }

  void _getCurrentLocation() async {
    bool isLocationServiceEnabled = await Geolocator.isLocationServiceEnabled();
    if (isLocationServiceEnabled == true) {
      var position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      setState(() {
        _currentPosition = position;
      });
    } else {
      setState(() {
        _currentPosition = Position();
      });
    }
  }

  void getBusinessPageData() async {
    var businessPageData = await WebModel().getBusinessPage(widget.businessId);
    setState(() {
      businessData = businessPageData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return businessData != null && _currentPosition != null
        ? Scaffold(
            backgroundColor: Color(0xfff2f9ff),
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
                title: Text('BUSINESS DIRECTORY'),
                elevation: 0,
                iconTheme: IconThemeData(color: Colors.white),
              ),
            ),
            endDrawer: Drawer(
              child: Container(
                color: Color(0xff2d5a77),
                child: SafeArea(
                  child: Stack(
                    alignment: Alignment.center,
                    overflow: Overflow.visible,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 50.0, left: 50.0),
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.popAndPushNamed(context, '/');
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 15.0),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.home,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 20.0,
                                        ),
                                        Text(
                                          'Home',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.popAndPushNamed(context, '/news');
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 15.0),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.account_balance,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 20.0,
                                        ),
                                        Text(
                                          'News & Announcements',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.popAndPushNamed(
                                        context, '/community');
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 15.0),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.calendar_today,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 20.0,
                                        ),
                                        Text(
                                          'Community Events',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.popAndPushNamed(
                                        context, '/meetingAgenda');
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 15.0),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.picture_as_pdf,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 20.0,
                                        ),
                                        Text(
                                          'Meeting Agendas & Minutes',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.popAndPushNamed(
                                        context, '/rmDocs');
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 15.0),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.folder,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 20.0,
                                        ),
                                        Text(
                                          'RM Documents & Bylaws',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.popAndPushNamed(
                                        context, '/service');
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 15.0),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.settings,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 20.0,
                                        ),
                                        Text(
                                          'Service Requests',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.popAndPushNamed(context, '/maps');
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 15.0),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.location_on,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 20.0,
                                        ),
                                        Text(
                                          'Local Maps',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.popAndPushNamed(
                                        context, '/covid');
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 15.0),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.local_hospital,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 20.0,
                                        ),
                                        Text(
                                          'COVID-19 Updates',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.popAndPushNamed(
                                        context, '/springfieldConnect');
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 15.0),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.security,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 20.0,
                                        ),
                                        Text(
                                          'Springfield Connect',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.popAndPushNamed(
                                        context, '/alert');
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 15.0),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.notifications,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 20.0,
                                        ),
                                        Text(
                                          'Alert Notifications',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.popAndPushNamed(
                                        context, '/business');
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 15.0),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.business_center,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 20.0,
                                        ),
                                        Text(
                                          'Business Directory',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.popAndPushNamed(
                                        context, '/water');
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 15.0),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.bubble_chart,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 20.0,
                                        ),
                                        Text(
                                          'Water Meter Reading',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    Navigator.popAndPushNamed(
                                        context, '/weather');
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 15.0),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.wb_cloudy,
                                          color: Colors.white,
                                        ),
                                        SizedBox(
                                          width: 20.0,
                                        ),
                                        Text(
                                          'Local Weather',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 15,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 25.0),
                            child: Center(
                              child: Image(
                                image: AssetImage('assets/all-net-logo.png'),
                                height: 25.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        right: 0.0,
                        bottom: 0.0,
                        child: Image(
                          image: AssetImage('assets/moose.png'),
                          height: 200.0,
                          color: Colors.white.withOpacity(0.1),
                        ),
                      ),
                      Positioned(
                        left: -25.0,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 50.0,
                            width: 50.0,
                            child: Icon(
                              Icons.close,
                              color: Colors.white,
                              size: 20.0,
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xff2d5a77),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30.0)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            body: ListView.builder(
              itemCount: businessData.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Stack(
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Row(children: [
                                Icon(
                                  FontAwesomeIcons.solidBell,
                                  color: Colors.redAccent,
                                ),
                                SizedBox(
                                  width: 20.0,
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${businessData[index]["bName"]}',
                                    ),
                                  ],
                                ),
                              ]),
                            ],
                          ),
                          Visibility(
                            visible: visibility[index],
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  children: [
                                    SizedBox(
                                      height: 20.0,
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(
                                            width: 2.0, color: Colors.grey),
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(3.0)),
                                      ),
                                      child: Column(
                                        children: [
                                          Visibility(
                                            visible: businessData[index]
                                                        ["bPhone"] !=
                                                    ""
                                                ? true
                                                : false,
                                            child: Column(
                                              children: [
                                                GestureDetector(
                                                  onTap: () {
                                                    launch(
                                                        "tel://1${businessData[index]["bPhone"]}");
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            12.0),
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          FontAwesomeIcons
                                                              .phone,
                                                          size: 12.0,
                                                          color:
                                                              Color(0xffd77d2e),
                                                        ),
                                                        SizedBox(
                                                          width: 12.0,
                                                        ),
                                                        Text(
                                                          'Phone: ${businessData[index]["bPhone"]}',
                                                          style: TextStyle(
                                                            fontSize: 12.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Color(
                                                                0xffd77d2e),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Divider(
                                                  color: Colors.grey,
                                                  height: 10.0,
                                                  thickness: 2.0,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Visibility(
                                            visible: businessData[index]
                                                        ["bPhone2"] !=
                                                    ""
                                                ? true
                                                : false,
                                            child: Column(
                                              children: [
                                                GestureDetector(
                                                  onTap: () {
                                                    launch(
                                                        "tel://1${businessData[index]["bPhone2"]}");
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            12.0),
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          FontAwesomeIcons
                                                              .mobile,
                                                          size: 12.0,
                                                          color:
                                                              Color(0xffd77d2e),
                                                        ),
                                                        SizedBox(
                                                          width: 12.0,
                                                        ),
                                                        Text(
                                                          'Cell: ${businessData[index]["bPhone2"]}',
                                                          style: TextStyle(
                                                            fontSize: 12.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Color(
                                                                0xffd77d2e),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Divider(
                                                  color: Colors.grey,
                                                  height: 10.0,
                                                  thickness: 2.0,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Visibility(
                                            visible: businessData[index]
                                                        ["bFax"] !=
                                                    ""
                                                ? true
                                                : false,
                                            child: Column(
                                              children: [
                                                GestureDetector(
                                                  onTap: () {
                                                    launch(
                                                        "tel://1${businessData[index]["bFax"]}");
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            12.0),
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          FontAwesomeIcons.fax,
                                                          size: 12.0,
                                                          color:
                                                              Color(0xffd77d2e),
                                                        ),
                                                        SizedBox(
                                                          width: 12.0,
                                                        ),
                                                        Text(
                                                          'Fax: ${businessData[index]["bFax"]}',
                                                          style: TextStyle(
                                                            fontSize: 12.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Color(
                                                                0xffd77d2e),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Divider(
                                                  color: Colors.grey,
                                                  height: 10.0,
                                                  thickness: 2.0,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Visibility(
                                            visible: businessData[index]
                                                        ["bEmail"] !=
                                                    ""
                                                ? true
                                                : false,
                                            child: Column(
                                              children: [
                                                GestureDetector(
                                                  onTap: () {
                                                    launch(
                                                        "mailto:${businessData[index]["bEmail"]}?subject=Springfield App Help");
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            12.0),
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          FontAwesomeIcons
                                                              .envelope,
                                                          size: 12.0,
                                                          color:
                                                              Color(0xffd77d2e),
                                                        ),
                                                        SizedBox(
                                                          width: 12.0,
                                                        ),
                                                        Text(
                                                          'Email: ${businessData[index]["bEmail"]}',
                                                          style: TextStyle(
                                                            fontSize: 12.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Color(
                                                                0xffd77d2e),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Divider(
                                                  color: Colors.grey,
                                                  height: 10.0,
                                                  thickness: 2.0,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Visibility(
                                            visible: businessData[index]
                                                        ["bWebsite"] !=
                                                    ""
                                                ? true
                                                : false,
                                            child: Column(
                                              children: [
                                                GestureDetector(
                                                  onTap: () {
                                                    launch(businessData[index]
                                                        ["bWebsite"]);
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            12.0),
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          FontAwesomeIcons.link,
                                                          size: 12.0,
                                                          color:
                                                              Color(0xffd77d2e),
                                                        ),
                                                        SizedBox(
                                                          width: 12.0,
                                                        ),
                                                        Text(
                                                          'Website: ${businessData[index]["bWebsite"]}',
                                                          style: TextStyle(
                                                            fontSize: 12.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Color(
                                                                0xffd77d2e),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Visibility(
                                            visible: businessData[index]
                                                            ["bLongitude"] !=
                                                        "" ||
                                                    businessData[index]
                                                            ["bLatitude"] !=
                                                        ""
                                                ? true
                                                : false,
                                            child: Divider(
                                              color: Colors.grey,
                                              height: 10.0,
                                              thickness: 2.0,
                                            ),
                                          ),
                                          Visibility(
                                            visible: businessData[index]
                                                            ["bLongitude"] !=
                                                        "" ||
                                                    businessData[index]
                                                            ["bLatitude"] !=
                                                        ""
                                                ? true
                                                : false,
                                            child: Column(
                                              children: [
                                                GestureDetector(
                                                  onTap: () {
                                                    MapLauncher.showDirections(
                                                      mapType: MapType.google,
                                                      destination: Coords(
                                                        double.parse(
                                                            businessData[index]
                                                                ["bLatitude"]),
                                                        double.parse(
                                                            businessData[index]
                                                                ["bLongitude"]),
                                                      ),
                                                      destinationTitle:
                                                          businessData[index]
                                                              ["bName"],
                                                      origin: Coords(
                                                        _currentPosition
                                                                    .latitude !=
                                                                null
                                                            ? _currentPosition
                                                                .latitude
                                                            : 49.895138,
                                                        _currentPosition
                                                                    .longitude !=
                                                                null
                                                            ? _currentPosition
                                                                .longitude
                                                            : -97.138374,
                                                      ),
                                                      originTitle: 'Winnipeg',
                                                      directionsMode:
                                                          DirectionsMode
                                                              .driving,
                                                    );
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            12.0),
                                                    child: Row(
                                                      children: [
                                                        Icon(
                                                          FontAwesomeIcons
                                                              .mapMarkerAlt,
                                                          size: 12.0,
                                                          color:
                                                              Color(0xffd77d2e),
                                                        ),
                                                        SizedBox(
                                                          width: 12.0,
                                                        ),
                                                        Text(
                                                          'Get Directions',
                                                          style: TextStyle(
                                                            fontSize: 12.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Color(
                                                                0xffd77d2e),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                businessData[index]["bAddress"] != ""
                                    ? Visibility(
                                        visible: visibility[index],
                                        child: Container(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'ADDRESS:',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.grey,
                                                  fontSize: 14.0,
                                                ),
                                              ),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                              Text(
                                                  '${businessData[index]["bAddress"]}'),
                                            ],
                                          ),
                                        ))
                                    : Visibility(
                                        visible: visibility[index],
                                        child: Container(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [],
                                          ),
                                        )),
                                SizedBox(
                                  height: 15.0,
                                ),
                                businessData[index]["bOwner"] != ""
                                    ? Visibility(
                                        visible: visibility[index],
                                        child: Container(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('CONTACT:',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.grey,
                                                    fontSize: 14.0,
                                                  )),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                              Text(
                                                  '${businessData[index]["bOwner"]}'),
                                            ],
                                          ),
                                        ))
                                    : Visibility(
                                        visible: visibility[index],
                                        child: Container(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [],
                                          ),
                                        )),
                                SizedBox(
                                  height: 15.0,
                                ),
                                businessData[index]["bDescription"] != ""
                                    ? Visibility(
                                        visible: visibility[index],
                                        child: Container(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('DESCRIPTION:',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.grey,
                                                    fontSize: 14.0,
                                                  )),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                              Text(
                                                  '${businessData[index]["bDescription"]}'),
                                            ],
                                          ),
                                        ))
                                    : Visibility(
                                        visible: visibility[index],
                                        child: Container(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [],
                                          ),
                                        )),
                                SizedBox(
                                  height: 15.0,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        right: 0,
                        child: Icon(
                          plusMinus[index],
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                    if (plusMinus[index] == FontAwesomeIcons.plus) {
                      setState(() {
                        plusMinus = List<IconDataSolid>.filled(
                            1000, FontAwesomeIcons.plus,
                            growable: true);
                        visibility =
                            List<bool>.filled(1000, false, growable: true);
                        plusMinus[index] = FontAwesomeIcons.minus;
                        visibility[index] = true;
                      });
                    } else {
                      setState(() {
                        plusMinus[index] = FontAwesomeIcons.plus;
                        visibility[index] = false;
                      });
                    }
                  },
                );
              },
            ),
            bottomNavigationBar: BottomAppBar(
              color: Color(0xff356b8c),
              elevation: 0,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                          child: Icon(
                            Icons.home,
                            color: Colors.grey,
                            size: 25.0,
                          ),
                          onTap: () {
                            Navigator.popAndPushNamed(context, '/');
                          },
                        ),
                        GestureDetector(
                          child: Icon(
                            Icons.notifications,
                            color: Colors.grey,
                            size: 25.0,
                          ),
                          onTap: () {
                            Navigator.popAndPushNamed(context, '/alert');
                          },
                        ),
                        GestureDetector(
                          child: Icon(
                            Icons.send,
                            color: Colors.grey,
                            size: 25.0,
                          ),
                          onTap: () {
                            Navigator.popAndPushNamed(context, '/contact');
                          },
                        ),
                        GestureDetector(
                          child: Icon(
                            Icons.wb_cloudy,
                            color: Colors.grey,
                            size: 25.0,
                          ),
                          onTap: () {
                            Navigator.popAndPushNamed(context, '/weather');
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
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
}
