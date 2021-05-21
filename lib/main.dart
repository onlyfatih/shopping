import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'data/content.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
          create: (context) => Content(),
          child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Projem',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: AnaSayfa(),
      ),
    );
  }
}

class AnaSayfa extends StatelessWidget {
  

  
  @override
  Widget build(BuildContext context) {
    return Consumer<Content>(
      builder: (context, value, child) {
        final dataContent = value.icerikler;
        return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: Text(
            "Uçarak gelsin",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
        ),
        body: dataContent[value.aktifIcerikNo],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: value.aktifIcerikNo,
          selectedItemColor: Colors.red[400],
          unselectedItemColor: Colors.grey[600],
          items: [
            // ignore: deprecated_member_use
            BottomNavigationBarItem(icon: Icon(Icons.home),title: Text("Ürünler")),
            // ignore: deprecated_member_use
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),title: Text("Sepetim")),
          ],
          onTap: (int tiklananButonPozisyonNo){
            
              value.activeContent(tiklananButonPozisyonNo);
              
           
          },
        ),
      );
        
      },
          
    );
  }
}
