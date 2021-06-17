import 'dart:html';
import 'html_components/navbar/navbar.html.dart';
import 'html_components/searchbox/searchbox.html.dart';
import './lib/searchbox.dart';

void main() {
  querySelector('#navbar')?.innerHtml = navbar;
  querySelector('#searchbar')?.innerHtml = searchBox;
  SearchBox('.input');

  querySelector('#output')?.text = 'Your Dart app is running.';
}
