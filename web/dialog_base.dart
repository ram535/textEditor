import 'dart:html';

class Dialog {
  int width = 0;
  int height = 0;
  DivElement dialogBox = DivElement();
  Dialog(this.width, this.height) {
    dialogBox
      ..classes.toggle("dialog-box")
      ..style.width = "${width}px"
      ..style.height = "${height}px";
    document.body.append(dialogBox);
  }
}
