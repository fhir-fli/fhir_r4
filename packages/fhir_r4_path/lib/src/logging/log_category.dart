// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

import 'package:fhir_r4/fhir_r4.dart';

enum LogCategory {
  /// Initialization log category.
  init,

  /// Progress log category.
  progress,

  /// Context log category.
  tx,

  /// Generate log category.
  context,

  /// Generate log category.
  generate,

  /// Validate log category.
  html,
}

/// A logging service to log messages and debug information.
