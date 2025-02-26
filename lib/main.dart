import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          drawer: Drawer(
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.access_alarm_outlined),
                  title: Text("Recent"),
                  onTap: () {},
                )
                ListTile(
                  leading: Icon(Icons.abc_sharp),
                  title: Text("Images"),
                  onTap: () {},
                )
                ListTile(
                  leading: Icon(Icons.access_alarm_outlined),
                  title: Text("Video"),
                  onTap: () {},
                )
              ],
            ),

          ),
          appBar: AppBar(
          title: Text('My app'),
          backgroundColor: Colors.amber,
      ),
     body: ListView(
        children: [
          Image(
              image: NetworkImage(
                  "https://images.unsplash.com/photo-1608501078713-8e445a709b39?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8d2FsbHBhcGVyJTIwNGt8ZW58MHx8MHx8fDA%3D")),
          Image.network(
              "https://plus.unsplash.com/premium_photo-1673264933048-3bd3f5b86f9d?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8d2FsbHBhcGVyJTIwNGt8ZW58MHx8MHx8fDA%3D"),
          CachedNetworkImage(
            imageUrl: "https://images.unsplash.com/photo-1485470733090-0aae1788d5af?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fHdhbGxwYXBlciUyMDRrfGVufDB8fDB8fHww",
            placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        ],
      ),
    ));
  }
}
