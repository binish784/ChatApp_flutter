import 'package:flutter/material.dart';
import '../ui/SearchButton.dart';
import '../ui/NavButtons.dart'; 
import '../ui/ShowMessages.dart';



class DisplayMessage extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Material(
        child: Scaffold(
          appBar: AppBar(
            title: DisplaySearch(),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(40),
              child:Container(
                child:NavButtons(),
              )
            ),
          ),
          body: ShowMessages(),
        ),
      ),
    );
  }
}
