import 'package:flutter/material.dart';
import 'package:getflutter/colors/gf_color.dart';
import 'package:getflutter/components/appbar/gf_appbar.dart';
import 'package:getflutter/components/carousel/gf_carousel.dart';
import 'package:getflutter/components/image/gf_image_overlay.dart';
import 'package:getflutter/components/list_tile/gf_list_tile.dart';
import 'package:gf_demo/home/drawer.dart';
import 'package:gf_demo/screens/news-details.dart';
import 'package:gf_demo/styles/style.dart';

final List<String> imageList = [
  "lib/assets/images/c1.png",
  "lib/assets/images/c2.png",
  "lib/assets/images/c3.png",
  "lib/assets/images/c4.png",
  "lib/assets/images/c5.png",
];

class HomePage extends StatefulWidget {
  static String tag = "homepage";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GFAppBar(
        backgroundColor: primary,
        centerTitle: true,
        title: Text("News App"),
      ),
      drawer: Menu(),
      body: Padding(
        padding: const EdgeInsets.only(),
        child: ListView(
          children: <Widget>[
            // GFCard(
            //   // image: Image(
            //   //   image: AssetImage('lib/assets/images/news1.png'),
            //   // ),
            //   content: GFListTile(
            //     avatar: GFImageOverlay(
            //       height: 100,
            //       width: 100,
            //       image: AssetImage('lib/assets/images/news1.png'),
            //     ),

            //     title: Text(
            //       'Title',
            //       style: TextStyle(fontSize: 19.0),
            //     ),
            //     subTitle: Container(),
            //     description: Container(),
            //     icon: Text(
            //       'Caption',
            //       style: TextStyle(fontSize: 19.0),
            //     ),
            //     // showDivider: false,
            //   ),
            // ),

            // GFCard(
            // InkWell(
            //   onTap: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(builder: (context) => Login()),
            //     );
            //   },
            //   child: GFCard(
            //     content: GFListTile(
            //       avatar: GFAvatar(
            //         shape: GFAvatarShape.square,
            //         backgroundImage: AssetImage('lib/assets/images/news1.png'),
            //       ),
            //       title: Text(
            //         'Title',
            //         style: TextStyle(fontSize: 19.0),
            //       ),
            //       subTitle: Container(),
            //       description: Container(),
            //       icon: Text(
            //         'Caption',
            //         style: TextStyle(fontSize: 19.0),
            //       ),
            //       // showDivider: false,
            //     ),
            //   ),
            // ),
            GFCarousel(
              autoPlay: true,
              pagination: true,
              viewportFraction: 1.0,
              activeIndicator: getGFColor(GFColor.white),
              passiveIndicator: getGFColor(GFColor.dark),
              aspectRatio: 2.0,
              items: imageList.map(
                (url) {
                  return GFImageOverlay(
                    height: 100,
//                        width: 300,
                    // margin: EdgeInsets.only(
                    //   left: 15,
                    //   right: 15,
                    //   bottom: 30,
                    // ),
                    colorFilter: new ColorFilter.mode(
                        Colors.black.withOpacity(0.40), BlendMode.darken),
                    borderRadius: BorderRadius.all(Radius.circular(0)),
                    child: Padding(
                        padding: EdgeInsets.only(top: 30, left: 0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                                padding: EdgeInsets.only(left: 20.0, top: 70.0),
                                child: Text(
                                    'Virat Kohli vs Sachin Tendulkar: Who is the greatest batsman in an ODI run-chase?',
                                    style: drawerheading())),
                            // Padding(
                            //     padding: EdgeInsets.only(
                            //         left: 30, right: 30, top: 20),
                            //     child: Text(
                            //       'Lorem ipsum dolor sit amet, consectetur adipiscing elit,'
                            //       ' sed do eiusmod tempor dolor sit amet, consectetur',
                            //       textAlign: TextAlign.center,
                            //       style: TextStyle(
                            //           fontSize: 20.0,
                            //           color: getGFColor(GFColor.light)),
                            //     ))
                          ],
                        )),
                    image: AssetImage(url),
                  );
                },
              ).toList(),
              onPageChanged: (index) {
                setState(() {
                  // index;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NewsDetails()),
                  );
                },
                child: Container(
                  // height: 85,
                  // width: 343,
                  // margin: EdgeInsets.all(16.0),
                  // padding: EdgeInsets.only(
                  //   top: 16.0,
                  //   left: 24.0,
                  //   right: 18.0,
                  //   bottom: 12.0,
                  // ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.white,
                    boxShadow: [
                      new BoxShadow(
                        color: Color(0xFF518CDB).withOpacity(0.13),
                        blurRadius: 10.0,
                      ),
                    ],
                  ),
                  child: GFListTile(
                      avatar: GFImageOverlay(
                        height: 79,
                        width: 85,
                        image: AssetImage('lib/assets/images/news1.png'),
                      ),
                      title: Text(
                        'Deepika honoured at WEF',
                        style: titleBold(),
                      ),
                      description: Container(),
                      subTitle: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              'Deepika Padukone honoured at World Economic Forum.',
                              style: descriptionSemibold(),
                            ),
                          ),
                        ],
                      ),
                      icon: Column(
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, bottom: 10.0),
                            child: Text(
                              '12/12/1234',
                              style: descriptionSemibold(),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 18.0),
                            child: Text(
                              'Entertainment',
                              style: textSemibold(),
                            ),
                          ),
                        ],
                      )

                      // showDivider: false,
                      ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NewsDetails()),
                  );
                },
                child: Container(
                  // height: 85,
                  // width: 343,
                  // margin: EdgeInsets.all(16.0),
                  // padding: EdgeInsets.only(
                  //   top: 16.0,
                  //   left: 24.0,
                  //   right: 18.0,
                  //   bottom: 12.0,
                  // ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.white,
                    boxShadow: [
                      new BoxShadow(
                        color: Color(0xFF518CDB).withOpacity(0.33),
                        blurRadius: 20.0,
                      ),
                    ],
                  ),
                  child: GFListTile(
                      avatar: GFImageOverlay(
                        height: 79,
                        width: 85,
                        image: AssetImage('lib/assets/images/news2.png'),
                      ),
                      title: Text(
                        'Reiner joins Real Madrid',
                        style: titleBold(),
                      ),
                      description: Container(),
                      subTitle: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              'Real Madrid seal deal to sign Brazilian teen Reiner.',
                              style: descriptionSemibold(),
                            ),
                          ),
                        ],
                      ),
                      icon: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(bottom: 6.0),
                            child: Text(
                              '12/12/1234',
                              style: descriptionSemibold(),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 7.0, right: 4.0, bottom: 18.0),
                            child: Text(
                              'International',
                              style: textSemibold(),
                            ),
                          ),
                        ],
                      )

                      // showDivider: false,
                      ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NewsDetails()),
                  );
                },
                child: Container(
                  // height: 85,
                  // width: 343,
                  // margin: EdgeInsets.all(16.0),
                  // padding: EdgeInsets.only(
                  //   top: 16.0,
                  //   left: 24.0,
                  //   right: 18.0,
                  //   bottom: 12.0,
                  // ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.white,
                    boxShadow: [
                      new BoxShadow(
                        color: Color(0xFF518CDB).withOpacity(0.33),
                        blurRadius: 20.0,
                      ),
                    ],
                  ),
                  child: GFListTile(
                      avatar: GFImageOverlay(
                        height: 79,
                        width: 85,
                        image: AssetImage('lib/assets/images/news3.png'),
                      ),
                      title: Text(
                        'Missile attack in Yemen',
                        style: titleBold(),
                      ),
                      description: Container(),
                      subTitle: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              '80 soldiers killed in Yemen missile, Drone attack.',
                              style: descriptionSemibold(),
                            ),
                          ),
                        ],
                      ),
                      icon: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5.0),
                            child: Text(
                              '12/12/1234',
                              style: descriptionSemibold(),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 7.0, left: 15.0),
                            child: Text(
                              'National',
                              style: textSemibold(),
                            ),
                          ),
                        ],
                      )

                      // showDivider: false,
                      ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NewsDetails()),
                  );
                },
                child: Container(
                  // height: 85,
                  // width: 343,
                  // margin: EdgeInsets.all(16.0),
                  // padding: EdgeInsets.only(
                  //   top: 16.0,
                  //   left: 24.0,
                  //   right: 18.0,
                  //   bottom: 12.0,
                  // ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.white,
                    boxShadow: [
                      new BoxShadow(
                        color: Color(0xFF518CDB).withOpacity(0.33),
                        blurRadius: 20.0,
                      ),
                    ],
                  ),
                  child: GFListTile(
                      avatar: GFImageOverlay(
                        height: 79,
                        width: 85,
                        image: AssetImage('lib/assets/images/news4.png'),
                      ),
                      title: Text(
                        'Punjab on alert',
                        style: titleBold(),
                      ),
                      description: Container(),
                      subTitle: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              'Security alert in Punjab over fears of Pakistan pushing in militants.',
                              style: descriptionSemibold(),
                            ),
                          ),
                        ],
                      ),
                      icon: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(),
                            child: Text(
                              '12/12/1234',
                              style: descriptionSemibold(),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 15.0, top: 12.0, bottom: 8.0),
                            child: Text(
                              'National',
                              style: textSemibold(),
                            ),
                          ),
                        ],
                      )

                      // showDivider: false,
                      ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NewsDetails()),
                  );
                },
                child: Container(
                  // height: 85,
                  // width: 343,
                  // margin: EdgeInsets.all(16.0),
                  // padding: EdgeInsets.only(
                  //   top: 16.0,
                  //   left: 24.0,
                  //   right: 18.0,
                  //   bottom: 12.0,
                  // ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.white,
                    boxShadow: [
                      new BoxShadow(
                        color: Color(0xFF518CDB).withOpacity(0.33),
                        blurRadius: 20.0,
                      ),
                    ],
                  ),
                  child: GFListTile(
                      avatar: GFImageOverlay(
                        height: 79,
                        width: 85,
                        image: AssetImage('lib/assets/images/news5.png'),
                      ),
                      title: Text(
                        'Trump at WEF',
                        style: titleBold(),
                      ),
                      description: Container(),
                      subTitle: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              'Trump, Merkel and Imran to visit WEF at Davos.',
                              style: descriptionSemibold(),
                            ),
                          ),
                        ],
                      ),
                      icon: Column(
                        children: <Widget>[
                          Text(
                            '12/12/1234',
                            style: descriptionSemibold(),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: 4.0, top: 12.0),
                            child: Text(
                              'International',
                              style: textSemibold(),
                            ),
                          ),
                        ],
                      )

                      // showDivider: false,
                      ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NewsDetails()),
                  );
                },
                child: Container(
                  // height: 85,
                  // width: 343,
                  // margin: EdgeInsets.all(16.0),
                  // padding: EdgeInsets.only(
                  //   top: 16.0,
                  //   left: 24.0,
                  //   right: 18.0,
                  //   bottom: 12.0,
                  // ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.white,
                    boxShadow: [
                      new BoxShadow(
                        color: Color(0xFF518CDB).withOpacity(0.33),
                        blurRadius: 20.0,
                      ),
                    ],
                  ),
                  child: GFListTile(
                      avatar: GFImageOverlay(
                        height: 79,
                        width: 85,
                        image: AssetImage('lib/assets/images/news6.png'),
                      ),
                      title: Text(
                        'Tanhaji Box office record',
                        style: titleBold(),
                      ),
                      description: Container(),
                      subTitle: Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              'Tanhaji The unsung warrior box office collection : Day 11',
                              style: descriptionSemibold(),
                            ),
                          ),
                        ],
                      ),
                      icon: Column(
                        children: <Widget>[
                          Text(
                            '12/12/1234',
                            style: descriptionSemibold(),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, top: 12.0),
                            child: Text(
                              'National',
                              style: textSemibold(),
                            ),
                          ),
                        ],
                      )

                      // showDivider: false,
                      ),
                ),
              ),
            ),

            // )
          ],
        ),
      ),
    );
  }
}
