import 'dart:html';

class Dialog {
  int width;
  int height;
  DivElement dialogBox = DivElement();
  DivElement contentBox = DivElement();
  Dialog(this.width, this.height) {
    dialogBox
      ..classes.toggle("dialog-box")
      ..style.width = "${width}px"
      ..style.height = "${height}px"
      ..children.add(contentBox)
      ..children.add(makeButton());
    document.body.append(dialogBox);
  }

  ButtonInputElement makeButton() {
    ButtonInputElement button = ButtonInputElement();
    button
      ..classes.toggle("dialog-box-button")
      ..value = "OK";
    button.onClick.listen(remove);
    return button;
  }

  void remove(MouseEvent event) {
    document.body.children.remove(dialogBox);
  }
}
