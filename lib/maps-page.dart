import 'dart:collection';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'location.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'maps.dart';

class MapsPage extends StatefulWidget {
  @override
  _MapsPageState createState() => _MapsPageState();
}

class _MapsPageState extends State<MapsPage> {
  List<dynamic> oakBankLocations;
  LocationModel location = LocationModel();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocationsData();
  }

  void getLocationsData() async {
    var locationData = await LocationModel().getLocationData();
    setState(() {
      oakBankLocations = locationData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return oakBankLocations != null
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
                    Navigator.popAndPushNamed(context, '/');
                  },
                ),
                centerTitle: true,
                automaticallyImplyLeading: false,
                backgroundColor: Color(0xff2d5a77),
                title: Text('MAPS'),
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
            body: Stack(
              children: [
                ListView.builder(
                  itemCount: oakBankLocations.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                FontAwesomeIcons.mapMarkerAlt,
                                color: Colors.lightBlue,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                  '${oakBankLocations[index]["mCategoriesTitle"]}'),
                            ],
                          ),
                          Icon(
                            FontAwesomeIcons.chevronCircleRight,
                            color: Colors.red,
                          ),
                        ],
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MapPage(
                              locationId: oakBankLocations[index]
                                  ["mCategoriesId"],
                              locationName: oakBankLocations[index]
                                  ["mCategoriesTitle"],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
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
