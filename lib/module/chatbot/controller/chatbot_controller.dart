import 'package:flutter/material.dart';
import 'package:pengujian_chat/state_util.dart';
import '../view/chatbot_view.dart';

class ChatbotController extends State<ChatbotView> implements MvcController {
  static late ChatbotController instance;
  late ChatbotView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();
  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
