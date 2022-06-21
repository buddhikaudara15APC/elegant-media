import 'package:elegant_media_ios_practical_assignment/model/response_model.dart';
import 'package:elegant_media_ios_practical_assignment/screens/details_screen.dart';
import 'package:elegant_media_ios_practical_assignment/services/route.dart';
import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    APIRoute apiRoute = APIRoute();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF008264),
        title: const Center(
            child: Text(
          'List View',
          style: TextStyle(color: Colors.black87),
        )),
      ),
      body: Column(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "John Doe",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("demo@example.com"),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF005C46)),
                  onPressed: () {},
                  child: const Text(
                    "Logout",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(),
          FutureBuilder<ResponseModel>(
            
              future: apiRoute.getData(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                    shrinkWrap: true,
                  itemBuilder: (ctx, i) => ListTile(
                    leading: CircleAvatar(
                      child: Image.network(snapshot.data!.data![i].image!.medium!),
                    ),
                    title:  Text(snapshot.data!.data![i].title!),
                    subtitle: Text(
                        snapshot.data!.data![i].address!),
                    onTap: () {
                      Navigator.of(context).pushNamed(DetailsScreen.routeName);
                    },
                  ),
                  itemCount: snapshot.data!.data!.length,
                );
                }else{
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                
              }),
        ],
      ),
    );
  }
}
