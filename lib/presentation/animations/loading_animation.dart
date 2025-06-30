import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'dart:developer' as developer;

class LoadingAnimation extends StatelessWidget {
  const LoadingAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        try {
          // Load the Lottie animation with proper error handling
          return Lottie.asset(
            'assets/lottie/loadin.json',
            width: 120,
            height: 120,
            repeat: true,
            frameRate: FrameRate.max,
            onLoaded: (composition) {
              // This callback is triggered when the animation is successfully loaded
              debugPrint('Lottie animation loaded successfully');
              developer.log('Lottie composition duration: ${composition.duration}');
            },
            errorBuilder: (context, error, stackTrace) {
              debugPrint('Error loading Lottie animation: $error');
              developer.log('Lottie animation error: $error', error: error, stackTrace: stackTrace);
              // Fallback widget when animation fails to load
              return Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: const Center(
                  child: Icon(
                    Icons.sync_problem,
                    color: Colors.amber,
                    size: 40,
                  ),
                ),
              );
            },
          );
        } catch (e, stack) {
          debugPrint('Exception in LoadingAnimation build: $e');
          developer.log('LoadingAnimation exception', error: e, stackTrace: stack);
          return Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              color: Colors.red.withOpacity(0.3),
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Center(
              child: Icon(
                Icons.error_outline,
                color: Colors.white,
                size: 40,
              ),
            ),
          );
        }
      },
    );
  }
}
