import 'package:flutter/material.dart';
import './message.dart';

void main(){
  return runApp(new MainApp());
}


class MainApp extends StatelessWidget {
  @override

  Widget TopButton(Icon icon){
    return Container(
              width: 65,
              child: IconButton(
                icon: icon,
                iconSize: 30,
                onPressed: (){
                  print("Histroy Clicked");
                },
              ),
    ); 
  }

  Widget createIconRow(){
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            TopButton(Icon(Icons.timer)),
            TopButton(Icon(Icons.phone)),
            TopButton(Icon(Icons.person)),
            TopButton(Icon(Icons.list)),
            TopButton(Icon(Icons.person_pin_circle)),
          ],
        ),
      ],
    );
    
  }

  Widget showMessage(Text name, Text message, Image source){
    return new Container(
              margin: EdgeInsets.only(left: 5,top:5),
              height: 70,
              child:ListTile( 
              leading: CircleAvatar(
                child: source,
              ),
              title: name,
              subtitle: message,
              onTap: (){
                print('Show message');  
              },
      ),
    );
  }


  Widget build(BuildContext context) {
   
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new Scaffold(
        appBar: AppBar(
          title: createIconRow()
        ),
        body:
        Column(
          children: <Widget>[
            TextField(
                style: TextStyle(color: Colors.indigo),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 40,top:15),
                  suffixIcon: Icon(Icons.search),
                  hintText: "Search...",
                ),
              ),
            Expanded(
              child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (BuildContext context, int index){
                  return showMessage(Text(messages[index]["username"]), Text(messages[index]["message"]),Image.network(messages[index]["image"]));
                },
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (){
            print("New Message Clicked");
          },
        ),
      ),
    );
  }
}