import 'dart:html';
import 'dart:convert' show json;

TextAreaElement theEditor;

void main() {
  theEditor = querySelector("#editor");
  theEditor
    ..value = loadDocument()
    ..onKeyUp.listen(saveDocument);

  ButtonInputElement btnClear = querySelector("#btnClearText");
  btnClear.onClick.listen(clearDocument);
}

void clearDocument(_) {
    theEditor.value = "";
    saveDocument(_);
}

void saveDocument(_) {
    window.localStorage["MyTextEditor"] = json.encode(theEditor.value);
}

String loadDocument() {
  String readings = "";
  String jsonString = window.localStorage["MyTextEditor"];
  if (jsonString != null && jsonString.length > 0)
    readings = json.decode(jsonString);
  return readings;
}
