import 'dart:html';
import 'editor.dart';

TextEditor theEditor;

void main() {
  theEditor = TextEditor(querySelector("#editor"));

  ButtonInputElement btnClear = querySelector("#btnClearText");
  btnClear.onClick.listen(theEditor.clearDocument);

  ButtonInputElement btnAboutBox = querySelector("#btnAboutBox");
  btnAboutBox.onClick.listen(theEditor.showAboutBox);
}
