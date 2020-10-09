import 'package:flutter/material.dart';


class ContadorPage extends StatefulWidget  {

  @override
  createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {

  final _styleText = new TextStyle(fontSize: 25);

  int _conteo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Statefull'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Text('Número de taps', style: _styleText),
            Text( '$_conteo',style: _styleText)
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ),
      ),
      floatingActionButton: _createButtons(),
    );
    
  }


  Widget _createButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30),
        FloatingActionButton( onPressed: _reset, child: Icon(Icons.exposure_zero)),
        Expanded(child: SizedBox()),
        FloatingActionButton( onPressed: _remove, child: Icon(Icons.remove)),
        SizedBox(width: 5.0),
        FloatingActionButton( onPressed: _addOn, child: Icon(Icons.add)),
      ]
    );
    
    
    
  }

  void _addOn() {
    setState(() => _conteo++ ;
  }

  void _remove() {
    setState(() => _conteo-- );
  }

  void _reset() {
    setState(() => _conteo = 0 );
  }
}