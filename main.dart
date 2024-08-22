import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: "Hello BMC Flutter",
        home: Scaffold(
            appBar: AppBar(title: Text('Hello BMC Flutter'),
              backgroundColor: Colors.green,
            ),
            body:Builder(builder: (context)=> Center (
                child: Column (children: [
                  Text(
                    '\"Who Dares?!\"',
                    style: TextStyle(
                        fontSize: 46,
                        fontWeight: FontWeight.bold,
                        color: Colors.lightGreen[800]),
                  ),

                  Text(
                    'Discover the Keeper of the Grove',
                    style: TextStyle(fontSize: 20, color: Colors.deepOrangeAccent),
                  ),

                  //https://th.bing.com/th/id/R.e598f41a45c4e29ced4e0ee757ee7e20?rik=5T8cZCgrluFG7w&riu=http%3a%2f%2fclassic.battle.net%2fwar3%2fimages%2fnightelf%2funits%2fportraits%2fkeeper.gif&ehk=Nufbz3h7dDnO7xfazuxnJhxBDnSn%2fliNOBZqVjHKevs%3d&risl=&pid=ImgRaw&r=0

                  //https://images.freeimages.com/images/large-previews/eaa/the-beach-1464354.jpg
                  Image.network('https://th.bing.com/th/id/R.e598f41a45c4e29ced4e0ee757ee7e20?rik=5T8cZCgrluFG7w&riu=http%3a%2f%2fclassic.battle.net%2fwar3%2fimages%2fnightelf%2funits%2fportraits%2fkeeper.gif&ehk=Nufbz3h7dDnO7xfazuxnJhxBDnSn%2fliNOBZqVjHKevs%3d&risl=&pid=ImgRaw&r=0',
                  height: 350,
                  ),

                  ElevatedButton(
                    child: Text('Contact Us'),
                    onPressed: () => contactUs(context),
                  )
                ]
                )))));
  }
} // End Line of my class

void contactUs(BuildContext context) {
  showDialog(context: context,
      builder: (BuildContext)
  {
        return AlertDialog(
          title: Text('Contact Us'),
          content: Text('mail us at kotg@gmail.com'),
          actions: <Widget>[
            TextButton(
              child: Text('Close'),
              onPressed: () => Navigator.of(context).pop(),
            )
          ],
        );
      } //builder
  ); //showdialog
} //void contactus