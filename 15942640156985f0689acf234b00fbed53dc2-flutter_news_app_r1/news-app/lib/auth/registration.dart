import 'package:flutter/material.dart';
import 'package:getflutter/components/appbar/gf_appbar.dart';
import 'package:getflutter/components/button/gf_button.dart';
import 'package:getflutter/components/typography/gf_typography.dart';
import 'package:gf_demo/auth/login.dart';
import 'package:gf_demo/styles/style.dart';

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: GFAppBar(
          backgroundColor: primary,
          centerTitle: true,
          title: Text("SIGNUP"),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              buildLoginPageForm(),
            ],
          ),
        ));
  }

  Widget buildLoginPageForm() {
    return Form(
      key: _formKey,
      child: Theme(
        data: ThemeData(
          brightness: Brightness.dark,
        ),
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              buildwelcometext(),
              buildusername(),
              buildEmailTextField(),
              buildEmailText(),
              buildEmailTextField(),
              buildPasswordText(),
              buildPasswordTextField(),
              buildLoginButton(),
              buildloginoutlinebutton(),
              buildcontinuetext(),
              buildsocialbuttons(),
              // buildForgotPasswordButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildwelcometext() {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: GFTypography(
        // color: Colors.blue,
        showDivider: false,
        child: Text(
          'Welcome Back!',
          style: authHeader(),
        ),
      ),
    );
  }

  Widget buildusername() {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: GFTypography(
        // color: Colors.blue,
        showDivider: false,
        child: Text(
          'UserName',
          style: emailTextNormal(),
        ),
      ),
    );
  }

  Widget buildEmailText() {
    return Padding(
      padding: const EdgeInsets.only(),
      child: GFTypography(
        // color: Colors.blue,
        showDivider: false,
        child: Text(
          'Email',
          style: emailTextNormal(),
        ),
      ),
    );
  }

  Widget buildEmailTextField() {
    return Padding(
      padding: const EdgeInsets.only(top: 5.0, bottom: 10.0),
      child: Container(
        // color: Colors.blue,
        child: TextFormField(
          // initialValue: "user@demo.com",
          style: labelStyle(),
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
              // labelText: "yourEmail",
              // labelStyle: hintStyleGreyLightOSR(),
              contentPadding: EdgeInsets.all(10),
              enabledBorder: const OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.grey, width: 0.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(),
              )),
          // style: textBlackOSR(),
        ),
      ),
    );
  }

  Widget buildPasswordText() {
    return GFTypography(
      // color: Colors.blue,
      showDivider: false,
      child: Text(
        'Password',
        style: emailTextNormal(),
      ),
    );
  }

  Widget buildPasswordTextField() {
    return Container(
      margin: EdgeInsets.only(top: 5.0, bottom: 10.0),
      // color: Colors.blue,
      child: TextFormField(
        // initialValue: "123456",
        style: labelStyle(),
        keyboardType: TextInputType.text,
        validator: (String value) {
          if (value.isEmpty || value.length < 6) {
            return "please Enter Valid Password";
          }
        },
        // onSaved: (String value) {
        //   password = value;
        // },
        decoration: InputDecoration(
            // labelText: "yourPassword",
            // labelStyle: hintStyleGreyLightOSR(),
            fillColor: Colors.black,
            focusColor: Colors.black,
            contentPadding: EdgeInsets.only(
              left: 15.0,
              right: 15.0,
              top: 10.0,
              bottom: 10.0,
            ),
            suffixIcon: Icon(Icons.lock),
            enabledBorder: const OutlineInputBorder(
              borderSide: const BorderSide(color: Colors.grey, width: 0.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(),
            )),
        // style: textBlackOSR(),
        obscureText: true,
      ),
    );
  }

  Widget buildLoginButton() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 15.0),
            child: GFButton(
              onPressed: () {},
              text: 'SIGNUP',
              textStyle: TextStyle(
                fontSize: 15.0,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget buildloginoutlinebutton() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(bottom: 30.0),
            child: GFButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
              child: Text(
                "Login",
              ),
              type: GFType.outline,
            ),
          ),
        )
      ],
    );
  }

  Widget buildcontinuetext() {
    return Text(
      'Or Continue With',
      textAlign: TextAlign.center,
      style: emailTextNormal(),
    );
  }

  Widget buildsocialbuttons() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
            child: GFButton(
              icon: Icon(
                IconData(
                  0xe904,
                  fontFamily: 'icomoon',
                ),
                color: getGFColor(GFColor.white),
              ),
              buttonBoxShadow: true,
              color: Color(0xFF3B5998),
              onPressed: () {},
              child: Text(
                "Facebook",
              ),
            ),
          ),
        ),
        // ),
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
            child: GFButton(
              icon: Icon(
                IconData(
                  0xe90f,
                  fontFamily: 'icomoon',
                ),
                color: getGFColor(GFColor.white),
              ),
              onPressed: () {},
              child: Text("Twitter"),
              color: Color(0xFF00ACEE),
              buttonBoxShadow: true,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
