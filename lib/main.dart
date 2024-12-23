import 'package:appayuda/screens/anim_implicitas/animated_align_e.dart';
import 'package:appayuda/screens/anim_implicitas/animated_container_e.dart';
import 'package:appayuda/screens/anim_implicitas/animated_default_text_style_e.dart';
import 'package:appayuda/screens/anim_implicitas/animated_fractionally_sized_box_e.dart';
import 'package:appayuda/screens/nested_scroll_view_e.dart';
import 'package:appayuda/screens/silver_grid_e.dart';
import 'package:appayuda/screens/sliver_app_bar_e.dart';
import 'package:appayuda/screens/sliver_fill_remaining_e.dart';
import 'package:appayuda/screens/sliver_fill_viewport_e.dart';
import 'package:appayuda/screens/sliver_list_e.dart';
import 'package:appayuda/screens/sliver_persistent_header_e.dart';
import 'package:appayuda/screens/sliver_to_box_adapter_e.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AnimatedFractionallySizedBoxE(),
    );
  }
}
