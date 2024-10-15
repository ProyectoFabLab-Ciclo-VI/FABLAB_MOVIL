import 'package:flutter/material.dart';

class InferiorPrincipal extends StatelessWidget {
  const InferiorPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemCount: 10, // Número de Cards que deseas mostrar
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Card(
            color: Colors.amber,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            elevation: 4,
            child: SizedBox(
              height: 200,
              width: 100,
              child: Center(
                child: Text(
                  "Card ${index + 1}",
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
