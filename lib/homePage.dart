import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_widget/Provider/counter_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Counter value is = ${context.watch<CounterProvider>().count}",style: TextStyle(
            fontSize: 25,color: Colors.pink
          ),),
          SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton(onPressed: (){
                context.read<CounterProvider>().incrementCount();
              },
              child: Icon(Icons.add),),

              FloatingActionButton(onPressed: (){
                context.read<CounterProvider>().decrementCount();
              },
              child: Icon(Icons.remove),),
            ],
          )
        ],

      ),
    );
  }
}