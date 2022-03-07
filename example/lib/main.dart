import 'package:flutter/material.dart';
import 'package:range_slider_flutter/range_slider_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  double _lowerValue = 50;
  double _upperValue = 180;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Container(
          margin: EdgeInsets.only(top: 20, left: 20, right: 20),
          alignment: Alignment.centerLeft,
          child: RangeSliderFlutter(
            // key: Key('3343'),
            values: [_lowerValue, _upperValue],
            rangeSlider: true,
            tooltip: RangeSliderFlutterTooltip(
              alwaysShowTooltip: true,
            ),
            max: 20000,
            textPositionTop: -100,
            handlerHeight: 30,
            trackBar: RangeSliderFlutterTrackBar(
              activeTrackBarHeight: 10,
              inactiveTrackBarHeight: 10,
              activeTrackBar: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red,
              ),
              inactiveTrackBar: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey,
              ),
            ),

            min: 0,
            fontSize: 15,

            onDragging: (handlerIndex, lowerValue, upperValue) {
              _lowerValue = lowerValue;
              _upperValue = upperValue;
              setState(() {});
            },
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
