import 'package:flutter/material.dart';

class Button {

  bool _isActive=false;
  IconData _icon;
  
  Button(this._icon,this._isActive);

  bool get getActive => this._isActive;
  IconData get getIcon => this._icon;

  void changeActive(){
    if(this._isActive){
      this._isActive=false;
    }else{
      this._isActive=true;
    }
  }

}