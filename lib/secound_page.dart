import 'package:data_statemanagement/provider_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Secou_Page extends StatelessWidget {
  const Secou_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Provider.of<CounterProvider>(context,listen: false).increment();


        },
        child: Icon(Icons.next_plan),
      ),
    );
  }
}
