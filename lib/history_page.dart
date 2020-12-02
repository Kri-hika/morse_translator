import 'dart:ui';
import 'package:flutter/material.dart';


class HistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner:false,
        home : Scaffold(
          appBar : AppBar(
            backgroundColor: Theme.of(context).appBarTheme.color,
            // ignore: deprecated_member_use
            title:Padding(padding: const EdgeInsets.fromLTRB(50.0, 10.0, 2.0, 4.0),child: Text('History Page',style: TextStyle(color: Theme.of(context).textTheme.title.color, fontSize: 25.0),)),
            leading:  IconButton(
               // ignore: deprecated_member_use
               icon: Icon(Icons.arrow_back_ios, size: 30,color:Theme.of(context).textTheme.title.color,), // change this size and style
                   onPressed: () => Navigator.pop(context),
          ),),
            body: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: <Color>[
                    Theme.of(context).colorScheme.surface,

                    Theme.of(context).colorScheme.onPrimary,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 20.0,
                    ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(15.0,15.0, 10.0,0.0),
                      // ignore: deprecated_member_use
                      child: Text('•	In 1851, this code was modified to a variant known as the International Morse Code (also known as Continental Morse Code).\n\n'
                          '•	The two systems are similar, but the International Morse Code is simpler and more precise. For example, the original Morse Code used patterns of dots and spaces to represent a few of the letters, whereas the International Morse uses combinations of dots and short dashes for all letters. In addition, the International Morse Code uses dashes of constant length rather than the variable lengths used in the original Morse Code.\n\n'
                          '•	Morse code requires the time between dots and dash, between letters, and between words to be as accurate as possible.\n'
                          'A Dot takes - 1 unit of time\n'
                          'A Dash takes - 3 units of time\n'
                          'The pause between Dots/Dash - 1 unit of time\n'
                          'The pause between letters - 3 units of time\n'
                          'The pause between words - 7 units of time\n\n'
                          ''
                          '•	It helps to communicate with people having disabilities like blind people. It helped people with medical conditions that prevent them from speaking or communicating in other ways like people with limited motor skills.\n\n'
                          '•	In addition to this, many services that use radio communications still train their users in Morse code in case it is needed for last minute radio communications, and many radio beacons and similar items may use Morse code to identify themselves.\n\n'
                          '•	In these ways, the Morse code is still very much alive and widely used, even after more than 150 years since it was first used.\n\n'
                          '•	It also has many applications in the armed forces, aviation and radio industries.',
                          // ignore: deprecated_member_use
                          style: TextStyle(color: Theme.of(context).textTheme.title.color, fontSize: 20.0,height: 2.0)),
                  ),
                  ],
                ),
              ),
      ),
         ),
        ),
    );
  }
}
