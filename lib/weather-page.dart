import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:core';
import 'main.dart';
import 'weather.dart';
import 'package:extension/string.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WeatherPage extends StatefulWidget {
  @override
  _WeatherPageState createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  dynamic oakBankData;
  dynamic oakBankForecastData;
  bool isOakBank = false;
  bool isForecastOakBank = false;
  WeatherModel weather = WeatherModel();

  void initState() {
    super.initState();
    getLocationData();
    getForecastData();
  }

  void getLocationData() async {
    var weatherData = await WeatherModel().getCityWeather();
    setState(() {
      oakBankData = weatherData;
      isOakBank = true;
    });
  }

  void getForecastData() async {
    var forecastData = await WeatherModel().getCityWeather();
    setState(() {
      oakBankForecastData = forecastData;
      isForecastOakBank = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    String weatherDescription;
    String weatherDescriptionCapitalize;
    double visibility;
    String direction;
    String sunRise;
    String sunSet;
    if (isOakBank) {
      if (oakBankData['weather'][0]['description'].toString() ==
          "broken clouds") {
        weatherDescriptionCapitalize = 'Broken Clouds';
      } else if (oakBankData['weather'][0]['description'].toString() ==
          "clear sky") {
        weatherDescriptionCapitalize = 'Clear Sky';
      } else {
        weatherDescription =
            oakBankData['weather'][0]['description'].toString();
        weatherDescriptionCapitalize =
            weatherDescription.capitalizeFirstLetter();
      }
      int visibilityData = oakBankData['visibility'].toInt();
      visibility = visibilityData / 1000.00;
      int windDirection = oakBankData['wind']['deg'];
      if (windDirection > 337.5 && windDirection < 22.5) {
        direction = 'N';
      } else if (windDirection > 22.5 && windDirection < 67.5) {
        direction = 'NE';
      } else if (windDirection > 67.5 && windDirection < 112.5) {
        direction = 'E';
      } else if (windDirection > 112.5 && windDirection < 157.5) {
        direction = 'SE';
      } else if (windDirection > 157.5 && windDirection < 202.5) {
        direction = 'S';
      } else if (windDirection > 202.5 && windDirection < 247.5) {
        direction = 'SW';
      } else if (windDirection > 247.5 && windDirection < 292.5) {
        direction = 'W';
      } else {
        direction = 'NW';
      }
      DateTime sunsetTime = DateTime.fromMillisecondsSinceEpoch(
          oakBankData['sys']['sunset'] * 1000);
      DateTime sunRiseTime = DateTime.fromMillisecondsSinceEpoch(
          oakBankData['sys']['sunrise'] * 1000);
      String amPm;
      String sunriseMinute;
      String sunsetMinute;
      int sunSetHour = sunsetTime.hour;
      int sunSetMinute = sunsetTime.minute;
      int sunRiseHour = sunRiseTime.hour;
      int sunRiseMinute = sunRiseTime.minute;
      if (sunSetHour > 12) {
        sunSetHour = sunSetHour - 12;
        amPm = 'pm';
      } else if (sunSetHour < 12) {
        amPm = 'am';
      }
      if (sunRiseMinute < 10) {
        sunriseMinute = '0$sunRiseMinute';
      } else if (sunRiseMinute > 10) {
        sunriseMinute = sunRiseMinute.toString();
      }
      if (sunSetMinute < 10) {
        sunsetMinute = '0$sunSetMinute';
      } else if (sunSetMinute > 10) {
        sunsetMinute = sunSetMinute.toString();
      }
      sunSet = '$sunSetHour:$sunsetMinute $amPm';
      sunRise = '$sunRiseHour:$sunriseMinute am';
    }
    return isOakBank & isForecastOakBank
        ? Scaffold(
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
                title: Text('LOCAL WEATHER'),
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
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 20.0),
                    color: Colors.white,
                    height: MediaQuery.of(context).size.height * 0.8,
                    width: double.maxFinite,
                    child: Column(
                      children: [
                        Icon(
                          weather.getWeatherIcon(
                              oakBankData['weather'][0]['icon']),
                          size: 75.0,
                          color: Color(0xffe77e22),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Text(
                          weatherDescriptionCapitalize,
                          style: TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        SizedBox(
                          height: 2.5,
                        ),
                        Text(
                          'Oakbank, MB',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '${oakBankData['main']['temp'].toStringAsFixed(0)}°',
                              style: TextStyle(
                                fontSize: 50.0,
                              ),
                            ),
                            Text(
                              'C',
                              style: TextStyle(
                                fontSize: 30.0,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25.0,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 50.0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 225.0,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Text('Feels Like'),
                                        SizedBox(
                                          height: 5.0,
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Icon(
                                              weather.getWeatherIcon(
                                                  oakBankData['weather'][0]
                                                      ['icon']),
                                              size: 20.0,
                                              color: Color(0xffe77e22),
                                            ),
                                            SizedBox(
                                              width: 10.0,
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '${oakBankData['main']['feels_like'].toStringAsFixed(0)}',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                                Text(
                                                  '°',
                                                  style: TextStyle(),
                                                ),
                                                Text(
                                                  'C',
                                                  style: TextStyle(
                                                    fontSize: 10.0,
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text('Sunrise'),
                                        SizedBox(
                                          height: 5.0,
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Icon(
                                              FontAwesomeIcons.solidSun,
                                              size: 20,
                                              color: Color(0xffe77e22),
                                            ),
                                            SizedBox(
                                              width: 10.0,
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  sunRise,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text('Humidity'),
                                        SizedBox(
                                          height: 5.0,
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Icon(
                                              FontAwesomeIcons.tint,
                                              size: 20.0,
                                              color: Color(0xffe77e22),
                                            ),
                                            SizedBox(
                                              width: 10.0,
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '${oakBankData['main']['humidity'].toStringAsFixed(0)}%',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                height: 225.0,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      children: [
                                        Text('Wind Direction'),
                                        SizedBox(
                                          height: 5.0,
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Icon(
                                              FontAwesomeIcons.wind,
                                              size: 20.0,
                                              color: Color(0xffe77e22),
                                            ),
                                            SizedBox(
                                              width: 10.0,
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  direction,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text('Sunset'),
                                        SizedBox(
                                          height: 5.0,
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Icon(
                                              FontAwesomeIcons.solidSun,
                                              size: 20.0,
                                              color: Color(0xffe77e22),
                                            ),
                                            SizedBox(
                                              width: 10.0,
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  sunSet,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Text('Visibility'),
                                        SizedBox(
                                          height: 5.0,
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Icon(
                                              FontAwesomeIcons.solidFlag,
                                              size: 20.0,
                                              color: Color(0xffe77e22),
                                            ),
                                            SizedBox(
                                              width: 10.0,
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '${visibility.toStringAsFixed(0)} km',
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
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
                            color: Colors.white,
                            size: 25.0,
                          ),
                          onTap: () {},
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
            extendBodyBehindAppBar: false,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: CircularProgressIndicator(
                    backgroundColor: Colors.red,
                  ),
                ),
              ],
            ),
          );
  }
}
