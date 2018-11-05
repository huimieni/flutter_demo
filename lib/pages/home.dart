import 'package:flutter/material.dart';
import 'package:flutter_app/gotopage.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  List<String> test = [
    "https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1540623685&di=f1cfcbb8f61d09dc41d6d0ad8e4158ff&src=http://imgsrc.baidu.com/imgad/pic/item/3ac79f3df8dcd1004a3704d4788b4710b8122f98.jpg",
    "https://ss0.bdstatic.com/94oJfD_bAAcT8t7mm9GUKT-xh_/timg?image&quality=100&size=b4000_4000&sec=1540793310&di=f31a1c37fc38aa23d27fde9380f217fc&src=http://img1c.xgo-img.com.cn/pics/1503/1502063.jpg",
    "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1540803394243&di=76f87ff707c705c59e9aaa9992508600&imgtype=0&src=http%3A%2F%2Fimg1a.xgo-img.com.cn%2Fpics%2F1532%2F1531981.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('首页'),
        ),
        body: new ListView(
          children: <Widget>[
            new Text("===================banner===================="),
            new Text("====================****====================="),
            new Text("=====================**======================"),
            new Text("============================================="),
            getBanner(),
            new Text("============================================="),
            new Text("============================================="),
            new Text("============================================="),
            new Text("============================================="),
            getBanner(),
            new Text("============================================="),
            new Text("============================================="),
            new Text("============================================="),
            getBanner(),
          ],
        ));
  }

  getBanner() {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 200.0,
        child: Swiper(
          itemBuilder: _swiperBuilder,
          itemCount: 3,
          pagination: new SwiperPagination(
              builder: DotSwiperPaginationBuilder(
            color: Colors.black54,
            activeColor: Colors.white,
          )),
//            control: new SwiperControl(),
          scrollDirection: Axis.horizontal,
          autoplay: true,
          onTap: (index) =>
              Navigator.push(context, new MaterialPageRoute(builder: (BuildContext context){
                return GotoPage();
              }))        ));
  }

  Widget _swiperBuilder(BuildContext context, int index) {
    return (Image.network(
      test[index],
      fit: BoxFit.cover,
    ));
  }
}
