import 'package:flutter/material.dart';
import 'package:flutter_stacked_implementation/counter/counter_viewmodel.dart';
import 'package:stacked/stacked.dart';

class CounterView extends StatelessWidget {
  const CounterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<CounterViewModel>.reactive(
      viewModelBuilder: () => CounterViewModel(),
      builder: (context, model, child) {
        return SafeArea(
          child: Scaffold(
            body: Center(
              child: Text(model.counter.toString()),
            ),
            floatingActionButton: Column(
              children: [
                const Spacer(),
                RawMaterialButton(
                  fillColor: Colors.blue,
                  shape: const CircleBorder(),
                  onPressed: () => model.incrementCounter(),
                  child: const Icon(Icons.add),
                ),
                const SizedBox(height: 10),
                RawMaterialButton(
                  fillColor: Colors.blue,
                  shape: const CircleBorder(),
                  onPressed: () => model.decrementCounter(),
                  child: const Icon(Icons.remove),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
