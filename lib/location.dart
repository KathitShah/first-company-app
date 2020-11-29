import 'package:bhailu_mama_app/networking.dart';

String locationDataURL =
    'https://springfield.municipalwebsites.ca/Handler.ashx?typeof=mapcat';
String locationURL =
    'https://springfield.municipalwebsites.ca/Handler.ashx?typeof=map&dataid=';

class LocationModel {
  Future<dynamic> getLocationData() async {
    NetworkHelper networkHelper = NetworkHelper('$locationDataURL');

    var locationData = await networkHelper.getData();
    return locationData;
  }

  Future<dynamic> getLocation(String dataId) async {
    NetworkHelper networkHelper = NetworkHelper('$locationURL$dataId');

    var location = await networkHelper.getData();
    return location;
  }
}
