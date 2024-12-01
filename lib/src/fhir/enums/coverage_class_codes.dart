// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes Coverage Class codes.
class CoverageClassCodes {
  // Private constructor for internal use (like enum)
  CoverageClassCodes._(this.fhirCode, {this.element});

  /// Factory constructor to create [CoverageClassCodes] from JSON.
  factory CoverageClassCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CoverageClassCodes.elementOnly.withElement(element);
    }
    return CoverageClassCodes._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// CoverageClassCodes values
  /// group
  static final CoverageClassCodes group = CoverageClassCodes._(
    'group',
  );

  /// subgroup
  static final CoverageClassCodes subgroup = CoverageClassCodes._(
    'subgroup',
  );

  /// plan
  static final CoverageClassCodes plan = CoverageClassCodes._(
    'plan',
  );

  /// subplan
  static final CoverageClassCodes subplan = CoverageClassCodes._(
    'subplan',
  );

  /// class_
  static final CoverageClassCodes class_ = CoverageClassCodes._(
    'class',
  );

  /// subclass
  static final CoverageClassCodes subclass = CoverageClassCodes._(
    'subclass',
  );

  /// sequence
  static final CoverageClassCodes sequence = CoverageClassCodes._(
    'sequence',
  );

  /// rxbin
  static final CoverageClassCodes rxbin = CoverageClassCodes._(
    'rxbin',
  );

  /// rxpcn
  static final CoverageClassCodes rxpcn = CoverageClassCodes._(
    'rxpcn',
  );

  /// rxid
  static final CoverageClassCodes rxid = CoverageClassCodes._(
    'rxid',
  );

  /// rxgroup
  static final CoverageClassCodes rxgroup = CoverageClassCodes._(
    'rxgroup',
  );

  /// For instances where an Element is present but not value

  static final CoverageClassCodes elementOnly = CoverageClassCodes._('');

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
    return CoverageClassCodes._(fhirCode, element: newElement);
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
