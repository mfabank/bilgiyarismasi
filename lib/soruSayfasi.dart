import 'package:bilgiyarismasi/testler.dart';
import 'package:flutter/material.dart';

class SoruSayfasi extends StatefulWidget {
  @override
  _SoruSayfasiState createState() => _SoruSayfasiState();
}

class _SoruSayfasiState extends State<SoruSayfasi> {
  List<Widget> secimler = [];

  Testler test1 = Testler();

  int gecerliIndex = 0;


  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                test1.seviye1test[gecerliIndex].soru,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Wrap(
          direction: Axis.horizontal,
          spacing: 10,
          children: secimler,
        ),
        Expanded(
          flex: 1,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.0),
              child: Row(children: <Widget>[
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: RaisedButton(
                          padding: EdgeInsets.all(12),
                          textColor: Colors.white,
                          color: Colors.red[400],
                          child: Icon(
                            Icons.thumb_down,
                            size: 30.0,
                          ),
                          onPressed: () {
                            setState(() {
                              test1.seviye1test[gecerliIndex].yanit == false ? secimler.add(yanlisIcon) : secimler.add(dogruIcon);
                              gecerliIndex++;
                            });
                          },
                        ))),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: RaisedButton(
                          padding: EdgeInsets.all(12),
                          textColor: Colors.white,
                          color: Colors.green[400],
                          child: Icon(Icons.thumb_up, size: 30.0),
                          onPressed: () {
                            setState(() {
                              test1.seviye1test[gecerliIndex].yanit == true ? secimler.add(dogruIcon) : secimler.add(yanlisIcon);
                              gecerliIndex++;
                            });
                          },
                        ))),
              ])),
        )
      ],
    );
  }
}

const Icon dogruIcon = Icon(Icons.done_outline,color: Colors.green,size: 30,);
const Icon yanlisIcon = Icon(Icons.cancel,color: Colors.red,size: 30,);
