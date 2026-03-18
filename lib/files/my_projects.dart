import 'package:flutter/material.dart';
import 'dart:async';

class AutoImageSlider extends StatefulWidget {
  const AutoImageSlider({super.key});

  @override
  State<AutoImageSlider> createState() => _AutoImageSliderState();
}

class _AutoImageSliderState extends State<AutoImageSlider> {
  final List<String> _images = [
    'assets/images/img_1.png',
    'assets/images/img_2.png',
    'assets/images/img_3.png',
    'assets/images/img_4.png',
  ];

  int _currentIndex = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(const Duration(seconds: 4), (timer) {
      setState(() {
        _currentIndex = (_currentIndex + 1) % _images.length;
      });
    });
  }

  void _stopAutoScroll() {
    _timer?.cancel();
  }

  void _nextImage() {
    _stopAutoScroll(); // stop auto-scroll on user interaction
    setState(() {
      _currentIndex = (_currentIndex + 1) % _images.length;
    });
    _startAutoScroll(); // restart auto-scroll
  }

  void _previousImage() {
    _stopAutoScroll();
    setState(() {
      _currentIndex = (_currentIndex - 1 + _images.length) % _images.length;
    });
    _startAutoScroll();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double fontSize = screenWidth * 0.02;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text("My Projects",style: TextStyle(fontSize: fontSize.clamp(15, 20), color: Colors.blue,fontWeight: FontWeight.bold),),
          ),
        ),
        Text("Chat Application",style: TextStyle(fontSize: 16),),
        SizedBox(height: 30,),
        // AnimatedSwitcher for smooth fade transition
        AnimatedSwitcher(
          duration: const Duration(milliseconds: 500),
          child: Image.asset(
            _images[_currentIndex],
            key: ValueKey(_images[_currentIndex]),
            width: 100,
            height: 220,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: _previousImage,
              child: const Icon(Icons.arrow_back),
            ),
            const SizedBox(width: 20),
            ElevatedButton(
              onPressed: _nextImage,
              child: const Icon(Icons.arrow_forward),
            ),
          ],
        ),
        SizedBox(height: 30,),
      ],
    );
  }
}