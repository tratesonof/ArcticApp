import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:very_good_analysis/very_good_analysis.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class MainScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MainScreenState();
  }
}

class CatalogScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CatalogNavigatorState();
  }
}

GlobalKey<NavigatorState> _catalogKey = GlobalKey<NavigatorState>();

class CatalogNavigatorState extends State<CatalogScreen> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: _catalogKey,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          settings: settings,
          builder: (BuildContext context) {
            switch (settings.name) {
              case '/':
                return DefaultScreen();
              case '/ArchangelskInfo':
                return ArcticCityScreen(
                  cityName: 'Архангельск',
                  pathToAsset: 'assets/images/Archangelsk.png',
                );
              case '/MurmanskInfo':
                return ArcticCityScreen(
                  cityName: 'Мурманск',
                  pathToAsset: 'assets/images/Murmansk.png',
                );
              case '/Narian-MarInfo':
                return ArcticCityScreen(
                  cityName: 'Нарьян-Мар',
                  pathToAsset: 'assets/images/Narian-Mar.png',
                );
              case "/AnadyrInfo":
                return ArcticCityScreen(
                  cityName: 'Анадыр',
                  pathToAsset: 'assets/images/Anadyr.png',
                );
              default:
                return null;
            }
          },
        );
      },
    );
  }
}

class DefaultScreen extends StatelessWidget {
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
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
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
                                      Navigator.pushNamed(
                                          context, '/ArchangelskInfo');
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
                                      Navigator.pushNamed(
                                          context, '/MurmanskInfo');
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
                                      Navigator.pushNamed(
                                          context, '/Narian-MarInfo');
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
                                      Navigator.pushNamed(
                                          context, '/AnadyrInfo');
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
    );
  }
}

class TempNavigator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TempNavigatorState();
  }
}

GlobalKey<NavigatorState> _tempScreenKey = GlobalKey<NavigatorState>();

class TempNavigatorState extends State<TempNavigator> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: _tempScreenKey,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            settings: settings,
            builder: (BuildContext context) {
              switch (settings.name) {
                case '/':
                  return TempScreen1();
                case '/tempScreen2':
                  return TempScreen2();
                default:
                  return null;
              }
            });
      },
    );
  }
}

class TempScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        AppBar(
          title: Text("Temp screen 1"),
        ),
        FlatButton(
          child: Text("Go to Temp screen 2"),
          onPressed: () => Navigator.pushNamed(context, '/tempScreen2'),
        ),
      ],
    );
  }
}

class TempScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        AppBar(
          title: Text("Temp screen 2"),
        ),
      ],
    );
  }
}

class MainScreenState extends State<MainScreen> {
  int _bottomNavigationIndex = 0;

  List<GlobalKey<NavigatorState>> _navigatorKeys = [
    _catalogKey,
    _tempScreenKey,
  ];

  Future<bool> _systemBackButtonPressed() {
    if (_navigatorKeys[_bottomNavigationIndex].currentState.canPop()) {
      _navigatorKeys[_bottomNavigationIndex]
          .currentState
          .pop(_navigatorKeys[_bottomNavigationIndex].currentContext);
    } else {
      SystemChannels.platform.invokeMethod<void>('SystemNavigator.pop');
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _systemBackButtonPressed,
      child: Scaffold(
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
        body: SafeArea(
          child: IndexedStack(
            index: _bottomNavigationIndex,
            children: [
              CatalogScreen(),
              TempNavigator(),
            ],
          ),
        ),
      ),
    );
  }
}

class ArcticCityScreen extends StatelessWidget {
  final String pathToAsset;
  final String cityName;

  ArcticCityScreen({this.pathToAsset, this.cityName});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8, 8, 8, 8),
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                width: 32,
                height: 32,
                child: Icon(
                  Icons.arrow_back,
                  size: 24,
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
    );
  }
}
