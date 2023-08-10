import 'dart:math';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:planet_animation/views/constants.dart';

class AnimatPage extends StatefulWidget {
  const AnimatPage({super.key});

  @override
  State<AnimatPage> createState() => _AnimatPageState();
}

class _AnimatPageState extends State<AnimatPage> with TickerProviderStateMixin {
  late AnimationController _rotationController;
  late AnimationController _rotationUController;
  late AnimationController _rotationSController;
  late AnimationController _rotationJController;
  late AnimationController _rotationMController;
  late AnimationController _rotationEController;
  late AnimationController _rotationVController;
  late AnimationController _rotationNController;
  @override
  void initState() {
    super.initState();

    final assetsAudioPlayer = AssetsAudioPlayer();

    assetsAudioPlayer.open(
      Audio(
        "assets/galaxy.mp3",
      ),
      autoStart: true,
    );

    _rotationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 140))
          ..repeat();
    _rotationUController =
        AnimationController(vsync: this, duration: const Duration(seconds: 160))
          ..repeat();
    _rotationSController =
        AnimationController(vsync: this, duration: const Duration(seconds: 180))
          ..repeat();
    _rotationJController =
        AnimationController(vsync: this, duration: const Duration(seconds: 200))
          ..repeat();
    _rotationMController =
        AnimationController(vsync: this, duration: const Duration(seconds: 220))
          ..repeat();
    _rotationEController =
        AnimationController(vsync: this, duration: const Duration(seconds: 240))
          ..repeat();
    _rotationVController =
        AnimationController(vsync: this, duration: const Duration(seconds: 260))
          ..repeat();
    _rotationNController =
        AnimationController(vsync: this, duration: const Duration(seconds: 280))
          ..repeat();
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: gradientEndColor,
      body: Center(
        child: Stack(
          children: [
            RotationTransition(
              turns: Tween<double>(begin: 0.0, end: (pi * 2).toDouble())
                  .animate(_rotationController),
              child: Container(
                  height: 350,
                  width: 350,
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: Colors.transparent.withOpacity(0.2)),
                    shape: BoxShape.circle,
                  ),
                  alignment: const Alignment(0, -1.2),
                  child: SizedBox(
                      height: 50,
                      width: 50,
                      child: Image.asset('assets/neptune.gif'))),
            ),
            RotationTransition(
              turns: Tween<double>(begin: 0.0, end: (pi * 2).toDouble())
                  .animate(_rotationUController),
              child: Padding(
                padding: const EdgeInsets.all(13.0),
                child: Container(
                    height: 320,
                    width: 320,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.transparent.withOpacity(0.2)),
                      shape: BoxShape.circle,
                    ),
                    alignment: const Alignment(0, -1.3),
                    child: SizedBox(
                        height: 70,
                        width: 70,
                        child: Image.asset('assets/uranus.gif'))),
              ),
            ),
            RotationTransition(
              turns: Tween<double>(begin: 0.0, end: (pi * 2).toDouble())
                  .animate(_rotationSController),
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Container(
                    height: 290,
                    width: 290,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.transparent.withOpacity(0.2)),
                      shape: BoxShape.circle,
                    ),
                    alignment: const Alignment(0, -1.3),
                    child: SizedBox(
                        height: 70,
                        width: 70,
                        child: Image.asset('assets/saturn.gif'))),
              ),
            ),
            RotationTransition(
              turns: Tween<double>(begin: 0.0, end: (pi * 2).toDouble())
                  .animate(_rotationJController),
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Container(
                    height: 260,
                    width: 260,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.transparent.withOpacity(0.2)),
                      shape: BoxShape.circle,
                    ),
                    alignment: const Alignment(0, -1.3),
                    child: SizedBox(
                        height: 60,
                        width: 60,
                        child: Image.asset('assets/jupiter.gif'))),
              ),
            ),
            RotationTransition(
              turns: Tween<double>(begin: 0.0, end: (pi * 2).toDouble())
                  .animate(_rotationMController),
              child: Padding(
                padding: const EdgeInsets.all(50.0),
                child: Container(
                    height: 240,
                    width: 240,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.transparent.withOpacity(0.2)),
                      shape: BoxShape.circle,
                    ),
                    alignment: const Alignment(0, -1.3),
                    child: SizedBox(
                        height: 60,
                        width: 60,
                        child: Image.asset('assets/mars.gif'))),
              ),
            ),
            RotationTransition(
              turns: Tween<double>(begin: 0.0, end: (pi * 2).toDouble())
                  .animate(_rotationEController),
              child: Padding(
                padding: const EdgeInsets.all(60.0),
                child: Container(
                    height: 220,
                    width: 220,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.transparent.withOpacity(0.2)),
                      shape: BoxShape.circle,
                    ),
                    alignment: const Alignment(0, -1.2),
                    child: SizedBox(
                        height: 50,
                        width: 50,
                        child: Image.asset('assets/earth.gif'))),
              ),
            ),
            RotationTransition(
              turns: Tween<double>(begin: 0.0, end: (pi * 2).toDouble())
                  .animate(_rotationVController),
              child: Padding(
                padding: const EdgeInsets.all(75.0),
                child: Container(
                    height: 190,
                    width: 190,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.transparent.withOpacity(0.2)),
                      shape: BoxShape.circle,
                    ),
                    alignment: const Alignment(0, -1.2),
                    child: SizedBox(
                        height: 50,
                        width: 50,
                        child: Image.asset('assets/venus.gif'))),
              ),
            ),
            RotationTransition(
              turns: Tween<double>(begin: 0.0, end: (pi * 2).toDouble())
                  .animate(_rotationNController),
              child: Padding(
                padding: const EdgeInsets.all(90.0),
                child: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.transparent.withOpacity(0.2)),
                      shape: BoxShape.circle,
                    ),
                    alignment: const Alignment(0, -1.4),
                    child: SizedBox(
                        height: 40,
                        width: 40,
                        child: Image.asset('assets/mercury.gif'))),
              ),
            ),
            Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(),
                alignment: Alignment(0, -1.2),
                child: Container(
                    height: 50,
                    width: 50,
                    child: Image.asset('assets/mercury.gif'))),
          ],
        ),
      ),
    );
  }
}
