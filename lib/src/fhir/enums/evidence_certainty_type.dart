// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The aspect of quality, confidence, or certainty.
class EvidenceCertaintyType {
  // Private constructor for internal use (like enum)
  EvidenceCertaintyType._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// EvidenceCertaintyType values
  /// Overall
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceCertaintyType Overall = EvidenceCertaintyType._(
    'Overall',
  );

  /// RiskOfBias
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceCertaintyType RiskOfBias = EvidenceCertaintyType._(
    'RiskOfBias',
  );

  /// Inconsistency
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceCertaintyType Inconsistency = EvidenceCertaintyType._(
    'Inconsistency',
  );

  /// Indirectness
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceCertaintyType Indirectness = EvidenceCertaintyType._(
    'Indirectness',
  );

  /// Imprecision
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceCertaintyType Imprecision = EvidenceCertaintyType._(
    'Imprecision',
  );

  /// PublicationBias
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceCertaintyType PublicationBias = EvidenceCertaintyType._(
    'PublicationBias',
  );

  /// DoseResponseGradient
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceCertaintyType DoseResponseGradient =
      EvidenceCertaintyType._(
    'DoseResponseGradient',
  );

  /// PlausibleConfounding
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceCertaintyType PlausibleConfounding =
      EvidenceCertaintyType._(
    'PlausibleConfounding',
  );

  /// LargeEffect
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final EvidenceCertaintyType LargeEffect = EvidenceCertaintyType._(
    'LargeEffect',
  );

  /// For instances where an Element is present but not value

  static final EvidenceCertaintyType elementOnly = EvidenceCertaintyType._('');

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
    return EvidenceCertaintyType._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
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

  /// String representation
  @override
  String toString() => fhirCode;
}
