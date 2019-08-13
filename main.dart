import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NavigationDrawer(),
    );
  }
}

class NavigationDrawer extends StatefulWidget {
  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();

}

class _NavigationDrawerState extends State<NavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      drawer: new Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("xcheko51x"),
              accountEmail: Text("xcheko51x@gmail.com"),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/banner.jpeg'),
                  fit: BoxFit.cover
                ),
              ),
              currentAccountPicture: CircleAvatar(
                child: Image.asset('assets/images/avatar.png'),
              ),
            ),
            ListTile(
              leading: Image.asset('assets/images/iconinicio.png'),
              title: Text("Inicio"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext) => PaginaInicio()));
              },
            ),
            ListTile(
              leading: Image.asset('assets/images/iconyoutube.png'),
              title: Text("Inicio"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext) => PaginaYoutube()));
              },
            ),
            ListTile(
              leading: Image.asset('assets/images/icongmail.png'),
              title: Text("Inicio"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext) => PaginaGmail()));
              },
            ),
            ListTile(
              leading: Image.asset('assets/images/iconnosotros.png'),
              title: Text("Inicio"),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext) => PaginaNosotros()));
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Drawer"),
      ),
      body: Center(
        child: Text("INICIO DE LA APP"),
      ),
    );
  }
}

class PaginaInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("INICIO"),
      ),
      body: Center(
        child: Text("Pagina de INICIO"),
      ),
    );
  }
}

class PaginaYoutube extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("YOUTUBE"),
      ),
      body: Center(
        child: Text("Pagina de YouTube"),
      ),
    );
  }
}

class PaginaGmail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("GMAIL"),
      ),
      body: Center(
        child: Text("Pagina de GMAIL"),
      ),
    );
  }
}

class PaginaNosotros extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("NOSOTROS"),
      ),
      body: Center(
        child: Text("Pagina de NOSOTROS"),
      ),
    );
  }
}