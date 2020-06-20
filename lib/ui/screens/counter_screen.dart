import 'package:base_flutter_project/core/viewmodels/counter_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<CounterVM>(
      builder: (_, counterModel, child) => Scaffold(
        appBar: AppBar(
          title: Text('MVVP Counter App'),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add,
            color: Colors.white,
          ),
          onPressed: () {
            counterModel.increment();
          },
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('You have pushed the button this many times:'),
              Text(counterModel.count.toString()),
            ],
          ),
        ),
      ),
    );
  }
}
