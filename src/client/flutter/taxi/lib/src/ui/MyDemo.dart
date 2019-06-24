import 'package:flutter/material.dart';

// TODO try to remove this large header
 class MyDemo extends StatelessWidget {
   final List<Tab> myTabs = <Tab>[
     Tab(text: 'LEFT'),
     Tab(text: 'RIGHT'),
   ];

   @override
   Widget build(BuildContext context) {
     return DefaultTabController(
       length: myTabs.length,
       child: Scaffold(
         appBar: AppBar(
           bottom: TabBar(
             tabs: [
               Tab(icon: Icon(Icons.directions_transit)),
               Tab(icon: Icon(Icons.directions_car)),
             ],
           ),
         ),
         body: TabBarView(
           children: myTabs.map((Tab tab) {
             return Center(child: Text(tab.text));
           }).toList(),
         ),
       ),
     );
   }
 }