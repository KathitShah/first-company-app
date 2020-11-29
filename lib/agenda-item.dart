import 'package:bhailu_mama_app/web.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'web.dart';
import 'main.dart';
import 'package:drop_cap_text/drop_cap_text.dart';

class AgendasItemPage extends StatefulWidget {
  String agendaId;
  AgendasItemPage({this.agendaId});
  @override
  _AgendasItemPageState createState() => _AgendasItemPageState();
}

class _AgendasItemPageState extends State<AgendasItemPage> {
  dynamic agendaData;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getAgendasData();
  }

  void getAgendasData() async {
    var agendasListData = await WebModel().getAgenda(widget.agendaId);
    setState(() {
      agendaData = agendasListData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return agendaData != null
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
                title: Text('AGENDAS'),
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
              shrinkWrap: true,
              itemCount: agendaData["AgendaList"].length,
              itemBuilder: (context, index) {
                return Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Visibility(
                        visible: index == 0 ? true : false,
                        child: SizedBox(
                          height: 15.0,
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${agendaData["AgendaList"][index]["DisplayOrder"]}',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 15.0,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            width: agendaData["AgendaList"][index]
                                            ["DisplayOrder"]
                                        .length >=
                                    3
                                ? 10.0
                                : 22.5,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: Text(
                              '${agendaData["AgendaList"][index]["ItemTitle"]}',
                              style: TextStyle(
                                color: Colors.black45,
                                fontSize: 15.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Visibility(
                        child: ListView.builder(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: agendaData["AgendaList"][index]
                                  ["AttachmentList"]
                              .length,
                          itemBuilder: (context, i) {
                            return Container(
                              margin: EdgeInsets.only(left: 20.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Visibility(
                                    visible: i == 0 ? true : false,
                                    child: SizedBox(
                                      height: 15.0,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      launch(
                                          'https://springfield.allnetmeetings.com/_docs/${agendaData["AgendaList"][index]["AttachmentList"][i]["fileName"]}');
                                    },
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Icon(
                                          FontAwesomeIcons.solidFilePdf,
                                          size: 17.5,
                                          color: Colors.red,
                                        ),
                                        SizedBox(
                                          width: 10.0,
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.8,
                                          child: Text(
                                            '${agendaData["AgendaList"][index]["AttachmentList"][i]["Title"]}',
                                            style: TextStyle(
                                              color: Colors.black45,
                                              fontSize: 12.5,
                                              decoration:
                                                  TextDecoration.underline,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Visibility(
                                    visible: i == 0 ? true : false,
                                    child: SizedBox(
                                      height: 15.0,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                    ],
                  ),
                );
              },
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
                title: Text('AGENDAS'),
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
