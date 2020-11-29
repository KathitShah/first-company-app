import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:math' as math;
import 'main.dart';
import 'web.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  dynamic carouselData;
  int num;

  @override
  void initState() {
    super.initState();
    getCarouselData();
  }

  void getCarouselData() async {
    var locationData = await WebModel().getCarouselImages();
    setState(() {
      carouselData = locationData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return carouselData != null
        ? Scaffold(
            backgroundColor: Color(0xff356b8c),
            extendBodyBehindAppBar: true,
            appBar: PreferredSize(
              preferredSize: Size.fromHeight(65.0),
              child: AppBar(
                automaticallyImplyLeading: false,
                title: Image(
                  image: AssetImage('assets/logo-text.png'),
                  width: 200.0,
                ),
                backgroundColor: Colors.white.withOpacity(0.4),
                elevation: 0,
                iconTheme: IconThemeData(color: Color(0xffe67e22), size: 70.0),
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
                                  onTap: () {},
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
                                    launch(
                                        'https://www.rmofspringfield.ca/p/by-laws-documents');
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
            body: SingleChildScrollView(
              child: Padding(
                  padding: EdgeInsets.only(top: 25.0),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          CarouselSlider(
                            options: CarouselOptions(
                                height: 306.5,
                                viewportFraction: 1.0,
                                pauseAutoPlayOnManualNavigate: false,
                                pauseAutoPlayInFiniteScroll: false,
                                autoPlay: true,
                                autoPlayInterval: Duration(
                                  seconds: 7,
                                )),
                            items: List<int>.generate(
                                    carouselData.length, (i) => (i - 1) + 1)
                                .map((i) {
                              return Column(
                                children: [
                                  Builder(
                                    builder: (BuildContext context) {
                                      return Stack(
                                        children: [
                                          Container(
                                              child: Image(
                                            image: NetworkImage(
                                              '${carouselData[i]["PhotoFileName"]}',
                                            ),
                                            width: double.infinity,
                                            fit: BoxFit.fill,
                                          )),
                                          Container(
                                            child: Stack(
                                              overflow: Overflow.visible,
                                              children: [
                                                Container(
                                                  width: double.infinity,
                                                  color: Color(0xff00395a),
                                                  height: 75.0,
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        '${carouselData[i]["PhotoTitle"]}',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontStyle:
                                                              FontStyle.italic,
                                                        ),
                                                      ),
                                                      Text(
                                                        '${carouselData[i]["PhotoTitle2"]}',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontSize: 25.0,
                                                            fontFamily:
                                                                'Fantasy'),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                Positioned(
                                                  right: 0.0,
                                                  bottom: 0.0,
                                                  child: Image(
                                                    image: AssetImage(
                                                        'assets/moose.png'),
                                                    height: 85.0,
                                                    color: Colors.white
                                                        .withOpacity(0.1),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            margin: EdgeInsets.only(top: 230),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ],
                              );
                            }).toList(),
                          )
                        ],
                      ),
                      Container(
                        color: Color(0xfff2f9ff),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.popAndPushNamed(context, '/alert');
                                },
                                child: Container(
                                  width: 80.0,
                                  height: 75.0,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.notifications,
                                          color: Color(0xffe67e22),
                                        ),
                                        SizedBox(
                                          height: 2.0,
                                        ),
                                        Text(
                                          'Alert Notifications',
                                          style: TextStyle(fontSize: 11),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                  color: Colors.white,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.popAndPushNamed(
                                      context, '/business');
                                },
                                child: Container(
                                  width: 80.0,
                                  height: 75.0,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.business_center,
                                          color: Color(0xff06994d),
                                        ),
                                        SizedBox(
                                          height: 2.0,
                                        ),
                                        Text(
                                          'Business Directory',
                                          style: TextStyle(fontSize: 11),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                  color: Colors.white,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.popAndPushNamed(context, '/maps');
                                },
                                child: Container(
                                  width: 85.0,
                                  height: 75.0,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.location_on,
                                          color: Color(0xff356b8c),
                                        ),
                                        SizedBox(
                                          height: 2.0,
                                        ),
                                        Text(
                                          'Local        Maps',
                                          style: TextStyle(
                                            fontSize: 11,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                  color: Colors.white,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.popAndPushNamed(context, '/water');
                                },
                                child: Container(
                                  width: 85.0,
                                  height: 75.0,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.bubble_chart,
                                          color: Color(0xffd19525),
                                        ),
                                        SizedBox(
                                          height: 2.0,
                                        ),
                                        Text(
                                          'Water Meter Reading',
                                          style: TextStyle(
                                            fontSize: 11,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.white,
                        padding: EdgeInsets.symmetric(
                            vertical: 24.0, horizontal: 12.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.popAndPushNamed(
                                          context, '/news');
                                    },
                                    child: Container(
                                      height: 75.0,
                                      width: 190.0,
                                      child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.account_balance,
                                              color: Colors.white,
                                              size: 35.0,
                                            ),
                                            SizedBox(
                                              width: 12.0,
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'News &',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                                Text(
                                                  'Announcements',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      color: Color(0xffe67e22),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.popAndPushNamed(
                                          context, '/community');
                                    },
                                    child: Container(
                                      height: 75.0,
                                      width: 190.0,
                                      child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.calendar_today,
                                              color: Colors.white,
                                              size: 35.0,
                                            ),
                                            SizedBox(
                                              width: 12.0,
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Community',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                                Text(
                                                  'Events',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      color: Color(0xff356b8c),
                                    ),
                                  ),
                                ],
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.popAndPushNamed(
                                          context, '/meetingAgenda');
                                    },
                                    child: Container(
                                      width: 190.0,
                                      height: 75.0,
                                      child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.picture_as_pdf,
                                              color: Colors.white,
                                              size: 35.0,
                                            ),
                                            SizedBox(
                                              width: 12.0,
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Meeting Agendas',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                                Text(
                                                  '& Minutes',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      color: Color(0xff52a6c7),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      launch(
                                          'https://www.rmofspringfield.ca/p/by-laws-documents');
                                    },
                                    child: Container(
                                      height: 75.0,
                                      width: 190.0,
                                      child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.folder_open,
                                              color: Colors.white,
                                              size: 35.0,
                                            ),
                                            SizedBox(
                                              width: 12.0,
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'RM Documents',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                                Text(
                                                  '& Bylaws',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      color: Color(0xffd19525),
                                    ),
                                  ),
                                ],
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 8.0),
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.popAndPushNamed(
                                          context, '/service');
                                    },
                                    child: Container(
                                      height: 75.0,
                                      width: 190.0,
                                      child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.settings,
                                              color: Colors.white,
                                              size: 35.0,
                                            ),
                                            SizedBox(
                                              width: 12.0,
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Service',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                                Text(
                                                  'Requests',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      color: Color(0xff00395a),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.popAndPushNamed(
                                          context, '/covid');
                                    },
                                    child: Container(
                                      height: 75.0,
                                      width: 190.0,
                                      child: Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Icon(
                                              Icons.local_hospital,
                                              color: Colors.white,
                                              size: 35.0,
                                            ),
                                            SizedBox(
                                              width: 12.0,
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'COVID-19',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                                Text(
                                                  'Updates',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      color: Color(0xff06994d),
                                    ),
                                  ),
                                ],
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                              ),
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.popAndPushNamed(
                                          context, '/springfieldConnect');
                                    },
                                    child: Container(
                                      child: Stack(
                                        children: [
                                          Positioned(
                                            left: 0,
                                            bottom: 0,
                                            child: Transform(
                                              alignment: Alignment.center,
                                              transform:
                                                  Matrix4.rotationY(math.pi),
                                              child: Image(
                                                image: AssetImage(
                                                    'assets/moose.png'),
                                                height: 80.0,
                                                color: Colors.white
                                                    .withOpacity(0.1),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 16.0),
                                            child: Container(
                                              margin:
                                                  EdgeInsets.only(right: 16.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Icon(
                                                    Icons.security,
                                                    color: Colors.white,
                                                    size: 40.0,
                                                  ),
                                                  SizedBox(
                                                    width: 12.0,
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Springfield Connect',
                                                        style: TextStyle(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w700),
                                                      ),
                                                      Text(
                                                        'Register For Connect Today',
                                                        style: TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 17.5,
                                                          fontFamily: 'Fantasy',
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      color: Color(0xff356b8c),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  )),
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
                            color: Colors.white,
                            size: 25.0,
                          ),
                          onTap: () {},
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
