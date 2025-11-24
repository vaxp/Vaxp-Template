import 'package:flutter/material.dart';
import 'package:venom/core/venom_layout.dart';
import 'package:window_manager/window_manager.dart';
import 'core/theme/vaxp_theme.dart';

Future<void> main() async { 
      // Initialize Flutter bindings first to ensure the binary messenger is ready
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize window manager for desktop controls
  await windowManager.ensureInitialized();

  WindowOptions windowOptions = const WindowOptions(
    size: Size(1000, 700),
    center: true,
    titleBarStyle: TitleBarStyle.hidden,
  );

  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });

  runApp(const VaxpApp());}

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
    return VenomScaffold(
      title: "venom",
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
     
    );
  }
}
