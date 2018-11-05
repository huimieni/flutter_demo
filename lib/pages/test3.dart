import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:flutter_app/gotopage2.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LearnButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LearnButton();
  }
}

class _LearnButton extends State<LearnButton> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
        children: <Widget>[
          new Expanded(
              child: new Center(
                child: new RaisedButton(
                  onPressed: () {
//                    Fluttertoast.showToast(
//                        msg: "This is Center Short Toast",
//                        toastLength: Toast.LENGTH_SHORT,
//                        gravity: ToastGravity.BOTTOM,
//                        timeInSecForIos: 1);
                    Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context){
                      return SampleAppPage();
                    }));
                  },
                  color: Colors.black,
                  //按钮的背景颜色
                  padding: EdgeInsets.all(50.0),
                  //按钮距离里面内容的内边距
                  child: new Text('B'),
                  textColor: Colors.white,
                  //文字的颜色
                  textTheme: ButtonTextTheme.normal,
                  //按钮的主题
                  onHighlightChanged: (bool b) {
                    //水波纹高亮变化回调
                  },
                  disabledTextColor: Colors.black54,
                  //按钮禁用时候文字的颜色
                  disabledColor: Colors.black54,
                  //按钮被禁用的时候显示的颜色
                  highlightColor: Colors.yellowAccent,
                  //点击或者toch控件高亮的时候显示在控件上面，水波纹下面的颜色
                  splashColor: Colors.white,
                  //水波纹的颜色
                  colorBrightness: Brightness.light,
                  //按钮主题高亮
                  elevation: 10.0,
                  //按钮下面的阴影
                  highlightElevation: 10.0,
                  //高亮时候的阴影
                  disabledElevation: 10.0, //按下的时候的阴影
                  // shape:,
                  // 设置形状LearnMaterial中有详解
                ),
              ),
              flex: 3),
          new Expanded(child: new Text("1234567890"), flex: 1)
        ],
      ),
    );
  }
}
