import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:url_launcher/url_launcher.dart';
import 'alert-page.dart';
import 'dart:io' show Platform;

class AlertTextPage extends StatefulWidget {
  dynamic alertData;

  AlertTextPage({Key key, @required this.alertData}) : super(key: key);

  @override
  _AlertTextPageState createState() => _AlertTextPageState();
}

class _AlertTextPageState extends State<AlertTextPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          title: Text('ALERT NOTIFICATIONS'),
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(30.0),
          child: Text("${widget.alertData["MessageText"]}"),
        ),
      ),
    );
  }
}
