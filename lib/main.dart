import 'package:flutter/material.dart';


void main(){
  return runApp(new mainApp());
}


class mainApp extends StatelessWidget {
  @override

  Widget topButton(Icon icon){
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
    return Row(
          children: <Widget>[
            topButton(Icon(Icons.timer)),
            topButton(Icon(Icons.phone)),
            topButton(Icon(Icons.person)),
            topButton(Icon(Icons.list)),
            topButton(Icon(Icons.person_pin_circle)),
            
          ],
        );
  }

  Widget showMessage(Text name, Text message, Image source){
    return Container(
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
      home: Scaffold(
        appBar: AppBar(
          title: createIconRow()
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              showMessage(Text("Binish Manandhar"), Text("THis was great"),Image.network("")),
              showMessage(Text("Andrew Shaman"), Text("Thanks to Flutter Nepal"),Image.network("")),
              showMessage(Text("Nepal Meow"), Text("Great Opportunity to learn Flutter"),Image.network("")),
              showMessage(Text("Howdy dowdy"), Text("Nice workshop and community"),Image.network("")),
              showMessage(Text("Lee"), Text("First Flutter Project"),Image.network("")),
              showMessage(Text("Jessi"), Text("Second Assignment Flutter Nepal"),Image.network("")),
              showMessage(Text("Brenden"), Text("Didn't do the first one though"),Image.network("")),
              showMessage(Text("Andrea"), Text("Well No problem :p"),Image.network("")),
              
            ],
          ),
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