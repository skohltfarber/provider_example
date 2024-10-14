import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/providers/counter_provider.dart';

// Home Page
class ChallengePage extends StatelessWidget {
  const ChallengePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Challenge Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "${context.watch<CounterProvider>().value}",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  context.read<CounterProvider>().incrementCounter();
                },
                child: const Text('+'),
              ),
              const SizedBox(height: 10.0),
              ElevatedButton(
                onPressed: () {
                  context.read<CounterProvider>().decrementCounter();
                },
                child: const Text('-'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
