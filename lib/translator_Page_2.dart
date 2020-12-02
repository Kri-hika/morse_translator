import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:morse/morse.dart';
import 'package:morse_translator/ThemePackage/AppStateNotifier.dart';
import 'package:provider/provider.dart';
import 'translator_Page_1.dart';
import 'facts_page.dart';
import 'Translations.dart';
import 'history_page.dart';

final _scaffoldKey = new GlobalKey<ScaffoldState>();

var a;
class TranslatorPage2 extends StatefulWidget {
  @override
  _TranslatorPage2State createState() => _TranslatorPage2State();
}

class _TranslatorPage2State extends State<TranslatorPage2> {
  var b;

  final inputcontroller = TextEditingController();

  var message = "";

  final Morse morse = new Morse();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner:false,
        home: Scaffold(
          backgroundColor: Theme.of(context).backgroundColor,
          resizeToAvoidBottomPadding: false,
          key: _scaffoldKey,
          appBar: AppBar(
            backgroundColor:  Theme.of(context).appBarTheme.color,
            centerTitle: true,
            // ignore: deprecated_member_use
            title: Text('Morse Translator', style: TextStyle(color: Theme.of(context).textTheme.title.color, fontSize: 25.0)),

            leading: IconButton(
              icon: Icon(Icons.menu, size: 30,color: Theme.of(context).iconTheme.color), // change this size and style
              onPressed: () => _scaffoldKey.currentState.openDrawer(),
            ),
          ),
          drawer: Drawer(
            child: Container(
                color: Theme.of(context).backgroundColor,
                child : ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                SizedBox(
                  height: 114.0,
                  child: DrawerHeader(
                    decoration: BoxDecoration(
                      color: Theme.of(context).appBarTheme.color,
                    ),
                    child: Text(
                      'Settings',
                      style: TextStyle(
                        // ignore: deprecated_member_use
                        color: Theme.of(context).textTheme.title.color,
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                ListTile(

                  leading: Switch(
                      value : Provider.of<AppStateNotifier>(context,listen: false).isDarkModeOn,
                      onChanged: (boolVal){
                        Provider.of<AppStateNotifier>(context,listen: false).updateTheme(boolVal);
                      }
                  ),
                  // ignore: deprecated_member_use
                  title: Text('Mode Switch',style: TextStyle(fontSize: 24.0, color: Theme.of(context).textTheme.title.color)),
                ),
                SizedBox(
                  height: 30.0,
                ),
                SizedBox(
                  height: 30.0,
                ),
                ListTile(
                    leading: Padding(padding:const EdgeInsets.only(left: 15.0),child: Icon(Icons.assignment, size: 36.0,color: Theme.of(context).iconTheme.color),),
                  // ignore: deprecated_member_use
                  title: Padding(padding: const EdgeInsets.only(left: 15.0),child: Text('Learn Morse Translation !',style: TextStyle(fontSize: 24.0,color: Theme.of(context).textTheme.title.color,)),),
                    onTap: () => Navigator.pushReplacement(context,
                        MaterialPageRoute(
                            builder: (BuildContext ctx) =>
                                TranslationInfo())),
                ),
              ],
            )
          ),
          ),
          body: Column(
            children: [
              SizedBox(
                height: 70.0,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Container(
                        width: 139.0,
                        height: 155.0,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(35.0, 10.0, 0.0, 0.0),
                          child: Text('English', style: TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.w500),),
                        ),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.secondary,
                          borderRadius: BorderRadius.all(Radius.circular(40.0),),
                          boxShadow: [
                            BoxShadow(color: Theme.of(context).colorScheme.secondary, spreadRadius: 1),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0,top: 40.0),
                      child: Container(
                      width: 384.0,
                      height: 362.0,
                      child: Container(
                        child : Stack(
                          children: [
                            TextField(
                              controller: inputcontroller,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                              ),
                              decoration: InputDecoration(
                                hintStyle: TextStyle(fontSize: 25,color: Colors.white),
                                hintText: 'Enter your Text',
                                suffixIcon: Container(child: IconButton(icon: Icon(Icons.cancel),
                                  onPressed: ()=>inputcontroller.clear(),)),
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.all(50),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 40.0,left: 270.0),
                              child: MaterialButton(
                                onPressed: (){
                                setState(() {
                                  b = morse.encode(inputcontroller.text);
                                  setState(() {
                                    message = b;
                                  });
                                });
                              },
                                child: Icon(Icons.send,size: 25,color: Colors.white),

                              ),
                            ),
                          ],
                        ),
                        alignment: Alignment.topCenter,
                      ),
                        decoration: BoxDecoration(
                          //color: HexColor('#DFDC3B'),
                          borderRadius: BorderRadius.all(Radius.circular(40.0)),
                          gradient: LinearGradient(
                            colors: <Color>[
                              Theme.of(context).colorScheme.secondary,
                              Theme.of(context).colorScheme.onSecondary,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          boxShadow: [
                            BoxShadow(color: Colors.black54, spreadRadius: 1),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 15,left: 290,
                      child: RaisedButton(
                        padding: EdgeInsets.all(12.0),
                        shape: CircleBorder(
                          side: BorderSide(color: Colors.tealAccent),
                        ),
                        child: Column( // Replace with a Row for horizontal icon + text
                          children: <Widget>[
                            Icon(Icons.content_copy,size: 25),
                          ],
                        ),
                        onPressed: () => Clipboard.setData(
                      new ClipboardData(text: "$a")),
                        color: Color(0xffC9F2DB),
                      ),
                    ),
                    /*Positioned(
                      top: 140,left: 290,
                      child: RaisedButton(
                        padding: EdgeInsets.all(17.0),
                        child: Container(
                          child: Row(
                            children: [
                              Icon(Icons.send),
                            ],
                          ),
                        ),
                        onPressed: () {},
                        color: Colors.transparent,
                      ),
                    ),*/
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0,top: 210.0),
                      child: Container(
                        width: 139.0,
                        height: 155.0,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 0.0),
                          // ignore: deprecated_member_use
                          child: Text('Morse Code', style: TextStyle(color: Theme.of(context).textTheme.title.color, fontSize: 18.0, fontWeight: FontWeight.w500),),
                        ),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primaryVariant,
                          borderRadius: BorderRadius.all(Radius.circular(40.0),),
                          boxShadow: [
                            BoxShadow(color: Theme.of(context).colorScheme.onPrimary, spreadRadius: 1),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0,top: 250.0),
                      child: Container(
                        width: 384.0,
                        height: 372.0,
                        child: Container(
                          child : Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0,right: 5.0,bottom: 0.0),
                                child: Text(
                                  message,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    // ignore: deprecated_member_use
                                    color: Theme.of(context).textTheme.title.color,
                                    fontSize: 38,
                                    height: 5.5,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          alignment: Alignment.center,
                        ),
                        decoration: BoxDecoration(
                          //color: HexColor('#678389'),
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(40.0),topRight: Radius.circular(40.0)),
                          gradient: LinearGradient(
                            colors: <Color>[
                              Theme.of(context).colorScheme.surface,
                              Theme.of(context).colorScheme.primary,
                              Theme.of(context).colorScheme.onPrimary,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                          boxShadow: [
                            BoxShadow(color: Theme.of(context).colorScheme.onPrimary, spreadRadius: 1),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 225,left: 290,
                      child: RaisedButton(
                        padding: EdgeInsets.all(12.0),
                        shape: CircleBorder(
                          side: BorderSide(color: Colors.tealAccent),
                        ),
                        child: Column( // Replace with a Row for horizontal icon + text
                          children: <Widget>[
                            Icon(Icons.content_copy,size: 25,),
                          ],
                        ),
                        onPressed: () {},
                        color: Color(0xffC9F2DB),
                      ),
                    ),
                    Positioned(
                      top: 210,left: 170,
                      child: RaisedButton(
                        padding: EdgeInsets.all(17.0),
                        shape: CircleBorder(
                          side: BorderSide(color: Colors.tealAccent),
                        ),
                        child: Container(
                          child: Row(
                            children: [
                              Icon(Icons.import_export, size: 35.0,),
                            ],
                          ),
                        ),
                        onPressed: () =>Navigator.pushReplacement(context,
                            MaterialPageRoute(
                                builder: (BuildContext ctx) =>
                                    TranslatorPage1())),
                        color: Color(0xffC9F2DB),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 520.0),
                      child: Row(
                        children: [
                          MaterialButton(
                            onPressed: () => Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (BuildContext ctx) => FactsPage())),
                            color: Theme.of(context).colorScheme.onSecondary,
                            height: 70.0,
                            minWidth: 140.0,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0),),
                            child:Text('Facts', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.white), textAlign:TextAlign.center),
                          ),
                          SizedBox(
                            width: 131.0,
                          ),
                          MaterialButton(
                            onPressed: () => Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (BuildContext ctx) => HistoryPage())),
                            color: Theme.of(context).colorScheme.onSecondary,
                            height: 70.0,
                            minWidth: 140.0,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0),),
                            child:Text('History', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.white), textAlign:TextAlign.center,),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
