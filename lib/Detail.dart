import 'package:flutter/material.dart';

class Detail extends StatelessWidget {

  final String judulDetail;
  final String isiDetail;

  const Detail({Key key, this.judulDetail, this.isiDetail}) : super(key: key);

  goBack(BuildContext context) {

    Navigator.pop(context);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
        title: Text(''),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              judulDetail,
              style: TextStyle(color: Colors.cyan, fontSize: 20.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              isiDetail,
              style: TextStyle(color: Colors.green, fontSize: 15.0),
            ),
          ),
        ],
      ),

    );
  }

}
