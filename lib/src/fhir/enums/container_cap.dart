// ignore_for_file: constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Color of the container cap.
enum ContainerCap {
  /// Display: red cap
  /// Definition: red cap.
  red('red'),

  /// Display: yellow cap
  /// Definition: yellow cap.
  yellow('yellow'),

  /// Display: dark yellow cap
  /// Definition: dark yellow cap.
  dark_yellow('dark-yellow'),

  /// Display: grey cap
  /// Definition: grey cap.
  grey('grey'),

  /// Display: light blue cap
  /// Definition: light blue cap.
  light_blue('light-blue'),

  /// Display: black cap
  /// Definition: black cap.
  black('black'),

  /// Display: green cap
  /// Definition: green cap.
  green('green'),

  /// Display: light green cap
  /// Definition: light green cap.
  light_green('light-green'),

  /// Display: lavender cap
  /// Definition: lavender cap.
  lavender('lavender'),

  /// Display: brown cap
  /// Definition: brown cap.
  brown('brown'),

  /// Display: white cap
  /// Definition: white cap.
  white('white'),

  /// Display: pink cap
  /// Definition: pink cap.
  pink('pink'),

  /// For instances where an Element is present but not value

  elementOnly(''),
  ;

  const ContainerCap(this.fhirCode, [this.element]);

  /// The String value of this enum
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Converts a list of JSON values to a list of [ContainerCap] instances.
  static ContainerCap fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContainerCap.elementOnly.withElement(
        element,
      );
    }
    return ContainerCap.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// Returns the enum value with an element
  ContainerCap withElement(Element? newElement) {
    return ContainerCap.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
