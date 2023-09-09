import 'package:cw7/screens/note_screen.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var noteController = TextEditingController();
  int color = 0xffffffff;

  // borders
  double borderWidth1 = 0;
  double borderWidth2 = 0;
  double borderWidth3 = 0;
  double borderWidth4 = 0;

  void updateColor({required int newCOlor}) {
    color = newCOlor;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('دفتر اليوميات', ),
      ),
      body: Container(
        color: Color(color),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'اختر اللون المفضل',
                
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    updateColor(newCOlor: 0xffFEAB40);
                    borderWidth1 = 2;
                    borderWidth2 = 0;
                    borderWidth3 = 0;
                    borderWidth4 = 0;
                  },
                  child: Container(
                    margin: EdgeInsets.all(5),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Color(0xffFEAB40),
                      borderRadius: BorderRadius.circular(100),
                      border:
                          Border.all(color: Colors.white, width: borderWidth1),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    updateColor(newCOlor: 0xffFF5253);
                    borderWidth2 = 2;
                    borderWidth1 = 0;
                    borderWidth3 = 0;
                    borderWidth4 = 0;
                  },
                  child: Container(
                    margin: EdgeInsets.all(5),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Color(0xffFF5253),
                      borderRadius: BorderRadius.circular(100),
                      border:
                          Border.all(color: Colors.white, width: borderWidth2),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    updateColor(newCOlor: 0xff438AFF);
                    borderWidth3 = 2;
                    borderWidth1 = 0;
                    borderWidth2 = 0;
                    borderWidth4 = 0;
                  },
                  child: Container(
                    margin: EdgeInsets.all(5),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Color(0xff438AFF),
                      borderRadius: BorderRadius.circular(100),
                      border:
                          Border.all(color: Colors.white, width: borderWidth3),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    updateColor(newCOlor: 0xff69F0AE);
                    borderWidth4 = 2;
                    borderWidth1 = 0;
                    borderWidth2 = 0;
                    borderWidth3 = 0;
                  },
                  child: Container(
                    margin: EdgeInsets.all(5),
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Color(0xff69F0AE),
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                            color: Colors.white, width: borderWidth4)),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Center(
                child: Text(
                  'ماذا تريد أن تكتب؟',
                  
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: Color.fromARGB(255, 0, 0, 0))),
              child: TextField(
                controller: noteController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
                style: TextStyle(color: Color(0xff16213E)),
              ),
            ),
            Container(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(textStyle: const TextStyle()),
                onPressed: () {
                  print(noteController.text);

                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Note(
                      text: noteController.text,
                      bgColor: color,
                    );
                  }));
                },
                child: Container(
                  padding: EdgeInsets.fromLTRB(20, 2, 20, 2),
                  child: Text('حفظ',
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}