import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TranslationInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner:false,
        home : Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          appBar : AppBar(
            backgroundColor: Theme.of(context).appBarTheme.color,
            // ignore: deprecated_member_use
            title:Center(child: Text('The Translations!',style: TextStyle(color: Theme.of(context).textTheme.title.color, fontSize: 25.0),)),
            leading:  IconButton(
              // ignore: deprecated_member_use
              icon: Icon(Icons.arrow_back_ios, size: 30,color:Theme.of(context).textTheme.title.color,),
              onPressed: () => Navigator.pop(context),
            ),),
          body: Padding(
            padding: const EdgeInsets.only(top: 50.0),
          child: SingleChildScrollView(
          child: Column(
          children: [
          SizedBox(
            height: 5.0,
          ),
          Padding(
              padding: EdgeInsets.only(left: 15.0,right: 10.0),
              child:Column(
              children: [
                Image.asset(
                  Theme.of(context).colorScheme.brightness == Brightness.light
                      ? 'assets/images/translation2_light.png'
                      : 'assets/images/translation2_dark.png',
                  fit: BoxFit.scaleDown,
                width: 700.0,
                height: 600.0,
              ),
              Image.asset(
                Theme.of(context).colorScheme.brightness == Brightness.light
                    ? 'assets/images/translation1_light.png'
                    : 'assets/images/translation1_dark.png',
                fit: BoxFit.scaleDown,
                width: 700.0,
                height: 600.0,
                ),
             ],
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
