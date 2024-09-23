import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  String inputText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page'),
      ),
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                TextField(
                  onChanged: (value) {
                    setState(() {
                      inputText = value;
                    });
                  },
                  decoration: InputDecoration(labelText: 'Masukkan teks'),
                ),
                SizedBox(height: 20),
                Text('Anda memasukkan: $inputText'),
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: Opacity(
              opacity: 0.5, // Mengatur transparansi watermark
              child: Text(
                'Anaga Ghaisan Abhista',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
