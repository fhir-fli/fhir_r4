// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Color of the container cap.
class ContainerCap {
  // Private constructor for internal use (like enum)
  ContainerCap._(this.fhirCode, {this.element});

  /// Factory constructor to create [ContainerCap] from JSON.
  factory ContainerCap.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContainerCap.elementOnly.withElement(element);
    }
    return ContainerCap._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ContainerCap values
  /// red
  static final ContainerCap red = ContainerCap._(
    'red',
  );

  /// yellow
  static final ContainerCap yellow = ContainerCap._(
    'yellow',
  );

  /// dark_yellow
  static final ContainerCap dark_yellow = ContainerCap._(
    'dark-yellow',
  );

  /// grey
  static final ContainerCap grey = ContainerCap._(
    'grey',
  );

  /// light_blue
  static final ContainerCap light_blue = ContainerCap._(
    'light-blue',
  );

  /// black
  static final ContainerCap black = ContainerCap._(
    'black',
  );

  /// green
  static final ContainerCap green = ContainerCap._(
    'green',
  );

  /// light_green
  static final ContainerCap light_green = ContainerCap._(
    'light-green',
  );

  /// lavender
  static final ContainerCap lavender = ContainerCap._(
    'lavender',
  );

  /// brown
  static final ContainerCap brown = ContainerCap._(
    'brown',
  );

  /// white
  static final ContainerCap white = ContainerCap._(
    'white',
  );

  /// pink
  static final ContainerCap pink = ContainerCap._(
    'pink',
  );

  /// For instances where an Element is present but not value

  static final ContainerCap elementOnly = ContainerCap._('');

  /// List of all enum-like values
  static final List<ContainerCap> values = [
    red,
    yellow,
    dark_yellow,
    grey,
    light_blue,
    black,
    green,
    light_green,
    lavender,
    brown,
    white,
    pink,
  ];

  /// Returns the enum value with an element attached
  ContainerCap withElement(Element? newElement) {
    return ContainerCap._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => fhirCode;
}
