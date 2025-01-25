import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';

final snackBar1 = SnackBar(
  elevation: 0,
  behavior: SnackBarBehavior.fixed,
  backgroundColor: Colors.transparent,
  content: AwesomeSnackbarContent(
    title: 'counter alert',
    message: 'this number is Negative!',
    contentType: ContentType.warning,
  ),
);
final snackBar2 = SnackBar(
  elevation: 0,
  behavior: SnackBarBehavior.fixed,
  backgroundColor: Colors.transparent,
  content: AwesomeSnackbarContent(
    title: 'counter alert',
    message: 'this number is either 10 or -10',
    contentType: ContentType.warning,
  ),
);
