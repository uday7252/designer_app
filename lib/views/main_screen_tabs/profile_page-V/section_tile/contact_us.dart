import 'package:designer_app/theme/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: kToolbarHeight + 20,
        backgroundColor: whiteColor,
        title: ListTile(
          contentPadding: const EdgeInsets.only(top: 15, bottom: 0),
          title: Text(
            'Contact Us'.toUpperCase(),
            style: const TextStyle(
                color: secondaryColor,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
                fontSize: 20),
          ),
          subtitle: const Text(
            'How Can We Help You?',
            style: TextStyle(fontSize: 11, color: Colors.black),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 60,
          ),
          Image.asset(
            'assets/image/customer_care.png',
            height: 250,
            width: 250,
          ),
          const SizedBox(
            height: 20,
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              margin: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[200],
              ),
              child: ListTile(
                title: const Text(
                  'Contact Number: 24/7',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                      color: Colors.black54),
                ),
                subtitle: const Text(
                  '1800 xxx xxx',
                  style: TextStyle(
                      fontSize: 20,
                      color: blackColor,
                      fontWeight: FontWeight.bold),
                ),
                trailing: InkWell(
                  onTap: () {
                    Clipboard.setData(const ClipboardData(text: '1234567890'))
                        .then((value) => ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                                content: Text('Phone No. Copied'))));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: whiteColor,
                    ),
                    padding: const EdgeInsets.all(8),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.content_copy,
                          color: secondaryColor,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'COPY',
                          style: TextStyle(color: secondaryColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              margin: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[200],
              ),
              child: ListTile(
                title: const Text(
                  'Mail us at:',
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                      color: Colors.black54),
                ),
                subtitle: const Text(
                  'email@email.com',
                  style: TextStyle(
                      fontSize: 20,
                      color: blackColor,
                      fontWeight: FontWeight.bold),
                ),
                trailing: InkWell(
                  onTap: () {
                    Clipboard.setData(const ClipboardData(text: '1234567890'))
                        .then((value) => ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                                content: Text('Phone No. Copied'))));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: whiteColor,
                    ),
                    padding: const EdgeInsets.all(8),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.content_copy,
                          color: secondaryColor,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'COPY',
                          style: TextStyle(color: secondaryColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
