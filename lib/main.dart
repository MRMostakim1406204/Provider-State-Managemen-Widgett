import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_widget/Provider/counter_provider.dart';
import 'package:provider_widget/homePage.dart';

void main() { 
runApp(MultiProvider(
  providers: [
    ChangeNotifierProvider(create: (_)=> CounterProvider())
  ],
  child: const MyApp(),
));
}

class MyApp extends StatelessWidget{
  const MyApp ({Key?key}) : super (key: key);
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
