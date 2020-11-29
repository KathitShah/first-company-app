import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'dart:math' as math;
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    bool isSmallScreenSize = true;
    return Scaffold(
      backgroundColor: Color(0xff356b8c),
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
          title: Text('CONTACT US'),
          backgroundColor: Color(0xff2d5a77),
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
                              Navigator.popAndPushNamed(context, '/community');
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
                              Navigator.popAndPushNamed(context, '/rmDocs');
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
                              Navigator.popAndPushNamed(context, '/service');
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
                              Navigator.popAndPushNamed(context, '/covid');
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
                              Navigator.popAndPushNamed(context, '/alert');
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
                              Navigator.popAndPushNamed(context, '/business');
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
                              Navigator.popAndPushNamed(context, '/water');
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
                              Navigator.popAndPushNamed(context, '/weather');
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
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
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
        child: Column(
          children: [
            Container(
              color: Colors.white,
              padding: EdgeInsets.all(15.0),
              width: double.maxFinite,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'RM of Springfield',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontFamily: 'Serif',
                          color: Color(0xffe78024),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    'Feel free to contact us anytime with any questions or comments you may have. We appreciate having the opportunity to communicate with you and will be sure to tend to any requests you have at our earliest opportunity.',
                    style: TextStyle(fontSize: 15.0),
                    textAlign: TextAlign.justify,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      Text(
                        'Get In Touch',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontFamily: 'Serif',
                          color: Color(0xffe78024),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Address : ',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Color(0xffe78024),
                        ),
                      ),
                      Container(
                        width: isSmallScreenSize ? 300.0 : double.maxFinite,
                        child: Text(
                          '100 Springfield Centre Drive, Oakbank, Manitoba R0E 1J0',
                          style: TextStyle(
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      Text(
                        'Phone : ',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Color(0xffe78024),
                        ),
                      ),
                      Text(
                        '(204) 444-3321',
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      Text(
                        'FAX : ',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Color(0xffe78024),
                        ),
                      ),
                      Text(
                        '(204) 444-2137',
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      Text(
                        'Email : ',
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Color(0xffe78024),
                        ),
                      ),
                      Text(
                        'info@rmofspringfield.ca',
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Row(
                    children: [
                      Text(
                        'Follow Us',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontFamily: 'Serif',
                          color: Color(0xffe78024),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () => launch(
                            "https://www.facebook.com/RM-of-Springfield-1715392792076718/"),
                        child: Container(
                          width: 125.0,
                          decoration: BoxDecoration(
                            color: Colors.blue.withOpacity(0.7),
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                          ),
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage('assets/facebook-logo.png'),
                                color: Color(0xffe78024),
                                height: 25.0,
                              ),
                              Text(
                                'Facebook',
                                style: TextStyle(
                                  fontSize: 15.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () => launch(
                            "https://twitter.com/RMofSpringfield?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor"),
                        child: Container(
                          width: 125.0,
                          decoration: BoxDecoration(
                            color: Colors.lightBlue.withOpacity(0.7),
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                          ),
                          child: Row(
                            children: [
                              Image(
                                image: AssetImage('assets/twitter-logo.png'),
                                color: Color(0xffe78024),
                                height: 25.0,
                              ),
                              Text(
                                'Twitter',
                                style: TextStyle(
                                  fontSize: 15.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () => launch("tel://12044443321"),
                            child: Container(
                              width: MediaQuery.of(context).size.width / 2.25,
                              padding: EdgeInsets.symmetric(vertical: 10.0),
                              decoration: BoxDecoration(
                                color: Color(0xffe77e22),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0)),
                              ),
                              child: Column(
                                children: [
                                  Transform(
                                    alignment: Alignment.center,
                                    transform: Matrix4.rotationY(math.pi),
                                    child: Icon(
                                      Icons.phone,
                                      color: Colors.white,
                                      size: 40.0,
                                    ),
                                  ),
                                  Text(
                                    'CALL',
                                    style: TextStyle(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () => launch(
                                "mailto:info@rmofspringfield.ca?subject=Springfield App Help"),
                            child: Container(
                              width: MediaQuery.of(context).size.width / 2.25,
                              padding: EdgeInsets.symmetric(vertical: 10.0),
                              decoration: BoxDecoration(
                                color: Color(0xff356b8d),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0)),
                              ),
                              child: Column(
                                children: [
                                  Transform(
                                    alignment: Alignment.center,
                                    transform: Matrix4.rotationY(math.pi),
                                    child: Icon(
                                      Icons.email,
                                      color: Colors.white,
                                      size: 40.0,
                                    ),
                                  ),
                                  Text(
                                    'EMAIL',
                                    style: TextStyle(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 40.25,
                      ),
                      GestureDetector(
                        onTap: () => launch("https://www.rmofspringfield.ca/"),
                        child: Container(
                          width: double.maxFinite,
                          padding: EdgeInsets.symmetric(vertical: 15.0),
                          decoration: BoxDecoration(
                            color: Color(0xff52a6c8),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: Column(
                            children: [
                              Transform(
                                alignment: Alignment.center,
                                transform: Matrix4.rotationY(math.pi),
                                child: Icon(
                                  Icons.link,
                                  color: Colors.white,
                                  size: 40.0,
                                ),
                              ),
                              Text(
                                'VISIT OUR WEBSITE',
                                style: TextStyle(
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
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
                      color: Colors.white,
                      size: 25.0,
                    ),
                    onTap: () {},
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
    );
  }
}
