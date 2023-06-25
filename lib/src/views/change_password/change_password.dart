import 'package:flutter/material.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_back),
                    ),
                    Text(
                      'Change Password',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    const SizedBox()
                  ],
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Old Password'),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('New Password'),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text('Confirm Password'),
                ),
              ),
              const Expanded(
                child: SizedBox(),
              ),
              GestureDetector(
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    'Change password',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        fontSize: 12, color: const Color(0xFFFFFFFF)),
                  ),
                ),
              ),
         const     SizedBox(
                height: 18,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
