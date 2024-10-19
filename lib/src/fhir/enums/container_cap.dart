// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Color of the container cap.
@collection
class ContainerCap {
  /// Constructor for internal use (like enum)
  ContainerCap({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// ContainerCap values
  /// red
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContainerCap red = ContainerCap(
    fhirCode: 'red',
  );

  /// yellow
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContainerCap yellow = ContainerCap(
    fhirCode: 'yellow',
  );

  /// dark_yellow
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContainerCap dark_yellow = ContainerCap(
    fhirCode: 'dark-yellow',
  );

  /// grey
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContainerCap grey = ContainerCap(
    fhirCode: 'grey',
  );

  /// light_blue
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContainerCap light_blue = ContainerCap(
    fhirCode: 'light-blue',
  );

  /// black
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContainerCap black = ContainerCap(
    fhirCode: 'black',
  );

  /// green
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContainerCap green = ContainerCap(
    fhirCode: 'green',
  );

  /// light_green
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContainerCap light_green = ContainerCap(
    fhirCode: 'light-green',
  );

  /// lavender
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContainerCap lavender = ContainerCap(
    fhirCode: 'lavender',
  );

  /// brown
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContainerCap brown = ContainerCap(
    fhirCode: 'brown',
  );

  /// white
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContainerCap white = ContainerCap(
    fhirCode: 'white',
  );

  /// pink
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ContainerCap pink = ContainerCap(
    fhirCode: 'pink',
  );

  /// For instances where an Element is present but not value

  static final ContainerCap elementOnly = ContainerCap();

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
    return ContainerCap(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ContainerCap] from JSON.
  static ContainerCap fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContainerCap.elementOnly.withElement(element);
    }
    return ContainerCap.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ContainerCap.$fhirCode';
}
