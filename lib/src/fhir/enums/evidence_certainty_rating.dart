// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The assessment of quality, confidence, or certainty.
@collection
class EvidenceCertaintyRating {
  /// Constructor for internal use (like enum)
  EvidenceCertaintyRating({this.fhirCode, this.element})
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

  /// EvidenceCertaintyRating values
  /// high
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceCertaintyRating high = EvidenceCertaintyRating(
    fhirCode: 'high',
  );

  /// moderate
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceCertaintyRating moderate = EvidenceCertaintyRating(
    fhirCode: 'moderate',
  );

  /// low
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceCertaintyRating low = EvidenceCertaintyRating(
    fhirCode: 'low',
  );

  /// very_low
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceCertaintyRating very_low = EvidenceCertaintyRating(
    fhirCode: 'very-low',
  );

  /// no_concern
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceCertaintyRating no_concern = EvidenceCertaintyRating(
    fhirCode: 'no-concern',
  );

  /// serious_concern
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceCertaintyRating serious_concern =
      EvidenceCertaintyRating(
    fhirCode: 'serious-concern',
  );

  /// very_serious_concern
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceCertaintyRating very_serious_concern =
      EvidenceCertaintyRating(
    fhirCode: 'very-serious-concern',
  );

  /// extremely_serious_concern
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceCertaintyRating extremely_serious_concern =
      EvidenceCertaintyRating(
    fhirCode: 'extremely-serious-concern',
  );

  /// present
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceCertaintyRating present = EvidenceCertaintyRating(
    fhirCode: 'present',
  );

  /// absent
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceCertaintyRating absent = EvidenceCertaintyRating(
    fhirCode: 'absent',
  );

  /// no_change
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceCertaintyRating no_change = EvidenceCertaintyRating(
    fhirCode: 'no-change',
  );

  /// downcode1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceCertaintyRating downcode1 = EvidenceCertaintyRating(
    fhirCode: 'downcode1',
  );

  /// downcode2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceCertaintyRating downcode2 = EvidenceCertaintyRating(
    fhirCode: 'downcode2',
  );

  /// downcode3
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceCertaintyRating downcode3 = EvidenceCertaintyRating(
    fhirCode: 'downcode3',
  );

  /// upcode1
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceCertaintyRating upcode1 = EvidenceCertaintyRating(
    fhirCode: 'upcode1',
  );

  /// upcode2
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceCertaintyRating upcode2 = EvidenceCertaintyRating(
    fhirCode: 'upcode2',
  );

  /// For instances where an Element is present but not value

  static final EvidenceCertaintyRating elementOnly = EvidenceCertaintyRating();

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
    return EvidenceCertaintyRating(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [EvidenceCertaintyRating] from JSON.
  static EvidenceCertaintyRating fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EvidenceCertaintyRating.elementOnly.withElement(element);
    }
    return EvidenceCertaintyRating.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'EvidenceCertaintyRating.$fhirCode';
}
