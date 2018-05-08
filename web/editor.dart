import 'dart:convert';
import 'dart:html';
import 'dialog_base.dart';

class TextEditor {
  final TextAreaElement theEditor;
  TextEditor(this.theEditor) {
    theEditor
      ..value = loadDocument()
      ..onKeyUp.listen(saveDocument);
  }

  void clearDocument(MouseEvent event) {
    theEditor.value = "";
    saveDocument(event);
  }

  void saveDocument(dynamic event) {
    window.localStorage["MyTextEditor"] = json.encode(theEditor.value);
  }

  String loadDocument() {
    String readings = "";
    String jsonString = window.localStorage["MyTextEditor"];
    if (jsonString != null && jsonString.length > 0)
      readings = json.decode(jsonString);
    return readings;
  }

  void showDialogBox(MouseEvent event) {
    Dialog(200, 200);
  }
}
