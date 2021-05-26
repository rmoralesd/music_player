import 'package:flutter/material.dart';
import 'package:music_player/src/widgets/custom_appbar.dart';

class MusicPlayerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [CustomAppBar(), ImagenDiscoDuracion()],
      ),
    );
  }
}

class ImagenDiscoDuracion extends StatelessWidget {
  const ImagenDiscoDuracion({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      margin: EdgeInsets.only(top: 70),
      child: Row(
        children: [
          ImagenDisco(),
          SizedBox(width: 20),
          BarraProgreso(),
          SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}

class BarraProgreso extends StatelessWidget {
  const BarraProgreso({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final estilo = TextStyle(color: Colors.white.withOpacity(0.4));
    return Container(
      child: Column(
        children: [
          Text('00:00', style: estilo),
          const SizedBox(
            height: 10,
          ),
          Stack(
            children: [
              Container(
                width: 3,
                height: 230,
                color: Colors.white.withOpacity(0.1),
              ),
              Positioned(
                bottom: 0,
                child: Container(
                  width: 3,
                  height: 150,
                  color: Colors.white.withOpacity(0.8),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text('00:00', style: estilo)
        ],
      ),
    );
  }
}

class ImagenDisco extends StatelessWidget {
  const ImagenDisco({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: 250,
      height: 250,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(200),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image(image: AssetImage('assets/aurora.jpg')),
              Container(
                width: 25,
                height: 25,
                decoration: BoxDecoration(
                    color: Colors.black38,
                    borderRadius: BorderRadius.circular(100)),
              ),
              Container(
                width: 18,
                height: 18,
                decoration: BoxDecoration(
                    color: Color(0xff1C1C25),
                    borderRadius: BorderRadius.circular(100)),
              )
            ],
          )),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(200),
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            colors: [Color(0xff484750), Color(0xff1E1C24)]),
      ),
    );
  }
}
