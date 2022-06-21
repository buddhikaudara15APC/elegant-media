import 'package:flutter/material.dart';

class MapScreen extends StatelessWidget {

  static const routeName = '/map';
  const MapScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF008264),
        title: const Text(
          'Map',
           style: TextStyle(
              color: Colors.black87
            ),
          ),
      ),
    );
  }
}