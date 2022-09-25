import 'package:flutter_hooks_riverpod/fake_websocket.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterProviderClass {}

//  websocket provider

final fakeWebSocketProvider = Provider<WebSocket>(
  (ref) => FakeWebSocket(),
);

// counter provider of int
final counterProvider =
    StreamProvider.autoDispose.family<int, int?>((ref, start) {
  final counter = ref.watch(fakeWebSocketProvider).getStreamData(start);
  return counter;
});
 

//