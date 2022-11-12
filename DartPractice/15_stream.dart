
// sync: int, List<int>
// async: Future<int>, Stream<int>

import 'dart:async';

void main(List<String> args) {
  Stream numberStream = NumberGenerator().getStream.asBroadcastStream(); // rxswift share 비슷

  StreamSubscription sub1 = numberStream.listen((event) {
    print(event);
  }, onDone: () {
    // stream이 끊기면 수행
    print("Done");
  }, onError: (error) {
    print("Error");
  }, cancelOnError: true);
}

class NumberGenerator {
  int _counter = 0;

  StreamController<int> _controller = StreamController<int>();
  Stream<int> get getStream => _controller.stream;

  NumberGenerator() {
    final timer = Timer.periodic(Duration(seconds: 1), (timer) {
      _controller.sink.add(_counter);
      _counter ++;
    });

    Future.delayed(Duration(seconds: 10), (() => timer.cancel()));
  }
}