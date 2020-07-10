import 'package:gf_demo/auth/login.dart';
import 'package:gf_demo/auth/registration.dart';
import 'package:gf_demo/screens/categories.dart';
import 'package:gf_demo/screens/profile.dart';
import 'home/home.dart';

final routes = {
  '/homepage': (context) => HomePage(),
  '/login': (context) => Login(),
  '/signup': (context) => Registration(),
  '/profile': (context) => Profile(),
  '/category': (context) => Category(),
};
