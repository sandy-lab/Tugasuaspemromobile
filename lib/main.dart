import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'K0.PAI APP',
      theme: new ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: const Color(0xFF2196f3),
          accentColor: const Color(0xFF2196f3),
          canvasColor: const Color(0xFFfafafa),
          backgroundColor: Colors.blueAccent),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('KO.PAI CAFE'),
        backgroundColor: Colors.blueAccent,
      ),
      body: new Container(
        child: new ListView(
          children: <Widget>[
            new Center(
              child: new Image.asset('images/kopai.png',
                  fit: BoxFit.fill, scale: 2.0),
            ),
            new TextField(
              decoration: new InputDecoration(
                  hintText: "Nama Pemesan",
                  labelText: "Nama Pemesan",
                  border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(20.0))),
            ),
            new Padding(padding: new EdgeInsets.only(top: 20.0)),
            new TextField(
              obscureText: false,
              decoration: new InputDecoration(
                  hintText: "No. Meja",
                  labelText: "No. Meja",
                  border: new OutlineInputBorder(
                      borderRadius: new BorderRadius.circular(20.0))),
            ),
            new Center(
                child: new RaisedButton(
              child: new Text("Masuk"),
              color: Colors.green,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Myget()),
                );
              },
            )),
            new Center(
                child: new RaisedButton(
              child: new Text("TakeAway"),
              color: Colors.green,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Myget()),
                );
              },
            )),
          ],
        ),
      ),
    );
  }
}

void test() {
  runApp(new Myget());
}

class Myget extends StatefulWidget {
  Myget({Key key}) : super(key: key);
  @override
  _MygetState createState() => new _MygetState();
}

class _MygetState extends State<Myget> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Text('KO.PAI CAFE'), backgroundColor: Colors.lightGreen),
      body: new Container(
        child: new ListView(
          children: <Widget>[
            new Center(
              child: new Image.asset('images/fruit.png',
                  fit: BoxFit.fill, scale: 2.0),
            ),
            new Text(
              "KO.PAI CAFE",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF53714B),
                  fontSize: 20),
              textAlign: TextAlign.center,
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                "Penggunaan Aplikasi ini untuk mengurangi bertatap muka dimasa pandemi ini mohon maaf apa bila kenyamanan anda terganggu",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF53714B),
                ),
              ),
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                "Untuk memesan melaui 3 tombol dibawah ini",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF53714B),
                ),
              ),
            ),
            new Center(
                child: new RaisedButton(
              child: new Text("Minuman"),
              color: Colors.green,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Minuman()),
                );
              },
            )),
            new Center(
                child: new RaisedButton(
              child: new Text("Makanan"),
              color: Colors.green,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Makanan()),
                );
              },
            )),
            new Center(
                child: new RaisedButton(
              child: new Text("Jajanan"),
              color: Colors.green,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Jajanan()),
                );
              },
            )),
          ],
        ),
      ),
    );
  }
}

// JAJANAN
class Jajanan extends StatefulWidget {
  @override
  _JajananState createState() => _JajananState();
}

class _JajananState extends State<Jajanan> {
  List<String> menu = [
    "Makan ditempat",
    "TakeAway",
  ];
  String _menu = "Makan ditempat";

  TextEditingController controllerjajanan = new TextEditingController();
  TextEditingController controllerjumlah = new TextEditingController();

  void pilihmenu(String value) {
    setState(() {
      _menu = value;
    });
  }

//hasil
  void kirimdata() {
    AlertDialog alertDialog = new AlertDialog(
        content: new Container(
            height: 200.00,
            child: new Column(
              children: <Widget>[
                new Text("Jajanan: ${controllerjajanan.text}"),
                new Text("jumlah: ${controllerjumlah.text}"),
                new Text("Pilihan: $_menu"),
                new RaisedButton(
                  child: new Text("OK"),
                  onPressed: () => Navigator.pop(context),
                )
              ],
            )));
    showDialog(context: context, child: alertDialog);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new Icon(Icons.list),
        title: new Text("Jajanan"),
        backgroundColor: Colors.lightGreen,
      ),
      body: ListView(
        children: [
          new Container(
            padding: new EdgeInsets.all(10.0),
            child: new Column(
              children: <Widget>[
                new TextField(
                    controller: controllerjajanan,
                    decoration: new InputDecoration(
                        hintText: "Jajanan",
                        labelText: "Jajanan",
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(10)))),
                new Padding(
                  padding: new EdgeInsets.only(top: 20),
                ),
                new TextField(
                    controller: controllerjumlah,
                    decoration: new InputDecoration(
                        hintText: "jumlah",
                        labelText: "jumlah",
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(10)))),
                new Padding(
                  padding: new EdgeInsets.only(top: 20),
                ),
                new Row(
                  children: <Widget>[
                    new Text(
                      "pilihan",
                      style: new TextStyle(
                          fontSize: 20.0, color: Colors.lightBlue),
                    ),
                  ],
                ),
                new DropdownButton(
                  onChanged: (String value) {
                    pilihmenu(value);
                  },
                  value: _menu,
                  items: menu.map((String value) {
                    return new DropdownMenuItem(
                      value: value,
                      child: new Text(value),
                    );
                  }).toList(),
                ),
                new RaisedButton(
                  child: new Text("OK"),
                  color: Colors.blue,
                  onPressed: () {
                    kirimdata();
                  },
                ),
              ],
            ),
          ),
          new Center(
              child: new RaisedButton(
            child: new Text("Kembali"),
            color: Colors.redAccent,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Myget()),
              );
            },
          )),
        ],
      ),
    );
  }
}

// minuman
class Minuman extends StatefulWidget {
  @override
  _MinumanState createState() => _MinumanState();
}

class _MinumanState extends State<Minuman> {
  List<String> menu = [
    "Makan ditempat",
    "TakeAway",
  ];
  String _menu = "Makan ditempat";

  TextEditingController controllerminuman = new TextEditingController();
  TextEditingController controllerjumlah = new TextEditingController();

  void pilihmenu(String value) {
    setState(() {
      _menu = value;
    });
  }

//hasil
  void kirimdata() {
    AlertDialog alertDialog = new AlertDialog(
        content: new Container(
            height: 200.00,
            child: new Column(
              children: <Widget>[
                new Text("Minuman: ${controllerminuman.text}"),
                new Text("jumlah: ${controllerjumlah.text}"),
                new Text("Pilihan: $_menu"),
                new RaisedButton(
                  child: new Text("OK"),
                  onPressed: () => Navigator.pop(context),
                )
              ],
            )));
    showDialog(context: context, child: alertDialog);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new Icon(Icons.list),
        title: new Text("Minuman"),
        backgroundColor: Colors.lightGreen,
      ),
      body: ListView(
        children: [
          new Container(
            padding: new EdgeInsets.all(10.0),
            child: new Column(
              children: <Widget>[
                new TextField(
                    controller: controllerminuman,
                    decoration: new InputDecoration(
                        hintText: "Minuman",
                        labelText: "Minuman",
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(10)))),
                new Padding(
                  padding: new EdgeInsets.only(top: 20),
                ),
                new TextField(
                    controller: controllerjumlah,
                    decoration: new InputDecoration(
                        hintText: "jumlah",
                        labelText: "jumlah",
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(10)))),
                new Padding(
                  padding: new EdgeInsets.only(top: 20),
                ),
                new Row(
                  children: <Widget>[
                    new Text(
                      "pilihan",
                      style: new TextStyle(
                          fontSize: 20.0, color: Colors.lightBlue),
                    ),
                  ],
                ),
                new DropdownButton(
                  onChanged: (String value) {
                    pilihmenu(value);
                  },
                  value: _menu,
                  items: menu.map((String value) {
                    return new DropdownMenuItem(
                      value: value,
                      child: new Text(value),
                    );
                  }).toList(),
                ),
                new RaisedButton(
                  child: new Text("OK"),
                  color: Colors.blue,
                  onPressed: () {
                    kirimdata();
                  },
                ),
              ],
            ),
          ),
          new Center(
              child: new RaisedButton(
            child: new Text("Kembali"),
            color: Colors.redAccent,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Myget()),
              );
            },
          )),
        ],
      ),
    );
  }
}

// makanan
class Makanan extends StatefulWidget {
  @override
  _MakananState createState() => _MakananState();
}

class _MakananState extends State<Makanan> {
  List<String> menu = [
    "Makan ditempat",
    "TakeAway",
  ];
  String _menu = "Makan ditempat";

  TextEditingController controllermakanan = new TextEditingController();
  TextEditingController controllerjumlah = new TextEditingController();

  void pilihmenu(String value) {
    setState(() {
      _menu = value;
    });
  }

//hasil
  void kirimdata() {
    AlertDialog alertDialog = new AlertDialog(
        content: new Container(
            height: 200.00,
            child: new Column(
              children: <Widget>[
                new Text("makanan: ${controllermakanan.text}"),
                new Text("jumlah: ${controllerjumlah.text}"),
                new Text("Pilihan: $_menu"),
                new RaisedButton(
                  child: new Text("OK"),
                  onPressed: () => Navigator.pop(context),
                )
              ],
            )));
    showDialog(context: context, child: alertDialog);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new Icon(Icons.list),
        title: new Text("Makanan"),
        backgroundColor: Colors.lightGreen,
      ),
      body: ListView(
        children: [
          new Container(
            padding: new EdgeInsets.all(10.0),
            child: new Column(
              children: <Widget>[
                new TextField(
                    controller: controllermakanan,
                    decoration: new InputDecoration(
                        hintText: "makanan",
                        labelText: "makanan",
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(10)))),
                new Padding(
                  padding: new EdgeInsets.only(top: 20),
                ),
                new TextField(
                    controller: controllerjumlah,
                    decoration: new InputDecoration(
                        hintText: "jumlah",
                        labelText: "jumlah",
                        border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(10)))),
                new Padding(
                  padding: new EdgeInsets.only(top: 20),
                ),
                new Row(
                  children: <Widget>[
                    new Text(
                      "pilihan",
                      style: new TextStyle(
                          fontSize: 20.0, color: Colors.lightBlue),
                    ),
                  ],
                ),
                new DropdownButton(
                  onChanged: (String value) {
                    pilihmenu(value);
                  },
                  value: _menu,
                  items: menu.map((String value) {
                    return new DropdownMenuItem(
                      value: value,
                      child: new Text(value),
                    );
                  }).toList(),
                ),
                new RaisedButton(
                  child: new Text("OK"),
                  color: Colors.blue,
                  onPressed: () {
                    kirimdata();
                  },
                ),
              ],
            ),
          ),
          new Center(
              child: new RaisedButton(
            child: new Text("Kembali"),
            color: Colors.redAccent,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Myget()),
              );
            },
          )),
        ],
      ),
    );
  }
}
