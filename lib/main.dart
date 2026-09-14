import 'package:contact_app/core/resourses/route_manager.dart';
import 'package:contact_app/ui/home/screen/home_screen.dart';
import 'package:contact_app/ui/home_concept/screen/home_concept.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
   routes: {
     RouteManager.homeRouteName:(context)=>HomeScreen(),
     RouteManager.homeConceptRouteName:(context)=>HomeConcept(),
   },
      initialRoute: RouteManager.homeRouteName,
    );
  }
}

