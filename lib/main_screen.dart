import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:very_good_analysis/very_good_analysis.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MainScreenState();
  }
}

class MainScreenState extends State<MainScreen> {
  int _bottomNavigationIndex = 0;

  void _awaitReturnValueFromSecondScreen({
    BuildContext context,
    String cityName,
    String pathToAsset,
  }) async {
    // start the SecondScreen and wait for it to finish with a result
    final result = await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ArcticCityScreen(
            cityName: cityName,
            pathToAsset: pathToAsset,
            bottomNavigationIndex: _bottomNavigationIndex,
          ),
        ));

    // after the SecondScreen result comes back update the Text widget with it
    setState(() {
      _bottomNavigationIndex = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
            child: RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'Путешествие\nна край Земли\n',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      color: Color.fromARGB(255, 0, 40, 69),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: 'Ворота в Арктику\n\n',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color.fromARGB(255, 0, 40, 69),
                    ),
                  ),
                  TextSpan(
                    text: 'Выбирайте, где начнётся ваше приключение!',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 24,
                      color: Color.fromARGB(255, 0, 40, 69),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 200.0,
            child: new ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Container(
                    width: 264.0,
                    child: new ListView(
                      scrollDirection: Axis.vertical,
                      physics: const NeverScrollableScrollPhysics(),
                      children: <Widget>[
                        Container(
                          width: 264,
                          height: 170,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            physics: const NeverScrollableScrollPhysics(),
                            children: [
                              ClipRRect(
                                child: Material(
                                  child: InkWell(
                                    child: Ink.image(
                                      image: AssetImage(
                                          'assets/images/Archangelsk.png'),
                                      fit: BoxFit.cover,
                                      height: 170,
                                      width: 255,
                                    ),
                                    onTap: () {
                                      _awaitReturnValueFromSecondScreen(
                                        cityName: 'Архангельск',
                                        pathToAsset:
                                            'assets/images/Archangelsk.png',
                                        context: context,
                                      );
                                    },
                                  ),
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                                child: SvgPicture.asset(
                                  'assets/images/ic_extra_large_background.svg',
                                  width: 9,
                                  height: 170,
                                ),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Архангельск',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24.0,
                                  color: Color.fromARGB(255, 0, 40, 69),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Container(
                    width: 264.0,
                    child: new ListView(
                      scrollDirection: Axis.vertical,
                      physics: const NeverScrollableScrollPhysics(),
                      children: <Widget>[
                        Container(
                          width: 264,
                          height: 170,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            physics: const NeverScrollableScrollPhysics(),
                            children: [
                              ClipRRect(
                                child: Material(
                                  child: InkWell(
                                    child: Ink.image(
                                      image: AssetImage(
                                          'assets/images/Murmansk.png'),
                                      fit: BoxFit.cover,
                                      height: 170,
                                      width: 255,
                                    ),
                                    onTap: () {
                                      _awaitReturnValueFromSecondScreen(
                                        cityName: 'Мурманск',
                                        pathToAsset:
                                            'assets/images/Murmansk.png',
                                        context: context,
                                      );
                                    },
                                  ),
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                                child: SvgPicture.asset(
                                  'assets/images/ic_extra_large_background.svg',
                                  width: 9,
                                  height: 170,
                                ),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Мурманск',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24.0,
                                  color: Color.fromARGB(255, 0, 40, 69),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Container(
                    width: 264.0,
                    child: new ListView(
                      scrollDirection: Axis.vertical,
                      physics: const NeverScrollableScrollPhysics(),
                      children: <Widget>[
                        Container(
                          width: 264,
                          height: 170,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            physics: const NeverScrollableScrollPhysics(),
                            children: [
                              ClipRRect(
                                child: Material(
                                  child: InkWell(
                                    child: Ink.image(
                                      image: AssetImage(
                                          'assets/images/Narian-Mar.png'),
                                      fit: BoxFit.cover,
                                      height: 170,
                                      width: 255,
                                    ),
                                    onTap: () {
                                      _awaitReturnValueFromSecondScreen(
                                        cityName: 'Нарьян-Мар',
                                        pathToAsset:
                                            'assets/images/Narian-Mar.png',
                                        context: context,
                                      );
                                    },
                                  ),
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                                child: SvgPicture.asset(
                                  'assets/images/ic_extra_large_background.svg',
                                  width: 9,
                                  height: 170,
                                ),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Нарьян-Мар',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24.0,
                                  color: Color.fromARGB(255, 0, 40, 69),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Container(
                    width: 264.0,
                    child: new ListView(
                      scrollDirection: Axis.vertical,
                      physics: const NeverScrollableScrollPhysics(),
                      children: <Widget>[
                        Container(
                          width: 264,
                          height: 170,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            physics: const NeverScrollableScrollPhysics(),
                            children: [
                              ClipRRect(
                                child: Material(
                                  child: InkWell(
                                    child: Ink.image(
                                      image: AssetImage(
                                          'assets/images/Anadyr.png'),
                                      fit: BoxFit.cover,
                                      height: 170,
                                      width: 255,
                                    ),
                                    onTap: () {
                                      _awaitReturnValueFromSecondScreen(
                                        cityName: 'Анадыр',
                                        pathToAsset: 'assets/images/Anadyr.png',
                                        context: context,
                                      );
                                    },
                                  ),
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                                child: SvgPicture.asset(
                                  'assets/images/ic_extra_large_background.svg',
                                  width: 9,
                                  height: 170,
                                ),
                              ),
                            ],
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Анадыр',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24.0,
                                  color: Color.fromARGB(255, 0, 40, 69),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color.fromARGB(255, 172, 189, 201),
            ),
            activeIcon: Icon(
              Icons.home,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.business,
              color: Color.fromARGB(255, 172, 189, 201),
            ),
            activeIcon: Icon(
              Icons.business,
            ),
            label: '',
          ),
        ],
        iconSize: 32,
        currentIndex: _bottomNavigationIndex,
        onTap: (int index) {
          setState(() {
            _bottomNavigationIndex = index;
          });
        },
      ),
    );
  }
}

class ArcticCityScreen extends StatefulWidget {
  final String pathToAsset;
  final String cityName;
  int bottomNavigationIndex;

  ArcticCityScreen(
      {this.pathToAsset, this.cityName, this.bottomNavigationIndex});

  @override
  State<StatefulWidget> createState() {
    return ArcticCityScreenState(
        pathToAsset: pathToAsset,
        cityName: cityName,
        bottomNavigationIndex: bottomNavigationIndex);
  }
}

class ArcticCityScreenState extends State<ArcticCityScreen> {
  final String pathToAsset;
  final String cityName;
  int bottomNavigationIndex;

  ArcticCityScreenState(
      {this.pathToAsset, this.cityName, this.bottomNavigationIndex});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 32,
                height: 32,
                child: FloatingActionButton(
                  onPressed: () {
                    Navigator.pop(context, bottomNavigationIndex);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    size: 24,
                  ),
                  backgroundColor: Color.fromARGB(200, 119, 152, 176),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 20, 15, 0),
            child: RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: cityName,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      color: Color.fromARGB(255, 0, 40, 69),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
            child: Image.asset(
              pathToAsset,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color.fromARGB(255, 172, 189, 201),
            ),
            activeIcon: Icon(
              Icons.home,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.business,
              color: Color.fromARGB(255, 172, 189, 201),
            ),
            activeIcon: Icon(
              Icons.business,
            ),
            label: '',
          ),
        ],
        iconSize: 32,
        currentIndex: bottomNavigationIndex,
        onTap: (int index) {
          setState(() {
            bottomNavigationIndex = index;
          });
        },
      ),
    );
  }
}
