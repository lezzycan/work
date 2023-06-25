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

  late final TextEditingController phoneController;

  var _focus = FocusNode();
  var registrationTypeOffstage = true;
  String registrationType = '';
  var businessTypeOffstage = true;
  var businessType = '';

  @override
  void initState() {
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
                    GestureDetector(
                      onTap: () {
                        businessTypeOffstage = true;
                        registrationTypeOffstage
                            ? registrationTypeOffstage = false
                            : registrationTypeOffstage = true;
                        setState(() {});
                      },
                      child: TextField(
                        focusNode: _focus,
                        enabled: false,
                        decoration: InputDecoration(
                          suffixIcon: RotatedBox(
                            quarterTurns: registrationTypeOffstage ? 1 : 3,
                            child: const Icon(Icons.arrow_forward_ios),
                          ),
                          label: Text(
                            registrationType.isEmpty
                                ? 'Registration Type(Optional)'
                                : registrationType,
                          ),
                          labelStyle: registrationType.isEmpty
                              ? const TextStyle()
                              : const TextStyle(color: Colors.black),
                          border: const OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Offstage(
                      offstage: registrationTypeOffstage,
                      child: Container(
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 3,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  registrationTypeOffstage = true;
                                  registrationType = 'Business Name';
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 16.0,
                                  top: 8,
                                  bottom: 8,
                                ),
                                child: Text(
                                  'Business Name',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  registrationTypeOffstage = true;
                                  registrationType = 'CAC Number';
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 16.0,
                                  top: 8,
                                  bottom: 8,
                                ),
                                child: Text(
                                  'CAC Number',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  registrationTypeOffstage = true;
                                  registrationType = 'SMEDAN Number';
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.only(
                                  left: 16.0,
                                  top: 8,
                                  bottom: 8,
                                ),
                                child: Text(
                                  'SMEDAN Number',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    GestureDetector(
                      onTap: () {
                        registrationTypeOffstage = true;
                        businessTypeOffstage
                            ? businessTypeOffstage = false
                            : businessTypeOffstage = true;
                        setState(() {});
                      },
                      child: TextField(
                        enabled: false,
                        decoration: InputDecoration(
                          suffixIcon: RotatedBox(
                            quarterTurns: businessTypeOffstage ? 1 : 3,
                            child: const Icon(Icons.arrow_forward_ios),
                          ),
                          label: Text(
                            businessType.isEmpty
                                ? 'Business Type'
                                : businessType,
                          ),
                          labelStyle: registrationType.isEmpty
                              ? const TextStyle()
                              : const TextStyle(color: Colors.black),
                          border: const OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Offstage(
                      offstage: businessTypeOffstage,
                      child: Container(
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(4.0),
                            topRight: Radius.circular(4.0),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  registrationTypeOffstage = true;
                                  businessTypeOffstage = true;
                                  businessType = 'Fashion designer';
                                });
                              },
                              child: const Padding(
                                padding: EdgeInsets.only(
                                  left: 16.0,
                                  top: 8,
                                  bottom: 8,
                                ),
                                child: Text('Fashion designer'),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  registrationTypeOffstage = true;
                                  businessTypeOffstage = true;
                                  businessType = 'E-commerce owner';
                                });
                              },
                              child: const Padding(
                                padding: EdgeInsets.only(
                                  left: 16.0,
                                  top: 8,
                                  bottom: 8,
                                ),
                                child: Text('E-commerce owner'),
                              ),
                            ),
                          ],
                        ),
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
