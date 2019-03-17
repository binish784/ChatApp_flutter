import 'package:flutter/material.dart';


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
              TextField(
                style: TextStyle(color: Colors.indigo),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 40,top:15),
                  suffixIcon: Icon(Icons.search),
                  hintText: "Search...",
                ),
              ),
              showMessage(Text("Binish Manandhar"), Text("THis was great"),Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVTCmTaeDm1FyOLRQ7stWHYR3WzE_5ViREIQJOMRkGm21wb8l-")),
              showMessage(Text("Andrew Shaman"), Text("Thanks to Flutter Nepal"),Image.network("https://upload.wikimedia.org/wikipedia/commons/3/38/Wikipedia_User-ICON_byNightsight.png")),
              showMessage(Text("Nepal Meow"), Text("Great Opportunity to learn Flutter"),Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5y3L0URosUA7io9O_b5YmaCqC80dokrs5NimYJ8xZ8o7UploB")),
              showMessage(Text("Howdy dowdy"), Text("Nice workshop and community"),Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaFfIZjtmUjzI94KOcU50tSXMguL8gnWvQZiOZXBLpqvAhMJ5K")),
              showMessage(Text("Lee"), Text("First Flutter Project"),Image.network("https://cdn.pixabay.com/photo/2016/04/15/18/05/computer-1331579_960_720.png")),
              showMessage(Text("Jessi"), Text("Second Assignment Flutter Nepal"),Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaFfIZjtmUjzI94KOcU50tSXMguL8gnWvQZiOZXBLpqvAhMJ5K")),
              showMessage(Text("Brenden"), Text("Didn't do the first one though"),Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5y3L0URosUA7io9O_b5YmaCqC80dokrs5NimYJ8xZ8o7UploB")),
              showMessage(Text("Andrea"), Text("Well No problem :p"),Image.network("https://cdn.pixabay.com/photo/2016/04/15/18/05/computer-1331579_960_720.png")),
              
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