// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This value set includes Coverage Class codes.
@collection
class CoverageClassCodes {
  /// Constructor for internal use (like enum)
  CoverageClassCodes({this.fhirCode, this.element})
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

  /// CoverageClassCodes values
  /// group
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CoverageClassCodes group = CoverageClassCodes(
    fhirCode: 'group',
  );

  /// subgroup
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CoverageClassCodes subgroup = CoverageClassCodes(
    fhirCode: 'subgroup',
  );

  /// plan
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CoverageClassCodes plan = CoverageClassCodes(
    fhirCode: 'plan',
  );

  /// subplan
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CoverageClassCodes subplan = CoverageClassCodes(
    fhirCode: 'subplan',
  );

  /// class_
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CoverageClassCodes class_ = CoverageClassCodes(
    fhirCode: 'class',
  );

  /// subclass
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CoverageClassCodes subclass = CoverageClassCodes(
    fhirCode: 'subclass',
  );

  /// sequence
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CoverageClassCodes sequence = CoverageClassCodes(
    fhirCode: 'sequence',
  );

  /// rxbin
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CoverageClassCodes rxbin = CoverageClassCodes(
    fhirCode: 'rxbin',
  );

  /// rxpcn
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CoverageClassCodes rxpcn = CoverageClassCodes(
    fhirCode: 'rxpcn',
  );

  /// rxid
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CoverageClassCodes rxid = CoverageClassCodes(
    fhirCode: 'rxid',
  );

  /// rxgroup
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final CoverageClassCodes rxgroup = CoverageClassCodes(
    fhirCode: 'rxgroup',
  );

  /// For instances where an Element is present but not value

  static final CoverageClassCodes elementOnly = CoverageClassCodes();

  /// List of all enum-like values
  static final List<CoverageClassCodes> values = [
    group,
    subgroup,
    plan,
    subplan,
    class_,
    subclass,
    sequence,
    rxbin,
    rxpcn,
    rxid,
    rxgroup,
  ];

  /// Returns the enum value with an element attached
  CoverageClassCodes withElement(Element? newElement) {
    return CoverageClassCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [CoverageClassCodes] from JSON.
  static CoverageClassCodes fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CoverageClassCodes.elementOnly.withElement(element);
    }
    return CoverageClassCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'CoverageClassCodes.$fhirCode';
}
