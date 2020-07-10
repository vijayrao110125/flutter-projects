import 'package:flutter/material.dart';
import 'package:gf_demo/auth/login.dart';
import 'package:gf_demo/home/home.dart';
import 'package:gf_demo/screens/categories.dart';
import 'package:gf_demo/screens/profile.dart';
import 'package:gf_demo/styles/style.dart';

class Menu extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  Menu({Key key, this.scaffoldKey}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Drawer(
            child: Center(
      child: Stack(
        fit: StackFit.passthrough,
        children: <Widget>[
          _buildMenuBg(),
          Column(
            children: <Widget>[
              // _buildMenuBg(),

              Padding(
                padding: const EdgeInsets.only(),
                child: Container(
                  width: 500,
                  height: 78,
                  color: primary,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30.0),
                    child: Text(
                      "News App",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17.0,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'OpenSansSemiBold',
                      ),
                    ),
                  ),
                ),
              ),

              // Divider(color: Colors.white12),
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: _buildMenuTileList(
                    Icon(
                      Icons.home,
                      color: Colors.white,
                    ),
                    'Home',
                    0,
                    route: HomePage()),
              ),
              // Divider(color: Colors.white12),
              _buildMenuTileList(
                  Icon(
                    Icons.list,
                    color: Colors.white,
                  ),
                  'Categories',
                  0,
                  route: Category()),
              // Divider(color: Colors.white12),
              _buildMenuTileList(
                  Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                  'Profile',
                  0,
                  route: Profile()),
              // Divider(color: Colors.white12),
              _buildMenuTileList(
                  Icon(
                    Icons.exit_to_app,
                    color: Colors.white,
                  ),
                  'Logout',
                  0,
                  route: Login()),
              // Divider(color: Colors.white12),
            ],
          ),
        ],
      ),
    )));
  }

  Widget _buildMenuBg() {
    return Padding(
      padding: const EdgeInsets.only(top: 24.0),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("lib/assets/images/drawer.png"),
            fit: BoxFit.cover,
            // colorFilter: new ColorFilter.mode(
            //     Colors.black.withOpacity(0.60), BlendMode.darken),
          ),
        ),
        // child: Image(
        //   image: AssetImage("lib/assets/images/drawer.png"),
        //   fit: BoxFit.fill,
        // ),
      ),
    );
  }

  Widget _buildMenuTileList(Icon icon, String name, int count,
      {Widget route, bool check}) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.0),
      color: Colors.white12,
      child: GestureDetector(
        onTap: () {
          if (route != null) {
            Navigator.pop(context);
            Navigator.push(context,
                MaterialPageRoute(builder: (BuildContext context) => route));
          } else {
            Navigator.pop(context);
          }
        },
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: ListTile(
                leading: icon,
              ),
            ),
            Expanded(
              flex: 5,
              child: Text(
                name,
                style: drawertext(),
              ),
            ),
            Expanded(
              flex: 2,
              child: ListTile(
                trailing: Icon(Icons.chevron_right, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void showSnackbar(message) {
    final snackBar = SnackBar(
      content: Text(message),
      duration: Duration(milliseconds: 3000),
    );
    widget.scaffoldKey.currentState.showSnackBar(snackBar);
  }
}
