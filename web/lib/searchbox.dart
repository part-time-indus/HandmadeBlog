import 'dart:async';
import 'dart:html';

class SearchBox {
  late final String inputSelector;
  InputElement? input;
  StreamTransformer<MouseEvent, MouseEvent>? throttle;
  SearchBox(String inputSelector) {
    this.inputSelector = inputSelector;
    input = querySelector('.input') as InputElement;
    _init();
  }

  void _init() {
    throttle = StreamTransformer.fromHandlers(handleData: _throttleStream);
    input?.onMouseOver.transform(throttle!).listen((event) {
      input?.placeholder = 'Search posts here.';
    });
    input?.onMouseLeave.transform(throttle!).listen((event) {
      input?.value = '';
    });
  }

  //NOTE: this is to decrease the polling to twice a second
  void _throttleStream(MouseEvent event, EventSink<MouseEvent> sink) {
    DateTime? lastEventTime;
    var pollEvent = false;
    final duration = Duration(milliseconds: 500);
    final now = DateTime.now();
    if (lastEventTime == null || now.difference(lastEventTime) > duration) {
      lastEventTime = now;
      pollEvent = true;
    } else {
      pollEvent = false;
    }
    if (pollEvent) {
      sink.add(event);
    }
  }
}
