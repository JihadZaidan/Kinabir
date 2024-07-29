import 'package:flutter/material.dart';
import 'page4.dart';

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height, // Menyesuaikan tinggi
        width: MediaQuery.of(context).size.width, // Menyesuaikan lebar
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/page3.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              right: MediaQuery.of(context).size.width * 0.01,
              bottom: MediaQuery.of(context).size.width * 0.01,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Page4()),
                  );
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero, // Menghilangkan padding
                ),
                child: Image.asset(
                  'images/next.png', // Ganti dengan path gambar yang sesuai
                  height: MediaQuery.of(context).size.height *
                      0.1, // Atur tinggi gambar
                ),
              ),
            ),
            Positioned(
              left: MediaQuery.of(context).size.width * 0.01,
              bottom: MediaQuery.of(context).size.width * 0.01,
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context); // Kembali ke halaman sebelumnya
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero, // Menghilangkan padding
                ),
                child: Image.asset(
                  'images/back.png', // Ganti dengan path gambar yang sesuai
                  height: MediaQuery.of(context).size.height *
                      0.1, // Atur tinggi gambar
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
