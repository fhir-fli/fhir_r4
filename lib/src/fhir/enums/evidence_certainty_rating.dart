// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The assessment of quality, confidence, or certainty.
class EvidenceCertaintyRating {
  // Private constructor for internal use (like enum)
  EvidenceCertaintyRating._(this.fhirCode, {this.element});

  /// Factory constructor to create [EvidenceCertaintyRating] from JSON.
  factory EvidenceCertaintyRating.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EvidenceCertaintyRating.elementOnly.withElement(element);
    }
    return EvidenceCertaintyRating._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// EvidenceCertaintyRating values
  /// high
  static final EvidenceCertaintyRating high = EvidenceCertaintyRating._(
    'high',
  );

  /// moderate
  static final EvidenceCertaintyRating moderate = EvidenceCertaintyRating._(
    'moderate',
  );

  /// low
  static final EvidenceCertaintyRating low = EvidenceCertaintyRating._(
    'low',
  );

  /// very_low
  static final EvidenceCertaintyRating very_low = EvidenceCertaintyRating._(
    'very-low',
  );

  /// no_concern
  static final EvidenceCertaintyRating no_concern = EvidenceCertaintyRating._(
    'no-concern',
  );

  /// serious_concern
  static final EvidenceCertaintyRating serious_concern =
      EvidenceCertaintyRating._(
    'serious-concern',
  );

  /// very_serious_concern
  static final EvidenceCertaintyRating very_serious_concern =
      EvidenceCertaintyRating._(
    'very-serious-concern',
  );

  /// extremely_serious_concern
  static final EvidenceCertaintyRating extremely_serious_concern =
      EvidenceCertaintyRating._(
    'extremely-serious-concern',
  );

  /// present
  static final EvidenceCertaintyRating present = EvidenceCertaintyRating._(
    'present',
  );

  /// absent
  static final EvidenceCertaintyRating absent = EvidenceCertaintyRating._(
    'absent',
  );

  /// no_change
  static final EvidenceCertaintyRating no_change = EvidenceCertaintyRating._(
    'no-change',
  );

  /// downcode1
  static final EvidenceCertaintyRating downcode1 = EvidenceCertaintyRating._(
    'downcode1',
  );

  /// downcode2
  static final EvidenceCertaintyRating downcode2 = EvidenceCertaintyRating._(
    'downcode2',
  );

  /// downcode3
  static final EvidenceCertaintyRating downcode3 = EvidenceCertaintyRating._(
    'downcode3',
  );

  /// upcode1
  static final EvidenceCertaintyRating upcode1 = EvidenceCertaintyRating._(
    'upcode1',
  );

  /// upcode2
  static final EvidenceCertaintyRating upcode2 = EvidenceCertaintyRating._(
    'upcode2',
  );

  /// For instances where an Element is present but not value

  static final EvidenceCertaintyRating elementOnly =
      EvidenceCertaintyRating._('');

  /// List of all enum-like values
  static final List<EvidenceCertaintyRating> values = [
    high,
    moderate,
    low,
    very_low,
    no_concern,
    serious_concern,
    very_serious_concern,
    extremely_serious_concern,
    present,
    absent,
    no_change,
    downcode1,
    downcode2,
    downcode3,
    upcode1,
    upcode2,
  ];

  /// Returns the enum value with an element attached
  EvidenceCertaintyRating withElement(Element? newElement) {
    return EvidenceCertaintyRating._(fhirCode, element: newElement);
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
