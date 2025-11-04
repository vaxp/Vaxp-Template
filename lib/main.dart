import 'package:flutter/material.dart';
import 'core/theme/vaxp_theme.dart';

void main() => runApp(const VaxpApp());

class VaxpApp extends StatelessWidget {
  const VaxpApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VAXP UI',
      debugShowCheckedModeBanner: false,
      theme: VaxpTheme.dark,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('VAXP Glass UI')),
      body: Center(
        child: VaxpGlass(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text("واجهة زجاجية VAXP", style: TextStyle(fontSize: 20)),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("زر تجريبي"),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: "الرئيسية"),
          NavigationDestination(icon: Icon(Icons.settings), label: "الإعدادات"),
        ],
      ),
    );
  }
}
