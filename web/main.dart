import 'dart:html';
import 'lib/components/navbar.html.dart';
import 'lib/components/searchbox.html.dart';
import 'lib/components/recent_blog.html.dart';
import 'lib/components/popular_blog.html.dart';
import 'lib/searchbox.dart';

void main() {
  querySelector('#nav')?.innerHtml = navbar;
  querySelector('#search')?.innerHtml = searchBox;
  SearchBox('.input');

  querySelector('#recent')?.innerHtml = recentBlogComponent;
  querySelector('#popular')?.innerHtml = popularBlogComponent;
}
