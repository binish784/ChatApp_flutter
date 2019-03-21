import 'package:flutter/material.dart';
import '../utils/Messages.dart';
import '../utils/Message.dart';

class ShowMessages extends StatefulWidget {
  @override
  _ShowMessagesState createState() => _ShowMessagesState();
}

class _ShowMessagesState extends State<ShowMessages> {
 
  Messages messages = new Messages([
    Message("Binish Manandhar", "This was great", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVTCmTaeDm1FyOLRQ7stWHYR3WzE_5ViREIQJOMRkGm21wb8l-","9:30 AM"),
    Message("Andrew Shaman", 'Thanks to Flutter Nepal', 'https://upload.wikimedia.org/wikipedia/commons/3/38/Wikipedia_User-ICON_byNightsight.png',"9:30 AM"),
    Message('Nepal Meow', 'Great Opportunity to learn Flutter', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5y3L0URosUA7io9O_b5YmaCqC80dokrs5NimYJ8xZ8o7UploB',"9:30 AM"),
    Message('Howdy dowdy', 'Nice workshop and community', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaFfIZjtmUjzI94KOcU50tSXMguL8gnWvQZiOZXBLpqvAhMJ5K',"9:30 AM"),
    Message('Lee', 'First Flutter Project : Messenger Assignment', 'https://cdn.pixabay.com/photo/2016/04/15/18/05/computer-1331579_960_720.png',"9:30 AM"),
    Message('Jessica', 'Second Assignment Flutter Nepal', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaFfIZjtmUjzI94KOcU50tSXMguL8gnWvQZiOZXBLpqvAhMJ5K',"9:30 AM"),
    Message('Brenden', 'Didnt do the first one though', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5y3L0URosUA7io9O_b5YmaCqC80dokrs5NimYJ8xZ8o7UploB',"9:30 AM"),
    Message('Andrea', 'Well No problem :p', 'https://cdn.pixabay.com/photo/2016/04/15/18/05/computer-1331579_960_720.png',"9:30 AM")
  ]);
  
 
 

Widget showMessage(String name, String message, String source,String time){
    return new Container(
              margin: EdgeInsets.only(left: 5,top:5),
              height: 70,
              child:ListTile( 
              leading: CircleAvatar(
                child: Image.network(source),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(name),
                  Text(time,style: TextStyle(color: Colors.grey,fontSize: 12),),
                ],
              ),
              subtitle: Text(message),
              onTap: (){
                print('Show message');  
              },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Expanded(
              child: ListView.builder(
              itemCount: messages.numberOfMessages,
              itemBuilder: (BuildContext context, int index){
                  return showMessage(
                    messages.getMessage(index).username,
                    messages.getMessage(index).message_text,
                    messages.getMessage(index).image_url,
                    messages.getMessage(index).time,  
                  );
                },
              ),
            ),
          ],
      ), 
    );
  }
}
