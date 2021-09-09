import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Elevated Button Example',
      home: Scaffold(
        appBar: AppBar(title: const Text('Elevated Button Example'),),
        body: ElevatedButtonExampleWidget(),
      ),
    );
  }
}

class ElevatedButtonExampleWidget extends StatefulWidget{
  @override
  _ElevatedButtonExampleWidgetState createState() => _ElevatedButtonExampleWidgetState();
}

class _ElevatedButtonExampleWidgetState extends State<ElevatedButtonExampleWidget>{
  var label = 'ボタンをクリックしてください';
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          SizedBox(height: 15,),
          ElevatedButton(
            child: const Text('Elevated Button'),
            onPressed: () => setState(() => label = '獄激辛ペヤングはカレーが一番おいしいです。'),
            onLongPress: () => setState(() => label = 'ボタンをクリックしてください'),
          ),
          SizedBox(height: 10,),
          Text('$label'),
        ],
      ),
    );
  }
}
