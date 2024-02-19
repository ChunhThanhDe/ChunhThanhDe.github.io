// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'dart:js' as js;

import 'package:flutter/material.dart';

class WebTitleSwitcher extends StatefulWidget {
  const WebTitleSwitcher({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;

  @override
  State<WebTitleSwitcher> createState() => _WebTitleSwitcherState();
}

class _WebTitleSwitcherState extends State<WebTitleSwitcher> {
  bool _isTabActive = true;

  @override
  void initState() {
    super.initState();
    // Register a blur event listener on the window object
    html.window.addEventListener('blur', _handleBlurEvent);
    html.window.addEventListener('focus', _handleFocusEvent);

    // A2HS functionality
    listenToBeforeInstallPromptEvent();
  }

  @override
  void dispose() {
    // Remove the event listeners when the widget is disposed
    html.window.removeEventListener('blur', _handleBlurEvent);
    html.window.removeEventListener('focus', _handleFocusEvent);
    super.dispose();
  }

  void _handleBlurEvent(html.Event event) {
    setState(() {
      _isTabActive = false;
    });
    _updateTabTitle();
  }

  void _handleFocusEvent(html.Event event) {
    setState(() {
      _isTabActive = true;
    });
    _updateTabTitle();
  }

  void _updateTabTitle() {
    final String title = _isTabActive ? "Hi, I'm Chung" : "Contact to cooperate";
    html.document.title = title;
  }
void listenToBeforeInstallPromptEvent() {
  html.window.on['beforeinstallprompt'].listen((event) {
    // Prevent the mini-infobar from appearing on mobile
    event.preventDefault();

    // Create an install button that, when triggered, prompts the user to install the app
    html.ButtonElement installButton = html.ButtonElement()
      ..text = "Add to Home Screen"
      ..style.position = "fixed"
      ..style.bottom = "10px"
      ..style.left = "10px";

    // Add the button to the body
    html.document.body?.append(installButton);

    // When the button is clicked, trigger the prompt
    installButton.onClick.listen((_) {
      // Cast the event to JsObject to invoke the prompt method
      js.JsObject.fromBrowserObject(event).callMethod('prompt');
    });
  });
}

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
