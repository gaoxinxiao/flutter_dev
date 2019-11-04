import 'package:flutter/material.dart';
// import './list.dart'; //list view组件 与官网一样
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '登录',
      theme: ThemeData(primaryColor: Colors.white),
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(color: Colors.grey),
          title: Text('登录'),
        ),
        body: Input(),
      ),
    );
  }
}

class Input extends StatefulWidget {
  @override
  _InputState createState() => _InputState();
}

class _InputState extends State<Input> {
  final TextEditingController _phone = new TextEditingController();
  final TextEditingController _yzm = new TextEditingController();

  @override
  Widget build(BuildContext context) {
  
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 20.0, 0, 0),
      child: Column(
        children: <Widget>[
          Container(
            child: Row(children: [
              Container(
                padding: const EdgeInsets.fromLTRB(8.0, 4.0, 0, 0),
                child: Text(
                  '手机号：',
                  style: new TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
              Container(
                  width: 300,
                  child: Theme(
                    //设置主题 边框线等等。。。
                    data: new ThemeData(primaryColor: Colors.green),
                    child: TextField(
                      controller: _phone,
                      keyboardType: TextInputType.phone, //键盘类型
                      cursorColor: Colors.grey, //光标颜色
                      decoration: InputDecoration(hintText: '请输入手机号'),
                    ),
                  )),
            ]),
          ),
          Container(
            child: Row(children: [
              Container(
                padding: const EdgeInsets.fromLTRB(8.0, 4.0, 0, 0),
                child: Text(
                  '验证码：',
                  style: new TextStyle(color: Colors.black, fontSize: 18),
                ),
              ),
              Container(
                  width: 300,
                  child: Theme(
                    data: new ThemeData(primaryColor: Colors.green),
                    child: TextField(
                      controller: _yzm,
                      cursorColor: Colors.grey,
                      keyboardType: TextInputType.number, //键盘类型
                      decoration: InputDecoration(
                        hintText: '请输入验证码',
                      ),
                    ),
                  )),
            ]),
          ),
          Container(
            width: 200,
            margin: const EdgeInsets.fromLTRB(0.0, 20.0, 0, 0),
            child: RaisedButton(
              onPressed: () {
                var yzm = _yzm.text;
                var phone = _phone.text;
                print('$yzm');
                print('$phone');
             
              },
              child: Text('登录'),
              textColor: Colors.white,
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4.0)),
            ),
          )
        ],
      ),
    );
  }
}
