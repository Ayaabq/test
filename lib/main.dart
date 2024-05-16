import 'package:flutter/material.dart';
import 'package:task/core/utils/app_router.dart';
import 'package:task/features/on_boarding/on_boarding.dart';

void main() {
  runApp(const Test());
}

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      routerConfig: AppRouter.router,

    );
  }
}

