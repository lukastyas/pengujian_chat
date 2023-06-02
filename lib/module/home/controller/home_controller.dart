import 'package:flutter/material.dart';
import 'package:pengujian_chat/core.dart';

class HomeController extends State<HomeView> implements MvcController {
  static late HomeController instance;
  late HomeView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  static const showCard = true;

  @override
  Widget build(BuildContext context) => widget.build(context, this);
  doChat() async {
    Get.to(const ChatbotView());
  }
}
