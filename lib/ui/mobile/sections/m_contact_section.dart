import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:profile/generated/translations.g.dart';
import 'package:profile/services/send_message.dart';
import 'package:profile/ui/desktop/widgets/contact_card.dart';
import 'package:profile/ui/desktop/widgets/home_icon_hover.dart';
import 'package:profile/ui/desktop/widgets/input_field.dart';
import 'package:profile/ui/desktop/widgets/modern_button.dart';
import 'package:profile/utils/colors.dart';
import 'package:profile/utils/constants.dart';
import 'package:profile/widgets/section_title.dart';

class MContactSection extends StatefulWidget {
  const MContactSection({Key? key}) : super(key: key);

  @override
  State<MContactSection> createState() => _MContactSectionState();
}

class _MContactSectionState extends State<MContactSection> {
  bool _isSending = false;

  @override
  Widget build(BuildContext context) {
    final _form = GlobalKey<FormState>();
    var name = TextEditingController();
    var email = TextEditingController();
    var message = TextEditingController();
    // String? name;
    // String? email;
    // String? message;

    void send() async {
      final _isValid = _form.currentState!.validate();
      if (_isValid) {
        _form.currentState!.save();
        setState(() {
          _isSending = true;
        });
        await Message.sendMessage(sender: name.text, email: email.text, message: message.text);
        setState(() {
          _isSending = false;
        });
        BotToast.showText(
          duration: const Duration(seconds: 6),
          text: texts.general.thank_you + ' ${name.text} , ' + texts.general.get_back,
          textStyle: kNormalTextStyleGrey,
        );
        _form.currentState!.reset();
      }
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      width: double.infinity,
      color: klightDarkColor,
      child: Column(
        children: [
          SectionTitle(title: texts.general.title_contact_section),
          Column(
            children: [
              Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(vertical: 10),
                // height: 500,
                decoration: BoxDecoration(
                  color: kdarkColor,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(3, 5),
                      color: const Color(0xff000000).withOpacity(.12),
                      blurRadius: 3.0,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Text(
                        texts.general.title_contact_me_section,
                        style: kTitleTextStyle.copyWith(fontSize: 20),
                      ),
                    ),
                    Column(
                      children: [
                        ContactCard(
                          icon: Icons.location_pin,
                          content: location,
                        ),
                        ContactCard(
                          icon: Icons.email,
                          content: gmail,
                        ),
                        ContactCard(
                          icon: Icons.phone,
                          content: phone_work,
                        ),
                        ContactCard(
                          icon: MdiIcons.linkedin,
                          content: skype,
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
                          isMobile: true,
                          icon: MdiIcons.linkedin,
                          color: const Color(0xff0A66C2),
                        ),
                        HomeIconHover(
                          isMobile: true,
                          icon: MdiIcons.github,
                          color: const Color(0xff171515),
                        ),
                        HomeIconHover(
                          isMobile: true,
                          icon: MdiIcons.skype,
                          color: const Color(0xff00aff0),
                        ),
                        HomeIconHover(
                          isMobile: true,
                          icon: MdiIcons.facebook,
                          color: const Color(0xff4267B2),
                        ),
                        HomeIconHover(
                          isMobile: true,
                          icon: MdiIcons.youtube,
                          color: const Color(0xffff0000),
                        ),
                        HomeIconHover(
                          isMobile: true,
                          icon: MdiIcons.googlePlay,
                          color: const Color(0xff48ff48),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
              Container(
                height: 500,
                child: Form(
                  key: _form,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        texts.general.get_in_touch_contact_section,
                        style: kTitleTextStyle.copyWith(fontSize: 30),
                      ),
                      Text(
                        texts.general.feel_free_contact_section,
                        style: kNormalTextStyleGrey,
                      ),
                      InputField(
                        hint: texts.general.hint_your_name_contact_section,
                        maxLines: 1,
                        controller: name,
                      ),
                      InputField(
                        hint: texts.general.hint_your_email_contact_section,
                        maxLines: 1,
                        controller: email,
                      ),
                      InputField(
                        hint: texts.general.hint_message_contact_section,
                        maxLines: 5,
                        controller: message,
                      ),
                      modernButton(
                        icon: Icons.send,
                        click: send,
                        text: texts.general.btn_send_contact_section,
                        isLoading: _isSending,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
