import 'package:alura_learnings/card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          leading: Container(),
          title: Text('Tarefas'),
        ),
        body: ListView(
          children: [
            CardTarefa("Aprender Flutter", 'https://codelabs.developers.google.com/static/codelabs/flutter-flame-game/img/afb0fd6677c2a621.png?hl=pt-br', 2),
            CardTarefa("Aula de ingles depois das 18horas após a minha academia", 'https://www.gameartguppy.com/wp-content/uploads/2019/04/mascot_android-flutter.png', 4),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
          },
        ),
      ),
    );
  }
}
