// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// A legal or regulatory framework against which an authorization is granted, or other reasons for it.
@Entity()
class RegulatedAuthorizationBasis extends FhirCode {
  /// Factory constructor to create [RegulatedAuthorizationBasis] from JSON.
  factory RegulatedAuthorizationBasis.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RegulatedAuthorizationBasis.elementOnly(element);
    }
    if (values.contains(value)) {
      return RegulatedAuthorizationBasis._(value, element);
    }
    throw ArgumentError(
      'RegulatedAuthorizationBasis.fromJson: JSON value is not a valid value',
    );
  }

  /// Full
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RegulatedAuthorizationBasis.Full([this.element])
      : dbValue = 'Full',
        super('Full', element);

  /// NewSubstance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RegulatedAuthorizationBasis.NewSubstance([this.element])
      : dbValue = 'NewSubstance',
        super('NewSubstance', element);

  /// KnownSubstance
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RegulatedAuthorizationBasis.KnownSubstance([this.element])
      : dbValue = 'KnownSubstance',
        super('KnownSubstance', element);

  /// SimilarBiological
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RegulatedAuthorizationBasis.SimilarBiological([this.element])
      : dbValue = 'SimilarBiological',
        super('SimilarBiological', element);

  /// Well_establishedUse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RegulatedAuthorizationBasis.Well_establishedUse([this.element])
      : dbValue = 'Well-establishedUse',
        super('Well-establishedUse', element);

  /// TraditionalUse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RegulatedAuthorizationBasis.TraditionalUse([this.element])
      : dbValue = 'TraditionalUse',
        super('TraditionalUse', element);

  /// Bibliographical
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RegulatedAuthorizationBasis.Bibliographical([this.element])
      : dbValue = 'Bibliographical',
        super('Bibliographical', element);

  /// KnownHumanBlood
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RegulatedAuthorizationBasis.KnownHumanBlood([this.element])
      : dbValue = 'KnownHumanBlood',
        super('KnownHumanBlood', element);

  /// TemporaryUse
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RegulatedAuthorizationBasis.TemporaryUse([this.element])
      : dbValue = 'TemporaryUse',
        super('TemporaryUse', element);

  /// ParallelTrade
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RegulatedAuthorizationBasis.ParallelTrade([this.element])
      : dbValue = 'ParallelTrade',
        super('ParallelTrade', element);

  /// For instances where an Element is present but not value

  RegulatedAuthorizationBasis.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  RegulatedAuthorizationBasis._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    'Full',
    'NewSubstance',
    'KnownSubstance',
    'SimilarBiological',
    'Well-establishedUse',
    'TraditionalUse',
    'Bibliographical',
    'KnownHumanBlood',
    'TemporaryUse',
    'ParallelTrade',
  ];

  /// Returns the enum value with an element attached
  RegulatedAuthorizationBasis withElement(Element? newElement) {
    return RegulatedAuthorizationBasis._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'RegulatedAuthorizationBasis.$value';
}
