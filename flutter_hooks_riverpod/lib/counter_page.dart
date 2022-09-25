import 'package:flutter/material.dart';
import 'package:flutter_hooks_riverpod/counter_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterPage extends ConsumerWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counterValue = ref.watch(counterProvider(5));

    // ref.listen(
    //   counterProvider,
    //   ((previous, next) {
    //     if (next >= 5) {
    //       showDialog(
    //         context: context,
    //         builder: (context) => AlertDialog(
    //           title: const Text('Dangerous opertion for mobile'),
    //           backgroundColor: Colors.teal,
    //           titleTextStyle: const TextStyle(
    //             color: Colors.white,
    //           ),
    //           actions: [
    //             TextButton(
    //               onPressed: () {
    //                 ref.invalidate(counterProvider);
    //                 Navigator.of(context).pop();
    //               },
    //               child: const Text('Okay'),
    //             ),
    //           ],
    //         ),
    //       );
    //       // ref.invalidate(counterProvider);
    //     }
    //   }),
    // );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter page'),
        // actions: [
        //   IconButton(
        //     onPressed: () {
        //       ref.invalidate(counterProvider);
        //     },
        //     icon: const Icon(
        //       Icons.refresh,
        //     ),
        //   ),
        // ],
      ),
      body: Center(
        child: counterValue.when(
          data: (int val) => Text(val.toString()),
          error: (error, stackTrace) => const Center(
            child: Text('Error no data available'),
          ),
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
        ),
      ),
    );
    // floatingActionButton: FloatingActionButton(
    //   onPressed: () {
    //     ref.read(counterProvider.notifier).state++;
    //   },
    //   child: const Icon(Icons.add),
    // ),
  }
}
