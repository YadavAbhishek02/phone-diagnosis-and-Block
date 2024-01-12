import 'dart:async';
import 'package:diagnostic_android_application/BlockPractice/blocs/internet_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'BlockPractice/Screens/home_screen.dart';
import 'BlockPractice/SignIN/SignInHomePage.dart';
import 'SplashScreen/SplashScreen.dart';
import 'Ui/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return
      //BlocProvider(
     // create: (context) => InternetBlock(),
     // child:
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const MyHomePage(),
      );
   // );
  }
}

