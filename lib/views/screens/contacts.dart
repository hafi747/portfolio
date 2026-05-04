import 'package:flutter/material.dart';
import 'package:portfolio/config/color/gradientmask.dart';
import 'package:portfolio/config/roundbutton/buttons.dart';
import 'package:portfolio/config/sizeadjust/resize.dart';
import 'package:portfolio/config/sizeadjust/styletype.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactsScreen extends StatefulWidget {
  const ContactsScreen({super.key});

  @override
  State<ContactsScreen> createState() => _ContactsScreenState();
}

class _ContactsScreenState extends State<ContactsScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController messageController = TextEditingController();
  void sendEmail() async {
    final String name = nameController.text;
    final String email = emailController.text;
    final String message = messageController.text;

    if (name.isEmpty || email.isEmpty || message.isEmpty) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(const SnackBar(content: Text('Please fill all fields')));
      return;
    }

    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'roomqhal@gmail.com', // YOUR email
      queryParameters: {
        'subject': 'Portfolio Contact',
        'body':
            'Name: $name\n'
            'Email: $email\n\n'
            'Message:\n$message',
      },
    );

    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Gradientmask('Contact Me', style: AppTextStyles.headingXL),
            H(height: 10),
            Text(
              'Feel free to reach out for collaborations or inquiries!',
              style: AppTextStyles.body,
            ),
            H(height: 10),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Contact Information:',
                        style: AppTextStyles.headingL,
                      ),

                      H(height: 10),
                      Container(
                        height: 80,
                        width: 300,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                H(width: 10),
                                Icon(
                                  Icons.email_outlined,
                                  color: Colors.deepOrange,
                                ),
                                H(width: 10),
                                Text('Email', style: AppTextStyles.body),
                              ],
                            ),
                            H(height: 5),
                            Text(
                              'roomqhal@gmail.com',
                              style: AppTextStyles.rbody,
                            ),
                          ],
                        ),
                      ),
                      H(height: 10),
                      Container(
                        height: 80,
                        width: 300,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 2),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                H(width: 10),
                                Icon(
                                  Icons.location_city_rounded,
                                  color: Colors.deepOrange,
                                ),
                                H(width: 10),
                                Text('Location', style: AppTextStyles.body),
                              ],
                            ),
                            H(height: 5),
                            Text('Lahore', style: AppTextStyles.rbody),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                H(width: 20),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: nameController,
                        style: AppTextStyles.rbody,
                        decoration: InputDecoration(
                          labelText: ' Name',
                          hintStyle: AppTextStyles.rbody.copyWith(
                            color: Colors.white,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                      H(height: 10),
                      TextFormField(
                        controller: emailController,
                        style: AppTextStyles.rbody,
                        decoration: InputDecoration(
                          // prefixIcon: Icon(Icons.email_outlined, color: Colors.deepOrange),
                          labelText: 'Email',

                          hintStyle: AppTextStyles.rbody.copyWith(
                            color: Colors.white,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                      H(height: 10),
                      TextFormField(
                        controller: messageController,
                        style: AppTextStyles.rbody,
                        maxLines: 5,
                        decoration: InputDecoration(
                          // hintMaxLines:context.size.width > 600 ? 5 : 3,
                          // prefixIcon: Icon(Icons.email_outlined, color: Colors.deepOrange),
                          labelText: 'Message',
                          hintStyle: AppTextStyles.rbody.copyWith(
                            color: Colors.white,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.grey,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                      H(height: 20),
                      RoundButton(
                        text: 'Contact me',
                        onpressed: () {
                          sendEmail();
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            H(height: 30),
          ],
        ),
      ),
    );
  }
}
