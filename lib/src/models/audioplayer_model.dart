import 'package:flutter/material.dart';

class AudioPlayerModel with ChangeNotifier {
  bool _playing = false;

  Duration _songDuration = const Duration();
  Duration _current = const Duration();

  String get songTotalDuration => printDuration(_songDuration);
  String get currentSecond => printDuration(_current);

  double get porcentaje => (_songDuration.inSeconds > 0)
      ? _current.inSeconds / _songDuration.inSeconds
      : 0;

  AnimationController controller;

  //AnimationController get controller => _controller;
  bool get playing => _playing;
  set playing(bool valor) {
    _playing = valor;
    notifyListeners();
  }

  Duration get songDuration => _songDuration;
  Duration get current => _current;
  set songDuration(Duration valor) {
    _songDuration = valor;
    notifyListeners();
  }

  set current(Duration valor) {
    _current = valor;
    notifyListeners();
  }

  String printDuration(Duration duration) {
    String twoDigits(int n) {
      if (n >= 10) return "$n";
      return "0$n";
    }

    final String twoDigitsMinutes =
        twoDigits(duration.inMinutes.remainder(60).toInt());
    final String twoDigitsSeconds =
        twoDigits(duration.inSeconds.remainder(60).toInt());

    return "$twoDigitsMinutes:$twoDigitsSeconds";
  }
}
