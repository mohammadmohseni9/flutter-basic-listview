import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';


void main() => runApp(MaterialApp(localizationsDelegates: [
      // ... app-specific localization delegate[s] here
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
    ], supportedLocales: [
      const Locale('fa'), // farsi
    ],

  home: Home(),
)
);

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("list view page"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0 , horizontal: 5.0),
            child:Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child:Column (
                children: <Widget>[

                    ClipRRect(
                      child:
                      Image.network('https://images.unsplash.com/photo-1562886812-41775a01195d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1489&q=80'),
                      borderRadius : BorderRadius.all(Radius.circular(10.0),

                      ) ,
                    ),


                  Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('این یک متن پیش فرض است'.toUpperCase()),
                        SizedBox(height: 15.0,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("ده دقیقه ی پیش"),
                            Text("بازدید: 10"),
                            Text("دسته بندی : آموزشی"),
                          ],
                        )
                      ],

                    ),
                  )
                ],
              ),
            ),
          );

        },
        itemCount: 10,

      ),

    );
  }

  }




