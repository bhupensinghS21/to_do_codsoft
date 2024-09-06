import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_codsoft/pages/add_todo.dart';
import 'package:to_do_codsoft/pages/splashscreen.dart';
import 'package:to_do_codsoft/pages/todo_list.dart';
import 'models/save_task.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => SaveTask(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: '/splash',  // Set splash screen as the initial route
      routes: {
        '/splash': (_) => SplashScreen(),
        '/': (_) => const TodoList(),
        '/add-todo-screen': (_) => AddTodo(),
      },
    );
  }
}
