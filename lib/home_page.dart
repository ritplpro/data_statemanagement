import 'package:data_statemanagement/provider_state.dart';
import 'package:data_statemanagement/secound_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("state-manage-provider"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(' ${context.watch<CounterProvider>().getcount()}',
                style: Theme.of(context).textTheme
                    .headlineMedium),
          ],
        ),
      ),
      floatingActionButton:Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(onPressed: (){

            context.read<CounterProvider>().increment();
          },child: Icon(Icons.add),),
          FloatingActionButton(onPressed: (){

            context.read<CounterProvider>().decrement();
          },child: Icon(Icons.remove),),
        ],
      ),);
  }
}
