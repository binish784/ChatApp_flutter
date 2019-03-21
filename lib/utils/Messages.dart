import './Message.dart';


class Messages{

  List<Message> messages; 
  
  
  int get numberOfMessages => messages.length;
  int currentMessageIndex=-1;


  void nextIndex(){
    this.currentMessageIndex = this.currentMessageIndex+1;
  }

  Message get showNextMessage{
    if(currentMessageIndex >=numberOfMessages){
      return null;
    }else{
      nextIndex();
      return messages[currentMessageIndex];
    }
  }

  Message getMessage(int index){
    return messages[index];
  }

  Messages(this.messages);
  

}
