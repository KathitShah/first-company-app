import 'package:flutter/cupertino.dart';

import 'networking.dart';

String carouselURL =
    "https://macdonald.municipalwebsites.ca/Handler.ashx?typeof=slideshow";

String rmDocsURL = "https://www.rmofspringfield.ca/service-request-form";
String waterURL = "https://www.rmofspringfield.ca/water-reading-form";
String serviceRequestURL =
    "https://www.rmofspringfield.ca/service-request-form";
String connectURL = "https://springfield.allnetconnect.ca/pubs/register";
// Change to html
String covidURL =
    "https://springfield.municipalwebsites.ca/Handler.ashx?typeof=pagedetails&dataid=6190c05a-08e0-4b7f-9642-b3eb41bf154b";
String newsAnnouncementsURL =
    "https://springfield.municipalwebsites.ca/Handler.ashx?typeof=noticelist";

String communityURL =
    "https://springfield.municipalwebsites.ca/Handler.ashx?typeof=eventlist&lastrec=0";
String communityDataURL =
    "https://springfield.municipalwebsites.ca/Handler.ashx?typeof=eventdetail&dataid=";
String alertURL =
    "https://flinflon.allnetconnect.ca/Handler.ashx?typeof=pushlist&lastrec=0";
String businessURL =
    "https://springfield.municipalwebsites.ca/Handler.ashx?typeof=businessc";
String businessDataURL =
    "https://springfield.municipalwebsites.ca/Handler.ashx?typeof=businesslist&dataid=";
String agendasListURL =
    "https://springfield.allnetmeetings.com/pubs/handler1.ashx?typeoft=agenda&lastrec=0";
// https://springfield.allnetmeetings.com/pubs/handler1.ashx?typeoft=agenda&lastrec=180
String agendasAgendaURL =
    "https://springfield.allnetmeetings.com/pubs/handler1.ashx?typeoft=agendaList&aId=";
String meetingsListURL =
    "https://springfield.allnetmeetings.com/pubs/handler1.ashx?typeoft=minute&lastrec=0";
String meetingMinuteURL =
    "https://springfield.allnetmeetings.com/pubs/publicMinutes.aspx?minutesID=";

class WebModel {
  Future<dynamic> getCovidPage() async {
    NetworkHelper networkHelper = NetworkHelper('$covidURL');
    var covidData = await networkHelper.getData();
    return covidData;
  }

  Future<dynamic> getNewsAnnouncementsPage() async {
    NetworkHelper networkHelper = NetworkHelper('$newsAnnouncementsURL');
    var noticeData = await networkHelper.getData();
    return noticeData;
  }

  Future<dynamic> getCommunities() async {
    NetworkHelper networkHelper = NetworkHelper('$communityURL');
    var communityData = await networkHelper.getData();
    return communityData;
  }

  Future<dynamic> getCommunityPage(String url) async {
    NetworkHelper networkHelper = NetworkHelper('$communityDataURL$url');
    var detailData = await networkHelper.getData();
    return detailData;
  }

  Future<dynamic> getAlertPage() async {
    NetworkHelper networkHelper = NetworkHelper('$alertURL');
    var alertData = await networkHelper.getData();
    return alertData;
  }

  Future<dynamic> getCarouselImages() async {
    NetworkHelper networkHelper = NetworkHelper('$carouselURL');
    var carouselData = await networkHelper.getData();
    return carouselData;
  }

  Future<dynamic> getBusiness() async {
    NetworkHelper networkHelper = NetworkHelper('$businessURL');
    var alertData = await networkHelper.getData();
    return alertData;
  }

  Future<dynamic> getBusinessPage(String url) async {
    NetworkHelper networkHelper = NetworkHelper('$businessDataURL$url');
    var alertData = await networkHelper.getData();
    return alertData;
  }

  Future<dynamic> getMeetingsList() async {
    NetworkHelper networkHelper = NetworkHelper('$meetingsListURL');
    var alertData = await networkHelper.getData();
    return alertData;
  }

  Future<dynamic> getMeetingsMinute(String url) async {
    NetworkHelper networkHelper = NetworkHelper('$meetingMinuteURL$url');
    var alertData = await networkHelper.getData();
    return alertData;
  }

  Future<dynamic> getAgendasList() async {
    NetworkHelper networkHelper = NetworkHelper('$agendasListURL');
    var alertData = await networkHelper.getData();
    return alertData;
  }

  Future<dynamic> getAgenda(String url) async {
    NetworkHelper networkHelper = NetworkHelper('$agendasAgendaURL$url');
    var alertData = await networkHelper.getData();
    return alertData;
  }
}
