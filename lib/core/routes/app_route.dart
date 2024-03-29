import 'package:demo/Screens/result.dart';
import 'package:go_router/go_router.dart';
import '../../Screens/splash.dart';
import '../../Screens/hello.dart';
import 'dart:io';

import '../../Screens/voice.dart';
late File _image;
List _predictions = [];
final GoRouter router = GoRouter(routes: [
  GoRoute(
    path: "/",
    builder: (context, state) => const MySplach(),
  ),

  GoRoute(
    path: "/hello",
    builder: (context, state) => const Hello(),
  ),

  GoRoute(
      path: "/result",
      builder: (context, state) => result(_image,_predictions) ,
  ),

  GoRoute(
    path: "/Settings",
    builder: (context, state) => const Setting() ,
  )

]);