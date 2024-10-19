// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// The aspect of quality, confidence, or certainty.
@collection
class EvidenceCertaintyType {
  /// Constructor for internal use (like enum)
  EvidenceCertaintyType({this.fhirCode, this.element})
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

  /// EvidenceCertaintyType values
  /// Overall
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceCertaintyType Overall = EvidenceCertaintyType(
    fhirCode: 'Overall',
  );

  /// RiskOfBias
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceCertaintyType RiskOfBias = EvidenceCertaintyType(
    fhirCode: 'RiskOfBias',
  );

  /// Inconsistency
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceCertaintyType Inconsistency = EvidenceCertaintyType(
    fhirCode: 'Inconsistency',
  );

  /// Indirectness
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceCertaintyType Indirectness = EvidenceCertaintyType(
    fhirCode: 'Indirectness',
  );

  /// Imprecision
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceCertaintyType Imprecision = EvidenceCertaintyType(
    fhirCode: 'Imprecision',
  );

  /// PublicationBias
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceCertaintyType PublicationBias = EvidenceCertaintyType(
    fhirCode: 'PublicationBias',
  );

  /// DoseResponseGradient
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceCertaintyType DoseResponseGradient =
      EvidenceCertaintyType(
    fhirCode: 'DoseResponseGradient',
  );

  /// PlausibleConfounding
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceCertaintyType PlausibleConfounding =
      EvidenceCertaintyType(
    fhirCode: 'PlausibleConfounding',
  );

  /// LargeEffect
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceCertaintyType LargeEffect = EvidenceCertaintyType(
    fhirCode: 'LargeEffect',
  );

  /// For instances where an Element is present but not value

  static final EvidenceCertaintyType elementOnly = EvidenceCertaintyType();

  /// List of all enum-like values
  static final List<EvidenceCertaintyType> values = [
    Overall,
    RiskOfBias,
    Inconsistency,
    Indirectness,
    Imprecision,
    PublicationBias,
    DoseResponseGradient,
    PlausibleConfounding,
    LargeEffect,
  ];

  /// Returns the enum value with an element attached
  EvidenceCertaintyType withElement(Element? newElement) {
    return EvidenceCertaintyType(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [EvidenceCertaintyType] from JSON.
  static EvidenceCertaintyType fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EvidenceCertaintyType.elementOnly.withElement(element);
    }
    return EvidenceCertaintyType.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'EvidenceCertaintyType.$fhirCode';
}
