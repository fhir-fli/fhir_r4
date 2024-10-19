// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// A legal or regulatory framework against which an authorization is granted, or other reasons for it.
@collection
class RegulatedAuthorizationBasis {
  /// Constructor for internal use (like enum)
  RegulatedAuthorizationBasis({this.fhirCode, this.element})
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

  /// RegulatedAuthorizationBasis values
  /// Full
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationBasis Full = RegulatedAuthorizationBasis(
    fhirCode: 'Full',
  );

  /// NewSubstance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationBasis NewSubstance =
      RegulatedAuthorizationBasis(
    fhirCode: 'NewSubstance',
  );

  /// KnownSubstance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationBasis KnownSubstance =
      RegulatedAuthorizationBasis(
    fhirCode: 'KnownSubstance',
  );

  /// SimilarBiological
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationBasis SimilarBiological =
      RegulatedAuthorizationBasis(
    fhirCode: 'SimilarBiological',
  );

  /// Well_establishedUse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationBasis Well_establishedUse =
      RegulatedAuthorizationBasis(
    fhirCode: 'Well-establishedUse',
  );

  /// TraditionalUse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationBasis TraditionalUse =
      RegulatedAuthorizationBasis(
    fhirCode: 'TraditionalUse',
  );

  /// Bibliographical
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationBasis Bibliographical =
      RegulatedAuthorizationBasis(
    fhirCode: 'Bibliographical',
  );

  /// KnownHumanBlood
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationBasis KnownHumanBlood =
      RegulatedAuthorizationBasis(
    fhirCode: 'KnownHumanBlood',
  );

  /// TemporaryUse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationBasis TemporaryUse =
      RegulatedAuthorizationBasis(
    fhirCode: 'TemporaryUse',
  );

  /// ParallelTrade
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RegulatedAuthorizationBasis ParallelTrade =
      RegulatedAuthorizationBasis(
    fhirCode: 'ParallelTrade',
  );

  /// For instances where an Element is present but not value

  static final RegulatedAuthorizationBasis elementOnly =
      RegulatedAuthorizationBasis();

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
    return RegulatedAuthorizationBasis(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
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
