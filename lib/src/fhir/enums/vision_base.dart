// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// A coded concept listing the base codes.
@collection
class VisionBase {
  /// Constructor for internal use (like enum)
  VisionBase({this.fhirCode, this.element})
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

  /// VisionBase values
  /// up
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final VisionBase up = VisionBase(
    fhirCode: 'up',
  );

  /// down
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final VisionBase down = VisionBase(
    fhirCode: 'down',
  );

  /// in_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final VisionBase in_ = VisionBase(
    fhirCode: 'in',
  );

  /// out
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final VisionBase out = VisionBase(
    fhirCode: 'out',
  );

  /// For instances where an Element is present but not value

  static final VisionBase elementOnly = VisionBase();

  /// List of all enum-like values
  static final List<VisionBase> values = [
    up,
    down,
    in_,
    out,
  ];

  /// Returns the enum value with an element attached
  VisionBase withElement(Element? newElement) {
    return VisionBase(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [VisionBase] from JSON.
  static VisionBase fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return VisionBase.elementOnly.withElement(element);
    }
    return VisionBase.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'VisionBase.$fhirCode';
}
