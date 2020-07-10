import 'package:flutter/material.dart';
import 'package:getflutter/components/appbar/gf_appbar.dart';
import 'package:getflutter/components/card/gf_card.dart';
import 'package:getflutter/components/image/gf_image_overlay.dart';
import 'package:gf_demo/auth/login.dart';
import 'package:gf_demo/home/drawer.dart';
import 'package:gf_demo/styles/style.dart';

class Profile extends StatefulWidget {
  static String tag = "profile";

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool isSwitched = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GFAppBar(
        backgroundColor: primary,
        centerTitle: true,
        title: Text("Profile"),
      ),
      drawer: Menu(),
      body: Column(
        children: <Widget>[
          GFCard(
            // color: Colors.lightBlue[50],
            content: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: GFImageOverlay(
                    height: 150,
                    width: 150,
                    shape: BoxShape.circle,
                    image: AssetImage('lib/assets/images/3.png'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                  child: Text(
                    'Lionel Messi',
                    style: comments(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 4.0, right: 3.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'lib/assets/icons/mail.png',
                          color: Colors.black,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 3.0),
                          child: Text(
                            'leo@gmail.com',
                            style: descriptionSemibold(),
                          ),
                        ),
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          'lib/assets/icons/phone.png',
                          color: Colors.black,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 3.0),
                          child: Text(
                            '+91 9876556432',
                            style: descriptionSemibold(),
                          ),
                        ),
                      ]),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 8.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Image.asset(
                          'lib/assets/icons/notification.png',
                          color: Colors.black,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 90.0),
                          child: Text(
                            'Turn on notifications',
                            style: profiledetails(),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Switch(
                            value: isSwitched,
                            onChanged: (value) {
                              setState(() {
                                isSwitched = value;
                              });
                            },
                            // activeTrackColor: Colors.lightGreenAccent,
                            activeColor: Colors.green,
                          ),
                        ),
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Image.asset(
                          'lib/assets/icons/lock.png',
                          color: Colors.black,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            'Privacy',
                            style: profiledetails(),
                          ),
                        )
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Image.asset(
                          'lib/assets/icons/web.png',
                          color: Colors.black,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            'Language Settings',
                            style: profiledetails(),
                          ),
                        )
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Image.asset(
                          'lib/assets/icons/logout.png',
                          color: Colors.black,
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()),
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                'Log out',
                                style: profiledetails(),
                              ),
                            ))
                      ]),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
