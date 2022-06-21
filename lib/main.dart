import 'package:elegant_media_ios_practical_assignment/screens/details_screen.dart';
import 'package:elegant_media_ios_practical_assignment/screens/list_view_screen.dart';
import 'package:elegant_media_ios_practical_assignment/screens/map_screen.dart';
import 'package:elegant_media_ios_practical_assignment/services/route.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   APIRoute apiRoute =  APIRoute();
   apiRoute.getData();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:   const ListViewScreen(),
      routes: {
        DetailsScreen.routeName:(context)=>const DetailsScreen(),
        MapScreen.routeName:(context)=>const MapScreen(),
      },
    );
  }
}



