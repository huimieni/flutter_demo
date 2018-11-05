import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/bean/testdata.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class GotoPage extends StatefulWidget {
  GotoPage({Key key}) : super(key: key);

  @override
  _GotoPageState createState() => _GotoPageState();
}

class _GotoPageState extends State<GotoPage> {
  String label = 'Hello World';
  String aUrl =
      'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=4187594898,3936818537&fm=26&gp=0.jpg';
  bool isShow = false;

  @override
  void initState() {
    super.initState();
  }

  void _updateText(String u) {
    setState(() {
      // update the text
      label = u;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('我是新页面--'),
        backgroundColor: Colors.indigo,
      ),
      body: Stack(
        children: <Widget>[
          RaisedButton(
            onPressed: () async {
              if (isShow) return;
              setState(() {
                // update the text
                isShow = true;
              });
//          Navigator.pop(context);
              var dio = new Dio();
              var url =
                  "https://api.github.com/users/huimieni/received_events?page=1&per_page=20";
              print(url);
              Response<List<dynamic>> response = await dio.get(url);
              List<dynamic> tmp = response.data;
              TestData data = TestData.fromJson(tmp[0]);
              print(data.actor.avatarUrl);
              _updateText(data.actor.avatarUrl);
              setState(() {
                // update the text
                isShow = false;
                aUrl = data.actor.avatarUrl;
              });
            },
            child: Text(label),
          ),
          Center(child: Image.network(aUrl)),
          isShow
              ? SpinKitThreeBounce(color: Colors.red)
              : Center(child: Text("未开始加载"))
        ],
      ),
    );
  }
}
