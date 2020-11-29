import 'package:bhailu_mama_app/web.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:url_launcher/url_launcher.dart';
import 'web.dart';

class CommunityDetailPage extends StatefulWidget {
  String eventId;
  String eventName;

  CommunityDetailPage(
      {Key key, @required this.eventId, @required this.eventName})
      : super(key: key);

  @override
  _CommunityDetailPageState createState() => _CommunityDetailPageState();
}

class _CommunityDetailPageState extends State<CommunityDetailPage> {
  dynamic eventData;

  @override
  void initState() {
    super.initState();
    getCommunityPage();
  }

  void getCommunityPage() async {
    var event = await WebModel().getCommunityPage(widget.eventId);
    setState(() {
      eventData = event;
    });
  }

  @override
  Widget build(BuildContext context) {
    return eventData != null
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
                title: Text('${widget.eventName}'),
                elevation: 0,
                iconTheme: IconThemeData(color: Colors.white),
              ),
            ),
            body: SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.all(30.0),
                child: Text("${eventData[0]["EventsDescription"]}"),
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
