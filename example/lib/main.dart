import 'package:flutter/material.dart';
import 'package:flutter_sficon/flutter_sficon.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: IconTheme(
          data: IconThemeData(color: Theme.of(context).colorScheme.primary),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SFIcon(
                SFIcons.sf_heart_text_clipboard,
                fontSize: 40,
                fontWeight: FontWeight.w100,
              ),
              SFIcon(
                SFIcons.sf_figure_run_treadmill,
                fontSize: 40,
                fontWeight: FontWeight.w200,
              ),
              SFIcon(
                SFIcons.sf_vision_pro_trianglebadge_exclamationmark,
                fontSize: 40,
                fontWeight: FontWeight.w300,
              ),
              SFIcon(
                SFIcons.sf_steeringwheel_and_hands,
                fontSize: 40,
                fontWeight: FontWeight.w400,
              ),
              SFIcon(
                SFIcons.sf_square_and_arrow_up,
                fontSize: 40,
                fontWeight: FontWeight.w500,
              ),
              SFIcon(
                SFIcons.sf_paperplane_fill,
                fontSize: 40,
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
