import 'dart:html';
import 'dart:convert' show json;

TextAreaElement theEditor;

void main() {
  theEditor = querySelector("#editor");
  theEditor
    ..onKeyUp.listen((_) =>
        window.localStorage["MyTextEditor"] = json.encode(theEditor.value));
}
