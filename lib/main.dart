import 'package:flutter/material.dart';
import 'package:myflutterapp/dateTypeChart.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late SfRangeValues _values;
  @override
  void initState() {
    _values = SfRangeValues(DateTime(2014, 01, 01), DateTime(2018, 01, 01));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: SfRangeSelector(
          child: buildChart(),
          initialValues: _values,
          min: DateTime(2012, 01, 01),
          max: DateTime(2020, 01, 01),
          showLabels: true,
          interval: 2,
          showTicks: true,
          dateFormat: DateFormat.y(),
          dateIntervalType: DateIntervalType.years,
          enableTooltip: true,
          onChanged: (SfRangeValues newValues) {
            print(newValues);
          },
          stepDuration: SliderStepDuration(years: 1),
        ),
      ),
    ));
  }
}
