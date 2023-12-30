import 'package:flutter/material.dart';

class ScrollableStackScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height; //هذا هو الشيء الرئيسي في الكود بأكمله .

    return Scaffold(
      appBar: AppBar(
        title: Text('Scrollable Stack Example'),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: screenHeight,
          child: Stack(
            children: [
            
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: screenHeight * 1.5,
                  color: Colors.blue,
                  child: Center(
                    child: Text('Stack Child 1'),
                  ),
                ),
              ),
              Positioned(
                top: screenHeight * 1.2,
                left: screenHeight * 0.1,
                child: Container(
                  height: screenHeight * 0.2,
                  width: screenHeight * 0.2,
                  color: Colors.red,
                  child: Center(
                    child: Text('Stack Child 2'),
                  ),
                ),
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ScrollableStackScreen(),
  ));
}
