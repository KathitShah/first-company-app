import 'package:bhailu_mama_app/meetingMinute-item.dart';
import 'package:bhailu_mama_app/web.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'web.dart';
import 'main.dart';
import 'package:date_format/date_format.dart';

class MeetingsListPage extends StatefulWidget {
  @override
  _MeetingsListPageState createState() => _MeetingsListPageState();
}

class _MeetingsListPageState extends State<MeetingsListPage> {
  List<dynamic> meetingData;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getMeetingsListData();
  }

  void getMeetingsListData() async {
    var meetingsListData = await WebModel().getMeetingsList();
    setState(() {
      meetingData = meetingsListData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return meetingData != null
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
                title: Text('MEETING MINUTES'),
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
                  itemCount: meetingData.length,
                  itemBuilder: (context, index) {
                    var singleLine;
                    if (meetingData[index]["meeting_type"].length >= 35) {
                      var text = meetingData[index]["meeting_type"];
                      var notification = text.substring(0, 35);
                      var r = '$notification...';
                      singleLine = r.replaceAll("\n", " ");
                    } else {
                      singleLine = meetingData[index]["meeting_type"];
                    }
                    var dates = meetingData[index]["min_date"];
                    String year = dates.substring(0, 4);
                    int yearThere = int.parse(year);
                    String month = dates.substring(5, 7);
                    int monthThere = int.parse(month);
                    String date = dates.substring(8, 10);
                    int dateThere = int.parse(date);
                    var dateText = formatDate(
                        DateTime(yearThere, monthThere, dateThere),
                        [MM, ' ', d, ', ', yyyy]).toUpperCase();

                    return ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                FontAwesomeIcons.filePdf,
                                color: Colors.lightBlue,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '$dateText',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      color: Colors.grey,
                                      fontSize: 14.0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2.5,
                                  ),
                                  Text(
                                    '$singleLine',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 17.5,
                                    ),
                                  ),
                                ],
                              ),
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
                            builder: (context) => MeetingsItemPage(
                              id: meetingData[index]["aminute_id"],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
            // bottomNavigationBar: BottomAppBar(
            //   color: Color(0xff356b8c),
            //   elevation: 0,
            //   child: Stack(
            //     alignment: Alignment.topCenter,
            //     children: [
            //       Padding(
            //         padding: const EdgeInsets.symmetric(vertical: 16.0),
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceAround,
            //           children: [
            //             GestureDetector(
            //               child: Icon(
            //                 Icons.home,
            //                 color: Colors.grey,
            //                 size: 25.0,
            //               ),
            //               onTap: () {
            //                 Navigator.popAndPushNamed(context, '/');
            //               },
            //             ),
            //             GestureDetector(
            //               child: Icon(
            //                 Icons.notifications,
            //                 color: Colors.white,
            //                 size: 25.0,
            //               ),
            //               onTap: () {},
            //             ),
            //             GestureDetector(
            //               child: Icon(
            //                 Icons.send,
            //                 color: Colors.grey,
            //                 size: 25.0,
            //               ),
            //               onTap: () {
            //                 Navigator.popAndPushNamed(context, '/contact');
            //               },
            //             ),
            //             GestureDetector(
            //               child: Icon(
            //                 Icons.wb_cloudy,
            //                 color: Colors.grey,
            //                 size: 25.0,
            //               ),
            //               onTap: () {
            //                 Navigator.popAndPushNamed(context, '/weather');
            //               },
            //             ),
            //           ],
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          )
        : Scaffold(
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
                title: Text('MEETINGS'),
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
                Center(
                  child: CircularProgressIndicator(),
                )
              ],
            ),
            // bottomNavigationBar: BottomAppBar(
            //   color: Color(0xff356b8c),
            //   elevation: 0,
            //   child: Stack(
            //     alignment: Alignment.topCenter,
            //     children: [
            //       Padding(
            //         padding: const EdgeInsets.symmetric(vertical: 16.0),
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceAround,
            //           children: [
            //             GestureDetector(
            //               child: Icon(
            //                 Icons.home,
            //                 color: Colors.grey,
            //                 size: 25.0,
            //               ),
            //               onTap: () {
            //                 Navigator.popAndPushNamed(context, '/');
            //               },
            //             ),
            //             GestureDetector(
            //               child: Icon(
            //                 Icons.notifications,
            //                 color: Colors.white,
            //                 size: 25.0,
            //               ),
            //               onTap: () {},
            //             ),
            //             GestureDetector(
            //               child: Icon(
            //                 Icons.send,
            //                 color: Colors.grey,
            //                 size: 25.0,
            //               ),
            //               onTap: () {
            //                 Navigator.popAndPushNamed(context, '/contact');
            //               },
            //             ),
            //             GestureDetector(
            //               child: Icon(
            //                 Icons.wb_cloudy,
            //                 color: Colors.grey,
            //                 size: 25.0,
            //               ),
            //               onTap: () {
            //                 Navigator.popAndPushNamed(context, '/weather');
            //               },
            //             ),
            //           ],
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
          );
  }
}
