import 'package:flutter/material.dart';



class AboutPage extends StatefulWidget {
  const AboutPage({Key key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Page"),
        backgroundColor: Colors.black,

      ),
      body: Container(
        child: Column(
          children: [
            Image.network("src"),
            SizedBox(height: 20,),
            Text("data"),//name
            SizedBox(height: 20,),
            Row(children: [
              RaisedButton(onPressed: (){},
                child: Row(
                  children: [
                    Icon(Icons.phone),
                    SizedBox(width: 10,),
                    Text("Call")
                  ],
                ),
              ),
              SizedBox(width: 20,),
              RaisedButton(onPressed: (){},
                child: Row(
                  children: [
                    Icon(Icons.mail),
                    SizedBox(width: 10,),
                    Text("Email"),

                  ],
                ),

              ),
              RaisedButton(onPressed: (){},
                child: Row(
                  children: [
                    Icon(Icons.pin_drop),
                    SizedBox(width: 10,),
                    Text("Location")
                  ],
                ),
              ),
            ],)
          ],
        ),
      ),
    );
  }
}
