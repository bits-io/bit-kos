import 'package:bit_kos/models/model.dart';
import 'package:bit_kos/providers/provider.dart';
import 'package:bit_kos/screens/error/error_screen.dart';
import 'package:bit_kos/theme/theme.dart';
import 'package:bit_kos/widgets/widget.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

part 'body/thumbnail.dart';
part 'body/content.dart';
part 'body/button_above.dart';

class DetailScreen extends StatelessWidget {

  final Space space;

  DetailScreen(this.space);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Thumbnail(space),
            Content(space),
            ButtonAbove(space)
          ],
        ),
      ),
    );
  }
}
