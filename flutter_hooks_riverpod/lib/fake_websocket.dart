abstract class WebSocket {
  Stream<int> getStreamData(int? start);
}

class FakeWebSocket implements WebSocket {
  @override
  Stream<int> getStreamData([int? start]) async* {
    int i = start!;
    while (true) {
      await Future.delayed(const Duration(milliseconds: 500));
      yield i++;
    }
  }
}
