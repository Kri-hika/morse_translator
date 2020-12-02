import 'package:flutter/material.dart';

class FactsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner:false,
        home : Scaffold(
          appBar : AppBar(
            backgroundColor: Theme.of(context).appBarTheme.color,
            // ignore: deprecated_member_use
            title:Padding(padding: const EdgeInsets.fromLTRB(50.0, 10.0, 2.0, 4.0),child: Text('Facts Page',style: TextStyle(color: Theme.of(context).textTheme.title.color, fontSize: 25.0),)),
            leading:  IconButton(
              // ignore: deprecated_member_use
              icon: Icon(Icons.arrow_back_ios, size: 30,color : Theme.of(context).textTheme.title.color,), // change this size and style
              onPressed: () => Navigator.pop(context),
            ),
          ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                Theme.of(context).colorScheme.secondary,
                Theme.of(context).colorScheme.onSecondary,
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
                    child: Container(

                    // ignore: deprecated_member_use
                    child: Text('•	The first message sent by Morse travelled from Washington to Baltimore in 1844. The message read ''What hath God wrought''\n\n'
                        '• People who have been stranded have turned to Morse code when they are in dire need of rescue. History has shown that using Morse code to signal SOS (…—…) can save your life and will continue to save more, if the everyday person learns the code. The fact, plain and simple, is that using Morse code, to send distress signals or messages, can save your life. You can be the best survivalist in the world, but if you do not have Morse code in your repertoire, then you are missing a vital component\n\n'
                        '•	At Pearl Harbor on December 7, 1941 when the men of the United States Navy were trapped inside the sinking ships docked at the Harbor. Many men tried using Morse code to be rescued and it proved successful as 300 men were saved from the USS Oklahoma.\n\n'
                        '•	In 2006, when an amateur sailor, who was traveling to Thorneham Marina from Emsworth in Hampshire, England, noticed that his 28 foot boat had started to take on water. The sailor had no emergency equipment aboard the ship except for a flashlight and the knowledge of Morse code. He started flashing his SOS signal and was spotted by a coast guard sailor, from nearby Hayling Island. The amateur boater was picked up, shortly thereafter\n\n'
                        '•	Perhaps the most notable modern use of Morse code was by Navy pilot Jeremiah Denton, while he was a prisoner of war in Vietnam. In 1966, about one year into a nearly eight-year imprisonment, Denton was forced by his North Vietnamese captors to participate in a video interview about his treatment. While the camera focused on his face, he blinked the Morse code symbols for “torture”, confirming for the first time US fears about the treatment of service members held captive in North Vietnam.\n\n'
                        '•	The speed at which a message is sent in Morse code is normally given in words per minute (WPM). The word "Paris" (including the space after it) is used as the length of a standard word. How long does this take? (Answer is given at the end of the article). An experienced Morse code operator can send and receive messages at a rate of 20-30 WPM.',
                      style: TextStyle(color: Colors.white, fontSize: 20.0,height: 2),),
                    ),
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
