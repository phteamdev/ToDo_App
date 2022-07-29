import 'package:flutter/material.dart';
import 'constants/constants.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainApp(),
    );
  }
}

class MainApp extends StatefulWidget {
  MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

//set state
class _MainAppState extends State<MainApp> {
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;
  final todoController = TextEditingController();
  String TodoText1 = '';
  String TodoText2 = '';
  String TodoText3 = '';
  String TodoText4 = '';

  //button row state
  Widget _ButtonRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Honey,
            ),
            onPressed: () {
              final Todo1 = todoController.text;
              setState(() {
                TodoText1 = Todo1;
              });
            },
            child: Icon(
              Icons.arrow_right_alt_sharp,
              size: 40.0,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Honey,
            ),
            onPressed: () {
              final Todo2 = todoController.text;
              setState(() {
                TodoText2 = Todo2;
              });
            },
            child: Icon(
              Icons.arrow_right_alt_sharp,
              size: 40.0,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Honey,
            ),
            onPressed: () {
              final Todo3 = todoController.text;
              setState(() {
                TodoText3 = Todo3;
              });
            },
            child: Icon(
              Icons.arrow_right_alt_sharp,
              size: 40.0,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Honey,
            ),
            onPressed: () {
              final Todo4 = todoController.text;
              setState(() {
                TodoText4 = Todo4;
              });
            },
            child: Icon(
              Icons.arrow_right_alt_sharp,
              size: 40.0,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1.0,
        backgroundColor: DarkBlue,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'ToDo App',
              style: TextStyle(
                fontSize: 24.0,
              ),
            ),
            SizedBox(
              width: 10.0,
            ),
            Icon(Icons.task_alt_outlined)
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: lightblue,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 60.0,
            ),
            // what shuold i do?
            Container(
              width: 300.0,
              height: 40.0,
              // textfiled todo
              child: TextField(
                controller: todoController,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: DarkBlue,
                ),
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: ('What should i do?'),
                  hintStyle: TextStyle(
                      fontSize: 30.0,
                      color: Sangira,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            //button row
            _ButtonRow(),
            SizedBox(
              height: 50.0,
            ),
            //to do text column
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        TodoText1,
                        style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: DarkBlue),
                      ),
                      Checkbox(
                        shape: CircleBorder(),
                        side: BorderSide(color: Sangira, width: 3.0),
                        value: isChecked1,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked1 = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 35.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        TodoText2,
                        style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: DarkBlue),
                      ),
                      Checkbox(
                        shape: CircleBorder(),
                        side: BorderSide(color: Sangira, width: 3.0),
                        value: isChecked2,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked2 = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 35.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        TodoText3,
                        style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: DarkBlue),
                      ),
                      Checkbox(
                        shape: CircleBorder(),
                        side: BorderSide(color: Sangira, width: 3.0),
                        value: isChecked3,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked3 = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 35.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        TodoText4,
                        style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: DarkBlue),
                      ),
                      Checkbox(
                        shape: CircleBorder(),
                        side: BorderSide(color: Sangira, width: 3.0),
                        value: isChecked4,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked4 = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
