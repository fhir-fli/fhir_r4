// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The aspect of quality, confidence, or certainty.
class EvidenceCertaintyType {
  // Private constructor for internal use (like enum)
  EvidenceCertaintyType._(this.fhirCode, {this.element});

  /// Factory constructor to create [EvidenceCertaintyType] from JSON.
  factory EvidenceCertaintyType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EvidenceCertaintyType.elementOnly.withElement(element);
    }
    return EvidenceCertaintyType._(value!, element: element);
  }

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// EvidenceCertaintyType values
  /// Overall
  static final EvidenceCertaintyType Overall = EvidenceCertaintyType._(
    'Overall',
  );

  /// RiskOfBias
  static final EvidenceCertaintyType RiskOfBias = EvidenceCertaintyType._(
    'RiskOfBias',
  );

  /// Inconsistency
  static final EvidenceCertaintyType Inconsistency = EvidenceCertaintyType._(
    'Inconsistency',
  );

  /// Indirectness
  static final EvidenceCertaintyType Indirectness = EvidenceCertaintyType._(
    'Indirectness',
  );

  /// Imprecision
  static final EvidenceCertaintyType Imprecision = EvidenceCertaintyType._(
    'Imprecision',
  );

  /// PublicationBias
  static final EvidenceCertaintyType PublicationBias = EvidenceCertaintyType._(
    'PublicationBias',
  );

  /// DoseResponseGradient
  static final EvidenceCertaintyType DoseResponseGradient =
      EvidenceCertaintyType._(
    'DoseResponseGradient',
  );

  /// PlausibleConfounding
  static final EvidenceCertaintyType PlausibleConfounding =
      EvidenceCertaintyType._(
    'PlausibleConfounding',
  );

  /// LargeEffect
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

  /// String representation
  @override
  String toString() => fhirCode;
}
