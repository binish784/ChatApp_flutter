import 'package:flutter/material.dart';
import '../utils/Button.dart';
import '../utils/Buttons.dart';

class NavButtons extends StatefulWidget {
  @override
  _NavButtonsState createState() => _NavButtonsState();
}

class _NavButtonsState extends State<NavButtons> {

  Buttons buttons = new Buttons([
    Button(Icons.access_time,true),
    Button(Icons.phone,false),
    Button(Icons.people,false),
    Button(Icons.list,false),
    Button(Icons.person_pin,false),
  ]
);  

  Widget showButton(Button butt){
    return Expanded(
            child:InkWell(
              child: Container(
                decoration: BoxDecoration(
                  border:butt.getActive==true ?  Border(bottom: BorderSide(color: Colors.white,width: 5,)) :null,
                ),
                padding: EdgeInsets.all(10),
                child: Icon(butt.getIcon,color: Colors.white,),
              ),
              onTap: (){
                this.setState((){
                  buttons.getCurrentActive.changeActive();
                  butt.changeActive();
                });
              },
            ) ,
          );
  }

@override
Widget build(BuildContext context) {
    return Container(
      child:Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          showButton(buttons.getButton(0)),
          showButton(buttons.getButton(1)),
          showButton(buttons.getButton(2)),
          showButton(buttons.getButton(3)),
          showButton(buttons.getButton(4)),
        ],
      ),
    );
  }
}
