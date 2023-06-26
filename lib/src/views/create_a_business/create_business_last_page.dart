import 'package:flutter/material.dart';

class CreateBusinessLastPage extends StatefulWidget {
  const CreateBusinessLastPage({super.key});

  @override
  State<CreateBusinessLastPage> createState() => _CreateBusinessLastPageState();
}

class _CreateBusinessLastPageState extends State<CreateBusinessLastPage> {
  late final TextEditingController businessTaglineController;
  late final TextEditingController dateCreatedController;
  late final TextEditingController aboutBusinessController;

  @override
  initState() {
    businessTaglineController = TextEditingController();
    dateCreatedController = TextEditingController();
    aboutBusinessController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    businessTaglineController.dispose();
    dateCreatedController.dispose();
    aboutBusinessController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 22,
              ),
              LinearProgressIndicator(
                color: Theme.of(context).cardColor,
                value: 1,
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(Icons.arrow_back),
                        Column(
                          children: [
                            Text(
                              'About your business',
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            SizedBox(
                              width: 200,
                              child: Text(
                                'Tell us about your business and add your logo',
                                textAlign: TextAlign.center,
                                style: Theme.of(context).textTheme.bodySmall,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: 120,
                      alignment: Alignment.bottomRight,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(54),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/user.png'),
                        ),
                      ),
                      child: CircleAvatar(
                        backgroundColor: Theme.of(context).cardColor,
                        child: const Icon(Icons.camera_alt),
                      ),
                    ),
                    const SizedBox(
                      height: 37,
                    ),
                    TextField(
                      controller: businessTaglineController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text('Business tagline'),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    TextField(
                      controller: dateCreatedController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text('Date created'),
                        suffixIcon: Icon(Icons.calendar_month),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    TextField(
                      minLines: 5,
                      maxLines: 6,
                      controller: businessTaglineController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text(
                          'About business',
                        ),
                        alignLabelWithHint: true,
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    GestureDetector(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).cardColor,
                          borderRadius: BorderRadius.circular(24),
                        ),
                        height: 50,
                        alignment: Alignment.center,
                        child: Text(
                          'Create business',
                          style:
                              Theme.of(context).textTheme.bodySmall?.copyWith(
                                    fontSize: 12,
                                    color: const Color(0xFFFFFFFF),
                                  ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Skip',
                        style: TextStyle(
                          color: Color(0xFF781596),
                        ),
                      ),
                    ),
                   
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
