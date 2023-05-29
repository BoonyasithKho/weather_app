import 'dart:math';

import 'package:flutter/material.dart';
import 'package:weather_app/landing/newlist.dart';
import 'package:weather_app/utils/my_constant.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  List<bool> checkDay = [true, false, false];
  List<int> itemDay = [10, 24];
  int itemCountListview = 0;
  List<Image> weatherIcon = [
    Image.asset('/assets/images/cloudy.png'),
    Image.asset('/assets/images/sun-cloud.png'),
    Image.asset('/assets/images/sun.png'),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.center,
          end: Alignment.bottomRight,
          colors: [
            Color(0xffFFEBD0),
            Color(0xffFBC195),
          ],
        )),
        child: Padding(
          padding: const EdgeInsets.only(top: 48.0, left: 16.0, right: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 48,
                  ),
                  Icon(
                    Icons.menu_outlined,
                    color: Colors.black,
                    size: 48,
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32.0, left: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Bangkok,\nThailand',
                      style: TextStyle(
                        color: Color(0xff313341),
                        fontSize: 40,
                        fontFamily: 'Inter',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8.0),
                      child: Text(
                        'Fri, Mar 10',
                        style: TextStyle(
                          color: Color(0xff9A938C),
                          fontSize: 18,
                          fontFamily: 'Inter',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 32.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 150,
                      height: 150,
                      child: Image.asset('assets/images/rain.png'),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: const [
                            Text(
                              '19',
                              style: TextStyle(
                                fontSize: 90,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Inter',
                              ),
                            ),
                            Text(
                              'Rainy',
                              style: TextStyle(
                                fontSize: 30,
                                fontFamily: 'Inter',
                              ),
                            ),
                          ],
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 16.0),
                          child: Text(
                            '\u2103',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Inter',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Center(
                child: Column(
                  children: [
                    // rainfall
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Container(
                        width: size.width * 0.85,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.white.withOpacity(0.36), width: 0.5),
                          color: Colors.white.withOpacity(0.36),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 46,
                                    height: 46,
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.9),
                                      borderRadius: BorderRadius.circular(16.0),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 5.0,
                                          spreadRadius: 1.0,
                                        ),
                                      ],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Image.asset('assets/images/rainfall.png'),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 16.0),
                                    child: Text(
                                      'Rainfall',
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        fontFamily: 'Inter',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 40.0),
                                child: Text(
                                  '3cm',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontFamily: 'Inter',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // wind
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Container(
                        width: size.width * 0.85,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.white.withOpacity(0.36), width: 0.5),
                          color: Colors.white.withOpacity(0.36),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 46,
                                    height: 46,
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.9),
                                      borderRadius: BorderRadius.circular(16.0),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 5.0,
                                          spreadRadius: 1.0,
                                        ),
                                      ],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Image.asset('assets/images/wind.png'),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 16.0),
                                    child: Text(
                                      'Wind',
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        fontFamily: 'Inter',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 40.0),
                                child: Text(
                                  '19km/h',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontFamily: 'Inter',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    // humidity
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Container(
                        width: size.width * 0.85,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.white.withOpacity(0.36), width: 0.5),
                          color: Colors.white.withOpacity(0.36),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 46,
                                    height: 46,
                                    decoration: BoxDecoration(
                                      color: Colors.white.withOpacity(0.9),
                                      borderRadius: BorderRadius.circular(16.0),
                                      boxShadow: const [
                                        BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 5.0,
                                          spreadRadius: 1.0,
                                        ),
                                      ],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Image.asset('assets/images/humidity.png'),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(left: 16.0),
                                    child: Text(
                                      'Humidity',
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        fontFamily: 'Inter',
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.only(right: 40.0),
                                child: Text(
                                  '64%',
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    fontFamily: 'Inter',
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              checkDay = [true, false, false];
                              itemCountListview = 0;
                            });
                          },
                          child: Text(
                            'Today',
                            style: TextStyle(
                              fontWeight: checkDay[0] == true ? FontWeight.bold : FontWeight.normal,
                              fontFamily: 'Inter',
                              color: checkDay[0] == true ? Colors.black : Colors.grey,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            print('tomorrow');
                            setState(() {
                              checkDay = [false, true, false];
                              itemCountListview = 1;
                            });
                          },
                          child: Text(
                            'Tomorrow',
                            style: TextStyle(
                              fontWeight: checkDay[1] == true ? FontWeight.bold : FontWeight.normal,
                              fontFamily: 'Inter',
                              color: checkDay[1] == true ? Colors.black : Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        print('next 7 days');
                        setState(() {
                          checkDay = [false, false, true];
                        });
                        Navigator.pushNamed(context, MyConstant.routeNewList);
                      },
                      child: Row(
                        children: [
                          Text(
                            'Next 7 Days',
                            style: TextStyle(
                              fontWeight: checkDay[2] == true ? FontWeight.bold : FontWeight.normal,
                              fontFamily: 'Inter',
                              color: checkDay[2] == true ? Colors.black : Colors.grey,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 15,
                            color: checkDay[2] == true ? Colors.black : Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20.0),
                height: 120.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: itemDay[itemCountListview],
                  itemBuilder: (context, index) {
                    return Container(
                      width: 65.0,
                      child: Card(
                          color: index != 0 ? Colors.white.withOpacity(0.7) : Colors.white.withOpacity(0.95),
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                          elevation: 3,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              index != 0 ? Text('$index:00') : Text('now'),
                              Icon(Icons.wind_power),
                              Text('19'),
                            ],
                          )),
                    );
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
