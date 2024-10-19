// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// This value set defines a set of codes that can be used to indicate the meaning/use of a reference range for a particular target population.
@collection
class ObservationReferenceRangeMeaningCodes {
  /// Constructor for internal use (like enum)
  ObservationReferenceRangeMeaningCodes({this.fhirCode, this.element})
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

  /// ObservationReferenceRangeMeaningCodes values
  /// type
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObservationReferenceRangeMeaningCodes type =
      ObservationReferenceRangeMeaningCodes(
    fhirCode: 'type',
  );

  /// normal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObservationReferenceRangeMeaningCodes normal =
      ObservationReferenceRangeMeaningCodes(
    fhirCode: 'normal',
  );

  /// recommended
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObservationReferenceRangeMeaningCodes recommended =
      ObservationReferenceRangeMeaningCodes(
    fhirCode: 'recommended',
  );

  /// treatment
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObservationReferenceRangeMeaningCodes treatment =
      ObservationReferenceRangeMeaningCodes(
    fhirCode: 'treatment',
  );

  /// therapeutic
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObservationReferenceRangeMeaningCodes therapeutic =
      ObservationReferenceRangeMeaningCodes(
    fhirCode: 'therapeutic',
  );

  /// pre
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObservationReferenceRangeMeaningCodes pre =
      ObservationReferenceRangeMeaningCodes(
    fhirCode: 'pre',
  );

  /// post
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObservationReferenceRangeMeaningCodes post =
      ObservationReferenceRangeMeaningCodes(
    fhirCode: 'post',
  );

  /// endocrine
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObservationReferenceRangeMeaningCodes endocrine =
      ObservationReferenceRangeMeaningCodes(
    fhirCode: 'endocrine',
  );

  /// pre_puberty
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObservationReferenceRangeMeaningCodes pre_puberty =
      ObservationReferenceRangeMeaningCodes(
    fhirCode: 'pre-puberty',
  );

  /// follicular
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObservationReferenceRangeMeaningCodes follicular =
      ObservationReferenceRangeMeaningCodes(
    fhirCode: 'follicular',
  );

  /// midcycle
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObservationReferenceRangeMeaningCodes midcycle =
      ObservationReferenceRangeMeaningCodes(
    fhirCode: 'midcycle',
  );

  /// luteal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObservationReferenceRangeMeaningCodes luteal =
      ObservationReferenceRangeMeaningCodes(
    fhirCode: 'luteal',
  );

  /// postmenopausal
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final ObservationReferenceRangeMeaningCodes postmenopausal =
      ObservationReferenceRangeMeaningCodes(
    fhirCode: 'postmenopausal',
  );

  /// For instances where an Element is present but not value

  static final ObservationReferenceRangeMeaningCodes elementOnly =
      ObservationReferenceRangeMeaningCodes();

  /// List of all enum-like values
  static final List<ObservationReferenceRangeMeaningCodes> values = [
    type,
    normal,
    recommended,
    treatment,
    therapeutic,
    pre,
    post,
    endocrine,
    pre_puberty,
    follicular,
    midcycle,
    luteal,
    postmenopausal,
  ];

  /// Returns the enum value with an element attached
  ObservationReferenceRangeMeaningCodes withElement(Element? newElement) {
    return ObservationReferenceRangeMeaningCodes(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [ObservationReferenceRangeMeaningCodes] from JSON.
  static ObservationReferenceRangeMeaningCodes fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ObservationReferenceRangeMeaningCodes.elementOnly
          .withElement(element);
    }
    return ObservationReferenceRangeMeaningCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ObservationReferenceRangeMeaningCodes.$fhirCode';
}
