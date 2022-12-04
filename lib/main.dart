import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/app_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The Best Food',
      theme: ThemeData(
        // This is the theme of your application.

        primarySwatch: Colors.blue,
      ),
      home: MultiBlocProvider(providers: [
        BlocProvider(create: (context) => AppCubit()),
      ], child: const MyHomePage()),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("The Best Food"),
      ),
      body: BlocBuilder<AppCubit, AppState>(
       builder: (BuildContext context, state){
        if (State.isLoading){
          return Center(child: CircularProgressIndicator());
        } else if (State.isUserLoggedIn){
          return Center
          (child: Column(mainAxisAlignment: MainAxisAlignment.center,
          
          
          children: [
            Text("Bienvenido ${state.loginResponseDto!.firstName}"),
            ElevatedButton(onPressed: (){
              BlocProvider.of<AppCubit>(context).logout();
              );
            },
          );
        }
       
      },
              
      
    );
  }
}
