import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CreateABusiness extends StatefulWidget {
  const CreateABusiness({super.key});

  @override
  State<CreateABusiness> createState() => _CreateABusinessState();
}

class _CreateABusinessState extends State<CreateABusiness> {
  late final TextEditingController businessNameController;
  late final TextEditingController businessEmailController;
  late final TextEditingController addressController;
  late final TextEditingController cityController;
  late final TextEditingController stateController;
  late final TextEditingController dropdownController;

  late final TextEditingController phoneController;

  @override
  void initState() {
    dropdownController = TextEditingController();
    stateController = TextEditingController();
    phoneController = TextEditingController();
    businessNameController = TextEditingController();
    businessEmailController = TextEditingController();
    addressController = TextEditingController();
    cityController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    dropdownController.dispose();
    stateController.dispose();
    phoneController.dispose();
    businessNameController.dispose();
    businessEmailController.dispose();
    addressController.dispose();
    cityController.dispose();
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
              const LinearProgressIndicator(
                color: Color(0xFF781596),
                value: 0.5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Create a business',
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),
                    Text(
                      'Kindly fill in your business information correctly.',
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                            color: const Color(0xFF49454F),
                          ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    TextField(
                      controller: businessNameController,
                      decoration: const InputDecoration(
                        label: Text('Business Name'),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    TextField(
                      onTapOutside: null,
                      controller: businessEmailController,
                      decoration: const InputDecoration(
                        label: Text('Business Email'),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    DropdownButtonFormField<String>(
                      dropdownColor: Colors.white,
                      value: null,
                      items: ['Business Name', 'CAC Number', 'SMEDAN Number']
                          .map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownController.text = newValue!;
                        });
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Registration Type(Optional)',
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    DropdownButtonFormField<String>(
                      dropdownColor: Colors.white,
                      value: null,
                      items: ['Fashion Designer', 'E-commerce owner']
                          .map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownController.text = newValue!;
                        });
                      },
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Business type',
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    TextField(
                      controller: phoneController,
                      decoration: InputDecoration(
                        prefixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const SizedBox(
                              width: 8,
                            ),
                            CircleAvatar(
                              child: SvgPicture.asset(
                                'assets/images/nigeria.svg',
                              ),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            const RotatedBox(
                              quarterTurns: 1,
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: 16,
                              ),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                          ],
                        ),
                        border: const OutlineInputBorder(),
                        label: const Text('Phone number'),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    TextField(
                      controller: stateController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text('State'),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    TextField(
                      controller: cityController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text('City'),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    TextField(
                      controller: addressController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        label: Text('Address'),
                      ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    GestureDetector(
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color(0xFF781596),
                          borderRadius: BorderRadius.circular(24),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          'Next',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(
                                  fontSize: 12, color: const Color(0xFFFFFFFF)),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Skip',
                          style: TextStyle(
                            color: Color(0xFF781596),
                          ),
                        ),
                      ),
                    )
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
