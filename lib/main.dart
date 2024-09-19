import 'package:flutter/material.dart';
import 'package:flutter_aula5_pr3/soma.dart';
import 'package:flutter_aula5_pr3/divisao.dart';
import 'package:flutter_aula5_pr3/multiplicacao.dart';
import 'package:flutter_aula5_pr3/subtracao.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  Widget atual = const Soma();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
            child: SafeArea(
          child: Column(
            children: [
              TextButton(
                child: const Text('Soma'),
                onPressed: () {
                  setState(() {
                    atual = const Soma();
                  });
                },
              ),
              TextButton(
                child: const Text('Subtração'),
                onPressed: () {
                  setState(() {
                    atual = const Subtracao(resultadoSoma: 0);
                  });
                },
              ),
              TextButton(
                child: const Text('Multiplicação'),
                onPressed: () {
                  setState(() {
                    atual = const Multiplicacao();
                  });
                },
              ),
              TextButton(
                child: const Text('Divisão'),
                onPressed: () {
                  setState(() {
                    atual = const Divisao();
                  });
                },
              ),
            ],
          ),
        )),
        appBar: AppBar(
          title: const Text('Matemática'),
        ),
        body: atual,
      ),
    );
  }
}

/*
Future<void> _navigateAndDisplaySelection(BuildContext context) async {
  // Navigator.push returns a Future that completes after calling
  // Navigator.pop on the Selection Screen.
  final result = await Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const SelectionScreen()),
  );

  // When a BuildContext is used from a StatefulWidget, the mounted property
  // must be checked after an asynchronous gap.
  if (!context.mounted) return;

  // After the Selection Screen returns a result, hide any previous snackbars
  // and show the new result.
  ScaffoldMessenger.of(context)
    ..removeCurrentSnackBar()
    ..showSnackBar(SnackBar(content: Text('$result')));
}
*/