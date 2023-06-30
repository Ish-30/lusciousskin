import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lusciousskin/Homepage/CategoryFormat.dart';


class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        toolbarHeight: 100,
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,

        leading:  Builder(builder: (context) => IconButton(onPressed: (){
          Scaffold.of(context).openDrawer();
        },
          icon: const Icon(
              Icons.menu
          ),
          color: Colors.grey.shade900,
          iconSize: 30,),),

        title: Image.asset(
          "assets/Images/Homepage/Logo.jpg",
          fit: BoxFit.contain,
          height: 72,
        ),

        actions: <Widget>[

          Container(
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Image.asset('assets/Images/Homepage/profilepic.jpg',)),
        ],


      ),


      drawer: Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),

      body: ListView(
        children: [
          //User greeting

          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(15, 20, 15, 7),
                child: Text("Hi User",
                  style: GoogleFonts.poppins(fontSize:28,fontWeight: FontWeight.w500),
                ),

              ),
            ],
          ),


          //categories
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(15, 20, 15, 7),
                child: Text("Top Categories",
                  style: GoogleFonts.poppins(fontSize:17,fontWeight: FontWeight.w500,color: Colors.black87),
                ),
              ),
            ],
          ),

          new CategoryFormat(),
        ],
      ),


    );
  }
}
