// ignore_for_file: sized_box_for_whitespace

import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:profile/utils/colors.dart';
import  'package:profile/utils/constants.dart';
import 'package:profile/ui/desktop/widgets/contact_card.dart';
import 'package:profile/ui/desktop/widgets/input_field.dart';
import 'package:profile/widgets/basic_button.dart';

import '../../../providers/send_message.dart';
import '../../../widgets/section_title.dart';
import '../../desktop/widgets/home_icon_hover.dart';

class TContactSection extends StatefulWidget {
  const TContactSection({Key? key}) : super(key: key);

  @override
  State<TContactSection> createState() => _TContactSectionState();
}

class _TContactSectionState extends State<TContactSection> {
  bool _isSending = false;
  @override
  Widget build(BuildContext context) {
    final _form = GlobalKey<FormState>();
    String? name;
    String? email;
    String? message;

    void send() async {
      final _isValid = _form.currentState!.validate();
      if (_isValid) {
        _form.currentState!.save();
        setState(() {
          _isSending = true;
        });
        await Message.sendMessage(
            sender: name!, email: email!, message: message!);
        setState(() {
          _isSending = false;
        });
        BotToast.showText(
          duration: const Duration(seconds: 6),
          text:
              'Thank You for contacting me ${name!.trim()} , I will get back to you shortly.',
          textStyle: kNormalTextStyleGrey,
        );
        _form.currentState!.reset();
      }
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 90),
      width: double.infinity,
      color: klightDarkColor,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 40),
            child: Column(
              children: [
                SectionTitle(title: 'Contact'),
                MediaQuery.of(context).size.width >= 1170
                    ? Row(
                        children: [
                          Expanded(
                            child: Container(
                              width: double.infinity,
                              margin: const EdgeInsets.symmetric(vertical: 40),
                              height: 500,
                              decoration: BoxDecoration(
                                color: kdarkColor,
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: [
                                  BoxShadow(
                                    offset: const Offset(3, 5),
                                    color: const Color(0xff000000)
                                        .withOpacity(.12),
                                    blurRadius: 3.0,
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 40),
                                    child: Text(
                                      'Contact Me',
                                      style: kTitleTextStyle.copyWith(
                                          fontSize: 20),
                                    ),
                                  ),
                                  Column(
                                    children: const [
                                      ContactCard(
                                        icon: Icons.location_pin,
                                        content: 'Lusaka, Zambia',
                                      ),
                                      ContactCard(
                                        icon: Icons.email,
                                        content: 'erickmndev@gmail.com',
                                      ),
                                      ContactCard(
                                        icon: Icons.phone,
                                        content: '+260 962 885743',
                                      ),
                                      ContactCard(
                                        icon: MdiIcons.whatsapp,
                                        content:
                                            '+260 973 520052 / +260 962 885743',
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 60,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      HomeIconHover(
                                        icon: MdiIcons.linkedin,
                                        color: const Color(0xff0A66C2),
                                        isMobile: true,
                                      ),
                                      HomeIconHover(
                                        isMobile: true,
                                        icon: MdiIcons.github,
                                        color: const Color(0xff171515),
                                      ),
                                      HomeIconHover(
                                        isMobile: true,
                                        icon: MdiIcons.whatsapp,
                                        color: const Color(0xff075e54),
                                      ),
                                      HomeIconHover(
                                        isMobile: true,
                                        icon: MdiIcons.facebook,
                                        color: const Color(0xff4267B2),
                                      ),
                                      HomeIconHover(
                                        isMobile: true,
                                        icon: MdiIcons.googlePlay,
                                        color: const Color(0xff48ff48),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 60,
                          ),
                          Expanded(
                            child: Form(
                              key: _form,
                              child: Container(
                                height: 500,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Get in touch',
                                      style: kTitleTextStyle.copyWith(
                                          fontSize: 30),
                                    ),
                                    const Text(
                                      'Feel free to get in touch',
                                      style: kNormalTextStyleGrey,
                                    ),
                                    InputField(
                                      hint: 'Your name',
                                      maxLines: 1,
                                      onSaved: (value) {
                                        name = value!;
                                      },
                                    ),
                                    InputField(
                                      hint: 'Your email',
                                      maxLines: 1,
                                      onSaved: (value) {
                                        email = value!;
                                      },
                                    ),
                                    InputField(
                                      hint: 'Type your message',
                                      maxLines: 5,
                                      onSaved: (value) {
                                        message = value!;
                                      },
                                    ),
                                    BasicButton(
                                      text: 'Send',
                                      click: send,
                                      isSending: _isSending,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          Container(
                            width: double.infinity,
                            margin: const EdgeInsets.symmetric(vertical: 40),
                            height: 500,
                            decoration: BoxDecoration(
                              color: kdarkColor,
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  offset: const Offset(3, 5),
                                  color:
                                      const Color(0xff000000).withOpacity(.12),
                                  blurRadius: 3.0,
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 40),
                                  child: Text(
                                    'Contact Me',
                                    style:
                                        kTitleTextStyle.copyWith(fontSize: 20),
                                  ),
                                ),
                                Column(
                                  children: const [
                                    ContactCard(
                                      icon: Icons.location_pin,
                                      content: 'Lusaka, Zambia',
                                    ),
                                    ContactCard(
                                      icon: Icons.email,
                                      content: 'erickmndev@gmail.com',
                                    ),
                                    ContactCard(
                                      icon: Icons.phone,
                                      content: '+260 962 885743',
                                    ),
                                    ContactCard(
                                      icon: MdiIcons.whatsapp,
                                      content:
                                          '+260 973 520052 / +260 962 885743',
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 60,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    HomeIconHover(
                                      icon: MdiIcons.linkedin,
                                      color: const Color(0xff0A66C2),
                                      isMobile: true,
                                    ),
                                    HomeIconHover(
                                      isMobile: true,
                                      icon: MdiIcons.github,
                                      color: const Color(0xff171515),
                                    ),
                                    HomeIconHover(
                                      isMobile: true,
                                      icon: MdiIcons.whatsapp,
                                      color: const Color(0xff075e54),
                                    ),
                                    HomeIconHover(
                                      isMobile: true,
                                      icon: MdiIcons.facebook,
                                      color: const Color(0xff4267B2),
                                    ),
                                    HomeIconHover(
                                      isMobile: true,
                                      icon: MdiIcons.googlePlay,
                                      color: const Color(0xff48ff48),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 500,
                            child: Form(
                              key: _form,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Get in touch',
                                    style:
                                        kTitleTextStyle.copyWith(fontSize: 30),
                                  ),
                                  const Text(
                                    'Feel free to get in touch',
                                    style: kNormalTextStyleGrey,
                                  ),
                                  InputField(
                                    hint: 'Your name',
                                    maxLines: 1,
                                    onSaved: (value) {
                                      name = value;
                                    },
                                  ),
                                  InputField(
                                    hint: 'Your email',
                                    maxLines: 1,
                                    onSaved: (value) {
                                      email = value;
                                    },
                                  ),
                                  InputField(
                                    hint: 'Type your message',
                                    maxLines: 5,
                                    onSaved: (value) {
                                      message = value;
                                    },
                                  ),
                                  BasicButton(
                                    text: 'Send',
                                    click: send,
                                    isSending: _isSending,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
