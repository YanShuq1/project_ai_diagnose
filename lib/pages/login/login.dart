import 'package:flutter/material.dart';
import 'package:project_ai_diagnose/widgets/gender_radio_button.dart';
import 'package:project_ai_diagnose/widgets/single_check_box.dart';


class LogingPage extends StatefulWidget {
  @override
  _LogingPageState createState() => _LogingPageState();
}

class _LogingPageState extends State<LogingPage> {
  String? selectedGender ; // 默认性别
  String? selectedAge; // 选中的年龄

  List<String> ageList = List.generate(151, (int index) => '$index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFDFDFDFF),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 40,
                ),
                Text(
                  "我的信息",
                  style: TextStyle(fontSize: 28, color: Colors.black),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            // 账号输入框
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Card(
                elevation: 5,
                color: Color(0xFFFDF8F8),
                shadowColor: Colors.black,
                child: Container(
                  height: 45,
                  width: 311,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: '    用户名',
                      labelStyle: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
            // 性别单选按钮
            Wrap(
              children: [Card(
                elevation: 5,
                child: Container(
                  width: 170,
                  height: 45,
                  child: GenderRadioButtons(),
                  ),
                ),


            // 年龄选择框
                Card(
                elevation: 5,
                child: Container(
                  width: 132,
                  height: 45,
                  padding: EdgeInsets.all(10),
                  child: DropdownButton<String>(
                    value: selectedAge,
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedAge = newValue;
                      });
                    },
                    items: ageList.map((String age) {
                      return DropdownMenuItem<String>(
                        value: age,
                        child: Text(age),
                      );
                    }).toList(),
                    hint: Text('选择年龄'),
                  ),
                ),
              ),
            ],),
            Wrap(
              spacing: 10, // 间距
              children: [
                Card(
                  elevation: 5,
                  child: Container(
                    width: 146,
                    height: 45,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: '    身高/cm',
                        labelStyle: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 5,
                  child: Container(
                    width: 146,
                    height: 45,
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: '    体重/kg',
                        labelStyle: TextStyle(fontSize: 15),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Card(
                elevation: 5,
                color: Color(0xFFFDF8F8),
                shadowColor: Colors.black,
                child: Container(
                  height: 45,
                  width: 311,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: '    婚育史',
                      labelStyle: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Card(
                elevation: 5,
                color: Color(0xFFFDF8F8),
                shadowColor: Colors.black,
                child: Container(
                  height: 45,
                  width: 311,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: '    患病史',
                      labelStyle: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Card(
                elevation: 5,
                color: Color(0xFFFDF8F8),
                shadowColor: Colors.black,
                child: Container(
                  height: 45,
                  width: 311,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: '    药物过敏原',
                      labelStyle: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ),
            ),
            Card(
              elevation: 5,
              color: Color(0xFFFDF8F8),
              shadowColor: Colors.black,
              child: Wrap(
                children: [
                  Container(
                    height: 45,
                    width: 170,
                    alignment: Alignment.center,
                    child: Text("   是否患有家族遗传疾病",
                      style: TextStyle(
                      fontSize: 15,
                    ),
              ),
                  ),
                 SizedBox(width: 45,),
                 Container(
                   height: 30,
                     width: 100,
                     alignment: Alignment.center,
                     child: SingleCheckbox()
                 ),
                ],
              ),
            ),
            // 登录按钮
            ElevatedButton(
              onPressed: () {
                // 在这里执行导航操作，使用Navigator.push等方式
                Navigator.pushNamed(context, "/home");
              },
              child: Text("提交"),
            ),
          ],
        ),
      ),
    );
  }
}

