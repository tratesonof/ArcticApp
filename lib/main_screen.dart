import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:very_good_analysis/very_good_analysis.dart';

class MainScreen extends StatelessWidget {
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
                  child: InkWell(
                    child: Container(
                        width: 255.0,
                        child: new ListView(
                          scrollDirection: Axis.vertical,
                          physics: const NeverScrollableScrollPhysics(),
                          children: <Widget>[
                            ClipRRect(
                              child:
                                  Image.asset('assets/images/Archangelsk.png'),
                              borderRadius: BorderRadius.circular(8.0),
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
                        )),
                    onTap: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: InkWell(
                    child: Container(
                        width: 255.0,
                        child: new ListView(
                          scrollDirection: Axis.vertical,
                          physics: const NeverScrollableScrollPhysics(),
                          children: <Widget>[
                            ClipRRect(
                              child: Image.asset('assets/images/Murmansk.png'),
                              borderRadius: BorderRadius.circular(8.0),
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
                        )),
                    onTap: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: InkWell(
                    child: Container(
                        width: 255.0,
                        child: new ListView(
                          scrollDirection: Axis.vertical,
                          physics: const NeverScrollableScrollPhysics(),
                          children: <Widget>[
                            ClipRRect(
                              child:
                                  Image.asset('assets/images/Narian-Mar.png'),
                              borderRadius: BorderRadius.circular(8.0),
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
                        )),
                    onTap: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: InkWell(
                    child: Container(
                        width: 255.0,
                        child: new ListView(
                          scrollDirection: Axis.vertical,
                          physics: const NeverScrollableScrollPhysics(),
                          children: <Widget>[
                            ClipRRect(
                              child: Image.asset('assets/images/Anadyr.png'),
                              borderRadius: BorderRadius.circular(8.0),
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
                        )),
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Text("I must place here 4 buttons"),
        color: Colors.white,
      ),
    );
  }
}
