import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main(){
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  //const MyApp({Key? key}) : super(key: key);

  _launchURL()async{
    const url = 'https://flutter.io';

    if(await canLaunch(url)){
      await launch(url);
    }else{
      throw 'Could`t launch url of $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Flutter Launch URL'
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RaisedButton.icon(
              onPressed: (){
                _launchURL();
              },
              icon: Icon(
              Icons.launch_rounded,
              size: 24,
            ),
              label: Text('Launch URL'),
              color: Colors.orangeAccent,
            ),
            RaisedButton.icon(
              onPressed: (){
                _launchURL();
              },
              icon: Icon(
                Icons.launch_rounded,
                size: 24,
              ),
              label: Text('Launch URL'),
              color: Colors.orange,
            ),
            RaisedButton.icon(
              onPressed: (){
                _launchURL();
              },
              icon: Icon(
                Icons.launch_rounded,
                size: 24,
              ),
              label: Text('Launch URL'),
              color: Colors.deepOrangeAccent,
            ),
          ],
        ),
      ),
    );
  }
}
