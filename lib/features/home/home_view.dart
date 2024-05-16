import 'package:flutter/material.dart';
import 'package:task/features/home/views/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
        title: const Center(child: Text("Find Products")),
      ) ,
      body: const HomeViewBody(),
    );
  }
}
