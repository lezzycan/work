import 'package:flutter/material.dart';

Widget usersAndPermissionListWidget({
  required String mainText,
  required String subText,
  bool filled = false,
}) =>
    Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xFFFFFBFE),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                backgroundColor: filled ? const Color(0xFF781596) : Colors.grey,
                child: Text(
                  mainText.split('')[0],
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    mainText,
                    style: const TextStyle(fontSize: 16),
                  ),
                  Text(
                    subText,
                    style: const TextStyle(fontSize: 12),
                  ),
                ],
              )
            ],
          ),
          const Icon(Icons.arrow_forward_ios_rounded),
        ],
      ),
    );
