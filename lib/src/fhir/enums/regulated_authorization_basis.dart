// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A legal or regulatory framework against which an authorization is granted, or other reasons for it.
class RegulatedAuthorizationBasis {
  // Private constructor for internal use (like enum)
  RegulatedAuthorizationBasis._(this.fhirCode, {this.element});

  /// The String value of this enum (FHIR code)
  final String fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// RegulatedAuthorizationBasis values
  /// Full
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationBasis Full = RegulatedAuthorizationBasis._(
    'Full',
  );

  /// NewSubstance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationBasis NewSubstance =
      RegulatedAuthorizationBasis._(
    'NewSubstance',
  );

  /// KnownSubstance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationBasis KnownSubstance =
      RegulatedAuthorizationBasis._(
    'KnownSubstance',
  );

  /// SimilarBiological
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationBasis SimilarBiological =
      RegulatedAuthorizationBasis._(
    'SimilarBiological',
  );

  /// Well_establishedUse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationBasis Well_establishedUse =
      RegulatedAuthorizationBasis._(
    'Well-establishedUse',
  );

  /// TraditionalUse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationBasis TraditionalUse =
      RegulatedAuthorizationBasis._(
    'TraditionalUse',
  );

  /// Bibliographical
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationBasis Bibliographical =
      RegulatedAuthorizationBasis._(
    'Bibliographical',
  );

  /// KnownHumanBlood
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationBasis KnownHumanBlood =
      RegulatedAuthorizationBasis._(
    'KnownHumanBlood',
  );

  /// TemporaryUse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationBasis TemporaryUse =
      RegulatedAuthorizationBasis._(
    'TemporaryUse',
  );

  /// ParallelTrade
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationBasis ParallelTrade =
      RegulatedAuthorizationBasis._(
    'ParallelTrade',
  );

  /// For instances where an Element is present but not value

  static final RegulatedAuthorizationBasis elementOnly =
      RegulatedAuthorizationBasis._('');

  /// List of all enum-like values
  static final List<RegulatedAuthorizationBasis> values = [
    Full,
    NewSubstance,
    KnownSubstance,
    SimilarBiological,
    Well_establishedUse,
    TraditionalUse,
    Bibliographical,
    KnownHumanBlood,
    TemporaryUse,
    ParallelTrade,
  ];

  /// Returns the enum value with an element attached
  RegulatedAuthorizationBasis withElement(Element? newElement) {
    return RegulatedAuthorizationBasis._(fhirCode, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [RegulatedAuthorizationBasis] from JSON.
  static RegulatedAuthorizationBasis fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RegulatedAuthorizationBasis.elementOnly.withElement(element);
    }
    return RegulatedAuthorizationBasis.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'RegulatedAuthorizationBasis.$fhirCode';
}
