import 'dart:html';

class Dialog {
  int width = 0;
  int height = 0;
  DivElement dialogBox = DivElement();
  Dialog(this.width, this.height) {
    dialogBox
      ..classes.toggle("dialog-box")
      ..style.width = "${width}px"
      ..style.height = "${height}px"
      ..children.add(makeButton());
    document.body.append(dialogBox);
  }

  ButtonInputElement makeButton() {
    ButtonInputElement button = ButtonInputElement();
    button
      ..classes.toggle("dialog-box-button")
      ..value = "CANCEL";
    button.onClick.listen(remove);
    return button;
  }

  void remove(MouseEvent me) {
    document.body.children.remove(dialogBox);
  }
}
