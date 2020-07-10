import 'package:flutter/material.dart';
import 'package:getflutter/components/appbar/gf_appbar.dart';
import 'package:getflutter/components/image/gf_image_overlay.dart';
import 'package:gf_demo/home/drawer.dart';
import 'package:gf_demo/home/home.dart';
import 'package:gf_demo/styles/style.dart';

class Category extends StatefulWidget {
  static String tag = "category";

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: GFAppBar(
          backgroundColor: primary,
          centerTitle: true,
          title: Text("Categories"),
        ),
        drawer: Menu(),
        body: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
          child: ListView(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Expanded(
                    // child: GFCard(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0, left: 10.0),
                          child: GFImageOverlay(
                              // boxFit: BoxFit.cover,
                              height: 150,
                              width: 150,
                              colorFilter: new ColorFilter.mode(
                                  Colors.black.withOpacity(0.40),
                                  BlendMode.darken),
                              image: AssetImage('lib/assets/images/1.png'),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 100.0),
                                  child: Text(
                                    'Politics',
                                    style: categoryHeading(),
                                  ),
                                ),
                              )
                              // ),
                              // colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.60), BlendMode.darken),
                              // image: AssetImage('lib/assets/images/image1.png'),
                              ),
                        ),
                      ],
                    ),
                    // ),
                  ),
                  Expanded(
                    // child: GFCard(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 20.0, right: 10.0),
                          child: GFImageOverlay(
                              height: 150,
                              width: 150,
                              boxFit: BoxFit.cover,
                              colorFilter: new ColorFilter.mode(
                                  Colors.black.withOpacity(0.40),
                                  BlendMode.darken),
                              image: AssetImage('lib/assets/images/2.png'),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 100.0),
                                  child: Text(
                                    'International',
                                    style: categoryHeading(),
                                  ),
                                ),
                              )
                              // ),
                              // colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.60), BlendMode.darken),
                              // image: AssetImage('lib/assets/images/image1.png'),
                              ),
                        ),
                      ],
                    ),
                    // ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Expanded(
                    // child: GFCard(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0, left: 10.0),
                          child: GFImageOverlay(
                              // boxFit: BoxFit.cover,
                              height: 150,
                              width: 150,
                              colorFilter: new ColorFilter.mode(
                                  Colors.black.withOpacity(0.40),
                                  BlendMode.darken),
                              image: AssetImage('lib/assets/images/3.png'),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 100.0),
                                  child: Text(
                                    'Sports',
                                    style: categoryHeading(),
                                  ),
                                ),
                              )
                              // ),
                              // colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.60), BlendMode.darken),
                              // image: AssetImage('lib/assets/images/image1.png'),
                              ),
                        ),
                      ],
                    ),
                    // ),
                  ),
                  Expanded(
                    // child: GFCard(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 20.0, right: 10.0),
                          child: GFImageOverlay(
                              height: 150,
                              width: 150,
                              boxFit: BoxFit.cover,
                              colorFilter: new ColorFilter.mode(
                                  Colors.black.withOpacity(0.40),
                                  BlendMode.darken),
                              image: AssetImage('lib/assets/images/4.png'),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 100.0),
                                  child: Text(
                                    'Entertainment',
                                    style: categoryHeading(),
                                  ),
                                ),
                              )
                              // ),
                              // colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.60), BlendMode.darken),
                              // image: AssetImage('lib/assets/images/image1.png'),
                              ),
                        ),
                      ],
                    ),
                    // ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Expanded(
                    // child: GFCard(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 20.0, left: 10.0),
                          child: GFImageOverlay(
                              // boxFit: BoxFit.cover,
                              height: 150,
                              width: 150,
                              colorFilter: new ColorFilter.mode(
                                  Colors.black.withOpacity(0.40),
                                  BlendMode.darken),
                              image: AssetImage('lib/assets/images/5.png'),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 100.0),
                                  child: Text(
                                    'Wheather',
                                    style: categoryHeading(),
                                  ),
                                ),
                              )
                              // ),
                              // colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.60), BlendMode.darken),
                              // image: AssetImage('lib/assets/images/image1.png'),
                              ),
                        ),
                      ],
                    ),
                    // ),
                  ),
                  Expanded(
                    // child: GFCard(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 20.0, right: 10.0),
                          child: GFImageOverlay(
                              height: 150,
                              width: 150,
                              boxFit: BoxFit.cover,
                              colorFilter: new ColorFilter.mode(
                                  Colors.black.withOpacity(0.40),
                                  BlendMode.darken),
                              image: AssetImage('lib/assets/images/6.png'),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 100.0),
                                  child: Text(
                                    'Stock News',
                                    style: categoryHeading(),
                                  ),
                                ),
                              )
                              // ),
                              // colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.60), BlendMode.darken),
                              // image: AssetImage('lib/assets/images/image1.png'),
                              ),
                        ),
                      ],
                    ),
                    // ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
