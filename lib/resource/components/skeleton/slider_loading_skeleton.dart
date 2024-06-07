import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skeleton_text/skeleton_text.dart';

class SliderLoading extends StatelessWidget {
  const SliderLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(right: 20),
              child: SkeletonAnimation(
                  shimmerColor: Colors.grey,
               borderRadius: BorderRadius.circular(20),
               shimmerDuration: 1000,
                child: Container(
                  height: 150,
                  width: 30,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
           Expanded(
            flex: 8,
            child: SkeletonAnimation(
                shimmerColor: Colors.grey,
               borderRadius: BorderRadius.circular(20),
               shimmerDuration: 1000,
              child: Container(
              height: 200,
              color: Colors.grey,
              ),
            ),
          ),
           Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: SkeletonAnimation(
                  shimmerColor: Colors.grey,
               borderRadius: BorderRadius.circular(20),
               shimmerDuration: 1000,
                child: Container(
                
                 height: 150,
                  width: 30,
                  color: Colors.grey,
                
                
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
