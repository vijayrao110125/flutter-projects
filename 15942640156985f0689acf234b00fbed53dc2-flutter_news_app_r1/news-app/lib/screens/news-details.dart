import 'package:flutter/material.dart';
import 'package:getflutter/components/appbar/gf_appbar.dart';
import 'package:getflutter/components/avatar/gf_avatar.dart';
import 'package:getflutter/components/button/gf_button_bar.dart';
import 'package:getflutter/components/button/gf_icon_button.dart';
import 'package:getflutter/components/card/gf_card.dart';
import 'package:getflutter/components/list_tile/gf_list_tile.dart';
import 'package:getflutter/components/typography/gf_typography.dart';
import 'package:gf_demo/styles/style.dart';

class NewsDetails extends StatefulWidget {
  @override
  _NewsDetailsState createState() => _NewsDetailsState();
}

class _NewsDetailsState extends State<NewsDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GFAppBar(
        backgroundColor: primary,
        centerTitle: true,
        title: Text("News App"),
      ),
      body: ListView(
        children: <Widget>[
          GFCard(
            boxFit: BoxFit.cover,
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.67), BlendMode.darken),
            image: Image.asset(
              'lib/assets/images/news5.png',
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fitWidth,
              height: 185.0,
              // height: 400.0,
            ),
//              imageOverlay: AssetImage("lib/assets/food.jpeg"),
            titlePosition: GFPosition.end,
            title: GFListTile(
                // avatar: GFAvatar(
                //   backgroundImage: AssetImage('lib/assets/images/three4.png'),
                // ),
                title: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Reiner joins Real Madrid!',
                      style: comments(),
                    ),
                    Text(
                      '21/1/2020',
                      style: descriptionSemibold(),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10.0,
                  ),
                  child: Divider(
                    color: Colors.grey,
                  ),
                )
              ],
            )),
            content: Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                "Real Madrid seal deal to sign Brazilian teen Reiner.The current no. 12 has grown to be a fan favourite both on and off the pitch and has evolved from ‘the Roberto Carlos replacement’ to have his own iconic status at the club. His 6.5 million euro price tag is surely one of the best transfer steals since the turn of the century",
                style: newsdetails(),
              ),
            ),
            buttonBar: GFButtonBar(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: GFIconButton(
                      color: Colors.white,
                      shape: GFIconButtonShape.circle,
                      icon: Image.asset('lib/assets/icons/share.png'),
                      onPressed: () {}),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 5.0),
                  child: GFIconButton(
                      color: Color(0xFF3B5998),
                      shape: GFIconButtonShape.circle,
                      icon: Icon(
                        IconData(
                          0xe904,
                          fontFamily: 'icomoon',
                        ),
                        color: getGFColor(GFColor.white),
                      ),
                      onPressed: () {}),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 5.0),
                  child: GFIconButton(
                      color: Color(0xFF00ACEE),
                      shape: GFIconButtonShape.circle,
                      icon: Icon(
                        IconData(
                          0xe90f,
                          fontFamily: 'icomoon',
                        ),
                        color: getGFColor(GFColor.white),
                      ),
                      onPressed: () {}),
                ),
                GFIconButton(
                    color: Color(0xFF25D366),
                    shape: GFIconButtonShape.circle,
                    icon: Icon(
                      IconData(
                        0xe911,
                        fontFamily: 'icomoon',
                      ),
                      color: getGFColor(GFColor.white),
                    ),
                    onPressed: () {}),
              ],
            ),
          ),
          // Row(
          //   children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 17.0, top: 10.0, bottom: 5.0),
            child: GFTypography(
              // color: Colors.blue,
              showDivider: false,
              child: Text('Comments', style: comments()),
            ),
          ),
          // GFCard(
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: GFListTile(
              avatar: GFAvatar(
                backgroundImage: AssetImage('lib/assets/images/news1.png'),
              ),
              title: Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Text(
                  'Fidel Castro',
                  style: titleBold(),
                ),
              ),
              description: Container(),
              subTitle: Text(
                'Vamos!!!',
                style: descriptionSemibold(),
              ),
              icon: Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Text(
                  '21/1/2020',
                  style: descriptionSemibold(),
                ),
              ),
            ),
          ),
          Divider(
            color: Colors.grey,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: GFListTile(
              avatar: GFAvatar(
                backgroundImage: AssetImage('lib/assets/icons/circle.png'),
                backgroundColor: Colors.white,
              ),
              // title: Padding(
              //   padding: const EdgeInsets.only(bottom: 5.0),
              //   child: Text(
              //     'Fidel Castro',
              //     style: titleBold(),
              //   ),
              // ),
              // description: Container(),
              title: TextFormField(
                keyboardType: TextInputType.emailAddress,
                validator: (String value) {
                  if (value.isEmpty ||
                      !RegExp("r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))")
                          .hasMatch(value)) {
                    return "Please Enter Valid Email";
                  }
                },
                // onSaved: (String value) {
                //   email = value;
                // },

                decoration: InputDecoration(
                  labelText: "Your Comment here",
                  labelStyle: emailTextNormal(),
                  contentPadding: EdgeInsets.all(10),
                  border: InputBorder.none,
                ),
                // style: textBlackOSR(),
              ),
            ),
          ),
          Divider(
            color: Colors.grey,
          )
          // ),
          //   ],
          // )
        ],
      ),
    );
  }
}
