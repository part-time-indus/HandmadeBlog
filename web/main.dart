import 'dart:html';
import 'html_components/navbar/navbar.html.dart';
import 'html_components/searchbox/searchbox.html.dart';
import 'html_components/recent_blog/recent_blog.html.dart';
import 'html_components/popular_blog/popular_blog.html.dart';
import './lib/searchbox.dart';

void main() {
  querySelector('#navbar')?.innerHtml = navbar;
  querySelector('#searchbar')?.innerHtml = searchBox;
  SearchBox('.input');

  querySelector('#recent_blogs')?.innerHtml = recentBlogComponent;
  querySelector('#popular_blogs')?.innerHtml = popularBlogComponent;
}
