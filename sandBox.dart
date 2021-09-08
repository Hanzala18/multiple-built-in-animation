import 'package:flutter/material.dart';

class SandBox extends StatefulWidget {
  @override
  _SandBoxState createState() => _SandBoxState();
}

class _SandBoxState extends State<SandBox> {
  double _margin = 20;
  double _opacity = 1;
  double _width = 200;
  Color _color = Colors.blue;
  double _height = 500;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: Duration(seconds: 1),
        margin: EdgeInsets.all(_margin),
        width: _width,
        color: _color,
        height: _height,
        curve: Curves.ease,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 10.0)),
            RaisedButton(
              child: Text("Animate margin"),
              onPressed: () => setState(() => _margin = 60),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            RaisedButton(
              child: Text("Animate color"),
              onPressed: () => setState(() => _color = Colors.deepOrangeAccent),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            RaisedButton(
              child: Text("Animate width"),
              onPressed: () => setState(() => _width = 500),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            RaisedButton(
              child: Text("Animate Opacity"),
              onPressed: () => setState(() => _opacity = 0),
            ),
            AnimatedOpacity(
              duration: Duration(seconds: 1),
              opacity: _opacity,
              child: Text(
                "Hide me",
                style: TextStyle(color: Colors.white),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            RaisedButton(
              child: Text("Animate height"),
              onPressed: () => setState(() => _height = 400),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            RaisedButton(
              child: Text("Animate back upwidth"),
              onPressed: () => setState(() => _width = 200),
            ),
          ],
        ),
      ),
    );
  }
}
