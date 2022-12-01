import 'package:flutter/material.dart';

enum Elev { Daniel, Flemming, Lasse, Fatih }

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  Elev? _elev; // = Elev.values.elementAt(0);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Radio Buttons',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text("Radio Elever")),
        body: Column(
          children: [
            ListTile(
              title: Text(Elev.Flemming.name),
              leading: Radio<Elev>(
                value: Elev.Flemming,
                groupValue: _elev,
                onChanged: (Elev? value)
                {
                  setState(()
                  {
                    _elev = value;
                  });
                },
              ),
            ),
            ListTile(
              title: Text(Elev.Daniel.name),
              leading: Radio<Elev>(
                value: Elev.Daniel,
                groupValue: _elev,
                onChanged: (Elev? value)
                {
                  setState(()
                  {
                    _elev = value;
                  });
                },
              ),
            ),
            ListTile(
              title: Text(Elev.Fatih.name),
              leading: Radio<Elev>(
                value: Elev.Fatih,
                groupValue: _elev,
                onChanged: (Elev? value)
                {
                  setState(()
                  {
                    _elev = value;
                  });
                },
              ),
            ),
            ListTile(
              title: Text(Elev.Lasse.name),
              leading: Radio<Elev>(
                value: Elev.Lasse,
                groupValue: _elev,
                onChanged: (Elev? value)
                {
                  setState(()
                  {
                    _elev = value;
                  });
                },
              ),
            ),
            Text(_elev?.name ?? "Johnny")
          ],
        )


      )
    );
  }
}
