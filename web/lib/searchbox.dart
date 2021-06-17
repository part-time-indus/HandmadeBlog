import 'dart:html';

class SearchBox {
  late final String inputSelector;
  late final InputElement input;

  SearchBox(String inputSelector) {
    this.inputSelector = inputSelector;
    input = querySelector('.input') as InputElement;
    _init();
  }

  void _init() {
    input.addEventListener('mouseover', _activateSearchbar);
    input.addEventListener('mouseleave', _deactivateSearchbar);
  }

  dynamic _activateSearchbar(Event event) {
    input.placeholder = 'Search blog here.';
  }

  dynamic _deactivateSearchbar(Event event) {
    input.value = '';
  }

  // void throttle(MouseEvent event, ){

  // }
}
