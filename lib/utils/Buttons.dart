import './Button.dart';

class Buttons{

  List<Button> buttons;

  Button get getCurrentActive{
    for (var butt in buttons) {
      if(butt.getActive){
        return butt;
      }
    }
    return buttons[0];
  }

  int get numberOfButton{
    return buttons.length;
  }

  Button getButton(int index){
    return buttons[index];
  }

  Buttons(this.buttons);

}