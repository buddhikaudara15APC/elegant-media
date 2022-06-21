import 'package:elegant_media_ios_practical_assignment/screens/map_screen.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {

  static const routeName = '/details-screen';
  const DetailsScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF008264),
        title: const Text(
          'Details',
           style: TextStyle(
              color: Colors.black87
            ),
          ),
          actions: [
            IconButton(
              onPressed: (){
                Navigator.of(context).pushNamed(MapScreen.routeName);
              }, 
              icon: const Icon(Icons.location_on)
              ),
          ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network("http://lorempixel.com/800/800/cats/1/"),
          const Text(
            "Balanced dedicated systemengine",
            style: TextStyle(
              fontSize: 20
            ),
            ),
            const SizedBox(height: 10,),
            const Text("Tempore dolor quibusdam reiciendis. Expedita adipisci voluptatem hic numquam necessitatibus. Aut atque provident nihil earum. Nemo occaecati quas natus quidem quis et. Ut excepturi voluptatum quia ut deserunt ex ad nemo. Itaque magnam animi voluptates voluptate.")
        ],
      ),
    );
  }
}