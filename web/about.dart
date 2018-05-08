import 'dart:html';
import 'dialog_base.dart';

class AboutBox extends Dialog {
  final String linkUrl;
  final String linkText;

  AboutBox(this.linkUrl, this.linkText, int width, int height)
      : super(width, height) {
    HeadingElement title = HeadingElement.h1();
    title.text = "About";
    AnchorElement link = AnchorElement();
    link
      ..href = linkUrl
      ..text = linkText;
    contentBox..children.add(title)..children.add(link);
  }
}
