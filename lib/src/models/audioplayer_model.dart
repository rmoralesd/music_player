import 'package:flutter/material.dart';

class AudioPlayerModel with ChangeNotifier {
  bool _playing = false;
  AnimationController _controller;
  set controller(AnimationController valor) {
    _controller = valor;
  }

  AnimationController get controller => _controller;
}
