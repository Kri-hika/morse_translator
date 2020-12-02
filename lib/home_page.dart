import 'package:flutter/material.dart';
import 'translator_Page_1.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner:false,
      home: SafeArea(
        child: Container(
          decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Theme.of(context).colorScheme.brightness == Brightness.light
                  ? 'assets/images/home_page_light.PNG'
                  : 'assets/images/home_page_dark.png',),fit: BoxFit.contain)),
         child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              children: [
               Center(
                 child: Padding(
                   padding: const EdgeInsets.only(top: 600.0),
                   child: MaterialButton(
                     onPressed: () => Navigator.pushReplacement(
                         context,
                         MaterialPageRoute(
                             builder: (BuildContext ctx) =>
                                 TranslatorPage1())),
                     color: Theme.of(context).colorScheme.onSurface,
                     height: 70.0,
                     minWidth: 200.0,
                     shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(30.0),
                     ),
                     child:Text(
                          'Start',
                          style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w500,
                            // ignore: deprecated_member_use
                            color: Theme.of(context).textTheme.title.color,
                          ),
                          textAlign:TextAlign.center,
                          ),
                       ),
                 ),
               ),
                 ],
           ),
      ),
    )
    )
    );
  }
}
