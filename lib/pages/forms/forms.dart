import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  FormWidget({Key key}) : super(key: key);
  _formsState createState() => new _formsState();
}

class _formsState extends State<FormWidget> {
  TextEditingController _textController = new TextEditingController();
  TextEditingController _textControllerVal1 = new TextEditingController();
  TextEditingController _textControllerVal2 = new TextEditingController();
  GlobalKey _formKey = new GlobalKey<FormState>();
  final FocusNode focusNode1 = new FocusNode();
  final FocusNode focusNode2 = new FocusNode();
  FocusScopeNode focusScopeNode;
  @override
  void initState() {
    super.initState();
    // 监听输入变化
    _textController.addListener(() => {print(_textController.text)});
    // 监听焦点变化
    focusNode1.addListener(() => {print(focusNode1.hasFocus)});
  }

  @override
  void dispose() {
    super.dispose();
    _textController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text('forms'),
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 50.0,
            padding: const EdgeInsets.fromLTRB(15.0, 0, 0, 0),
            alignment: Alignment.centerLeft,
            child: Text(
              'TextField',
              style: TextStyle(fontSize: 25.0),
            ),
          ),
          new TextField(
            decoration: InputDecoration(
              labelText: '用户名',
              hintText: '用户名或者邮箱',
              prefixIcon: Icon(Icons.person),
              labelStyle: TextStyle(color: Colors.grey[300], fontSize: 25.0),
              hintStyle: TextStyle(color: Colors.grey[300]),
            ),
          ),
          new Container(
            margin: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
            child: new TextField(
              decoration: InputDecoration(
                  labelText: 'password',
                  hintText: 'password',
                  prefixIcon: Icon(Icons.lock),
                  helperText: 'password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  )),
              keyboardType: TextInputType.number,
              obscureText: false,
              maxLines: 1,
            ),
          ),
          new Container(
            padding: const EdgeInsets.fromLTRB(15.0, 0, 0, 0),
            alignment: Alignment.centerLeft,
            child: Text(
              'TextField Width Controler onChange监听文本',
              style: TextStyle(fontSize: 25.0),
              maxLines: 2,
            ),
          ),
          new Container(
            margin: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
            child: new TextField(
              decoration: InputDecoration(
                  labelText: 'password',
                  hintText: 'password',
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  )),
              keyboardType: TextInputType.number,
              obscureText: false,
              maxLines: 1,
              onChanged: (value) {
                print("$value");
              },
            ),
          ),
          new Container(
            padding: const EdgeInsets.fromLTRB(15.0, 0, 0, 0),
            alignment: Alignment.centerLeft,
            child: Text(
              'TextField Width Controler controller监听文本',
              style: TextStyle(fontSize: 25.0),
              maxLines: 2,
            ),
          ),
          new Container(
            margin: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
            child: new TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  )),
              obscureText: false,
              maxLines: 1,
              controller: _textController,
            ),
          ),
          new Container(
            padding: const EdgeInsets.fromLTRB(15.0, 0, 0, 0),
            alignment: Alignment.centerLeft,
            child: Text(
              'TextField Width Controler 焦点',
              style: TextStyle(fontSize: 25.0),
              maxLines: 2,
            ),
          ),
          new Container(
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
            child: new TextField(
              decoration: InputDecoration(prefixIcon: Icon(Icons.phone)),
              focusNode: focusNode1,
            ),
          ),
          new Container(
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
            child: new TextField(
              decoration: InputDecoration(prefixIcon: Icon(Icons.phone)),
              focusNode: focusNode2,
            ),
          ),
          Builder(
            builder: (ctx) {
              return Column(
                children: <Widget>[
                  RaisedButton(
                    child: Text('激活焦点'),
                    onPressed: () {
                      if (focusScopeNode == null) {
                        focusScopeNode = FocusScope.of(context);
                      }
                      focusScopeNode.requestFocus(focusNode1);
                    },
                  ),
                  RaisedButton(
                    child: Text('转移焦点'),
                    onPressed: () {
                      if (focusScopeNode == null) {
                        focusScopeNode = FocusScope.of(context);
                      }
                      focusScopeNode.requestFocus(focusNode2);
                    },
                  ),
                  RaisedButton(
                    child: Text('关闭键盘'),
                    onPressed: () {
                      focusNode1.unfocus();
                      focusNode2.unfocus();
                    },
                  )
                ],
              );
            },
          ),
          new Container(
            height: 50.0,
            padding: const EdgeInsets.fromLTRB(15.0, 0, 0, 0),
            alignment: Alignment.centerLeft,
            child: Text(
              'TextField 自定义外观',
              style: TextStyle(fontSize: 25.0),
            ),
          ),
          Theme(
            data: Theme.of(context).copyWith(
                primaryColor: Colors.red, // 主色
                hintColor: Colors.red, // 提示文本颜色
                cursorColor: Colors.red, // 光标 textField
                highlightColor: Colors.red,
                inputDecorationTheme: InputDecorationTheme(
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red)), // 边框
                    disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)), // 只读输入框边框
                    //enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.green)), // 可输入边框，会覆盖border字段
                    //errorBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.black)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.red)))),
            child: new TextField(
              enabled: true,
              decoration: InputDecoration(
                labelText: '用户名',
                hintText: '用户名或者邮箱',
                prefixIcon: Icon(Icons.person),
                //errorText: 'error'
              ),
            ),
          ),
          new Container(
            height: 50.0,
            padding: const EdgeInsets.fromLTRB(15.0, 0, 0, 0),
            alignment: Alignment.centerLeft,
            child: Text(
              'TextField 通过formField校验表单',
              style: TextStyle(fontSize: 25.0),
            ),
          ),
          Form(
            key: _formKey,
            autovalidate: true,
            child: new Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                new TextFormField(
                  autocorrect: true,
                  validator: (value) {
                    return value.trim().length > 0 ? null : '用户名不能为空';
                  },
                  decoration: InputDecoration(
                    labelText: '用户名',
                    hintText: '用户名或者邮箱',
                    prefixIcon: Icon(Icons.person),
                    labelStyle:
                        TextStyle(color: Colors.grey[300], fontSize: 25.0),
                    hintStyle: TextStyle(color: Colors.grey[300]),
                  ),
                ),
                new TextFormField(
                  validator: (value){
                    return value.trim().length > 6 ? null : '密码长度大于6';
                  },
                  decoration: InputDecoration(
                      labelText: 'password',
                      hintText: 'password',
                      prefixIcon: Icon(Icons.lock),
                      helperText: 'password',
                  ),
                  keyboardType: TextInputType.number,
                  obscureText: false,
                  maxLines: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: RaisedButton(
                          child: Text('登陆'),
                          color: Colors.red,
                          textColor: Colors.white,
                          onPressed: () {
                            if((_formKey.currentState as FormState).validate()){
                              print('通过验证');
                            }
                          },
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
