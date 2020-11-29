import 'package:bhailu_mama_app/web.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:url_launcher/url_launcher.dart';

class NoticePage extends StatefulWidget {
  dynamic notice;

  NoticePage({Key key, @required this.notice}) : super(key: key);

  @override
  _NoticePageState createState() => _NoticePageState();
}

class _NoticePageState extends State<NoticePage> {
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
          title: Text('${widget.notice["NoticeTitle"]}'),
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.height * 0.65),
                child: Html(
                  data: """${widget.notice["NoticeContent"]}""",
                  shrinkWrap: true,
                  //Optional parameters:
                  onLinkTap: (url) {
                    launch(url);
                  },
                  onImageTap: (src) {
                    // Display the image in large form.
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
