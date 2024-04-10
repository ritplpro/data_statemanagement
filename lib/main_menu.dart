
import 'package:data_statemanagement/home_page.dart';
import 'package:data_statemanagement/provider_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({super.key});

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main menu"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

      ),
      body: Center(
        child: Container(
          child: Text("${context.watch<CounterProvider>().getcount()}",style:
           TextStyle(fontSize: 20,
             fontWeight: FontWeight.bold
           ) ,),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context)=>MyHomePage()));
        },
        child:Text("add"),
      ),
    );
  }
}
