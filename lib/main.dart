import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  build(BuildContext context) => MaterialApp(
    title:'Elevated Button Example',
    home:Scaffold(
      appBar:AppBar(title:const Text('Elevated Button Example'),),
      body:ElevatedButtonExampleWidget(),
    ),
  );
}

class ElevatedButtonExampleWidget extends StatefulWidget{
  @override
  createState() => _ElevatedButtonExampleWidgetState();
}

class _ElevatedButtonExampleWidgetState extends State<ElevatedButtonExampleWidget>{
  var label = 'ボタンをクリックしてください';
  @override
  build(BuildContext context) => Center(
    child:Column(
      children:[
        SizedBox(height:15,),
        ElevatedButton(
          child:const Text('Elevated Button'),
          onPressed:() => setState(() => label = '獄激辛ペヤングはカレーが一番おいしいです。'),
          onLongPress:() => setState(() => label = 'ボタンをクリックしてください'),
        ),
        SizedBox(height:10,),
        Text('$label'),
      ],
    ),
  );
}
