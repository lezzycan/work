import 'package:flutter/material.dart';

class BusinessProfile extends StatefulWidget {
  const BusinessProfile({super.key});

  @override
  State<BusinessProfile> createState() => _BusinessProfileState();
}

class _BusinessProfileState extends State<BusinessProfile> {
  late final TextEditingController businessNameController;
  late final TextEditingController businessEmailController;
  late final TextEditingController aboutController;
  late final TextEditingController cacNumberController;
  late final TextEditingController phoneController;
  late final TextEditingController businessTypeController;
  late final TextEditingController businessAddressController;

  @override
  initState() {
    businessAddressController =
        TextEditingController(text: 'Plot 1, ijebu ode, ogun state, Nigeria');
    cacNumberController = TextEditingController(text: '1234567890');
    phoneController = TextEditingController(text: '08127165671');
    businessTypeController = TextEditingController(text: 'Fashion Designer');
    businessNameController =
        TextEditingController(text: 'Fashion and Boutiques');
    businessEmailController = TextEditingController(text: 'fashiob@gmail.com');
    aboutController = TextEditingController(
        text:
            'I believe great product design comes from the right questions, not the right answers.');
    super.initState();
  }

  @override
  void dispose() {
    businessAddressController.dispose();
    cacNumberController.dispose();
    phoneController.dispose();
    businessTypeController.dispose();
    businessNameController.dispose();
    businessEmailController.dispose();
    aboutController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.arrow_back),
                    Text(
                      'Business Profile',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    const Icon(Icons.draw),
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 16,
                      ),
                      Container(
                        width: 120,
                        alignment: Alignment.bottomRight,
                        height: 120,
                        decoration: BoxDecoration(
                          color: Colors.blue,
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
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'About',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    color: const Color(0xFF49454F),
                                  ),
                            ),
                            TextField(
                              minLines: 2,
                              maxLines: 5,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                              controller: aboutController,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    color: const Color(0xFF1C1B1F),
                                  ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 12.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Business Name',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    color: const Color(0xFF49454F),
                                  ),
                            ),
                            TextField(
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                              controller: businessNameController,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    color: const Color(0xFF1C1B1F),
                                  ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 12.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Business Email',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    color: const Color(0xFF49454F),
                                  ),
                            ),
                            TextField(
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                              controller: businessEmailController,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    color: const Color(0xFF1C1B1F),
                                  ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 12.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'CAC number (optional)',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    color: const Color(0xFF49454F),
                                  ),
                            ),
                            TextField(
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                              controller: cacNumberController,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    color: const Color(0xFF1C1B1F),
                                  ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 12.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Phone number',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    color: const Color(0xFF49454F),
                                  ),
                            ),
                            TextField(
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                              controller: phoneController,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    color: const Color(0xFF1C1B1F),
                                  ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 12.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Business Type',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    color: const Color(0xFF49454F),
                                  ),
                            ),
                            TextField(
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                              controller: businessTypeController,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    color: const Color(0xFF1C1B1F),
                                  ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 12.0,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Business Address',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    color: const Color(0xFF49454F),
                                  ),
                            ),
                            TextField(
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                              controller: businessAddressController,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    color: const Color(0xFF1C1B1F),
                                  ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
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
                            'Save Changes',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(
                                    fontSize: 12,
                                    color: const Color(0xFFFFFFFF)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
