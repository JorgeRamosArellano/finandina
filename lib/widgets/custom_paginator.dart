import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomPaginator extends StatelessWidget {
  final int totalSteps;
  final int activateIndex;
  final void Function() onSkip;
  final void Function() onPressedNext;
  final void Function(int index) onDotClicked;
  const CustomPaginator({
    Key? key,
    required this.totalSteps,
    required this.activateIndex,
    required this.onSkip,
    required this.onPressedNext, 
    required this.onDotClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width * 0.95,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
          color: const Color.fromARGB(80, 255, 255, 255),
          borderRadius: BorderRadiusDirectional.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: onSkip,
            child: const Text(
              'Saltar',
              style: TextStyle(color: Colors.white),
            ),
          ),
          AnimatedSmoothIndicator(
            count: totalSteps,
            activeIndex: activateIndex,
            effect: const ExpandingDotsEffect(
              activeDotColor: Colors.white,
              dotColor: Color.fromARGB(255, 216, 216, 216),
              dotWidth: 8,
              dotHeight: 8,
            ),
            onDotClicked: onDotClicked
          ),
          Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: IconButton(
              icon: const Icon(
                Icons.arrow_forward_rounded,
                color: Colors.pink,
              ),
              onPressed: onPressedNext,
            ),
          ),
        ],
      ),
    );
  }
}
