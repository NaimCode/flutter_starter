import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Home extends HookConsumerWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // args
          Text('test'.tr()),
          const Text('msg').tr(args: ['Easy localization', 'Dart']),

// namedArgs
          const Text('msg_named').tr(namedArgs: {'lang': 'Dart'}),

// args and namedArgs
          const Text('msg_mixed')
              .tr(args: ['Easy localization'], namedArgs: {'lang': 'Dart'}),

// gender
          const Text('gender').tr(gender: "female"),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  context.setLocale(const Locale('en', 'US'));
                },
                child: const Text('English'),
              ),
              ElevatedButton(
                onPressed: () {
                  context.setLocale(const Locale('fr', 'FR'));
                },
                child: const Text('French'),
              ),
              ElevatedButton(
                onPressed: () {
                  context.setLocale(const Locale('ar'));
                },
                child: const Text('Arabic'),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
