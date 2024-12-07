// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of participation a provenance participant.
class ProvenanceParticipantType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ProvenanceParticipantType._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ProvenanceParticipantType] from JSON.
  factory ProvenanceParticipantType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProvenanceParticipantType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ProvenanceParticipantType cannot be constructed from JSON.',
      );
    }
    return ProvenanceParticipantType._(value: value, element: element);
  }

  /// enterer
  static final ProvenanceParticipantType enterer = ProvenanceParticipantType._(
    value: 'enterer',
  );

  /// performer
  static final ProvenanceParticipantType performer =
      ProvenanceParticipantType._(
    value: 'performer',
  );

  /// author
  static final ProvenanceParticipantType author = ProvenanceParticipantType._(
    value: 'author',
  );

  /// verifier
  static final ProvenanceParticipantType verifier = ProvenanceParticipantType._(
    value: 'verifier',
  );

  /// legal
  static final ProvenanceParticipantType legal = ProvenanceParticipantType._(
    value: 'legal',
  );

  /// attester
  static final ProvenanceParticipantType attester = ProvenanceParticipantType._(
    value: 'attester',
  );

  /// informant
  static final ProvenanceParticipantType informant =
      ProvenanceParticipantType._(
    value: 'informant',
  );

  /// custodian
  static final ProvenanceParticipantType custodian =
      ProvenanceParticipantType._(
    value: 'custodian',
  );

  /// assembler
  static final ProvenanceParticipantType assembler =
      ProvenanceParticipantType._(
    value: 'assembler',
  );

  /// composer
  static final ProvenanceParticipantType composer = ProvenanceParticipantType._(
    value: 'composer',
  );

  /// For instances where an Element is present but not value

  static final ProvenanceParticipantType elementOnly =
      ProvenanceParticipantType._(value: '');

  /// List of all enum-like values
  static final List<ProvenanceParticipantType> values = [
    enterer,
    performer,
    author,
    verifier,
    legal,
    attester,
    informant,
    custodian,
    assembler,
    composer,
  ];

  /// Clones the current instance
  @override
  ProvenanceParticipantType clone() => ProvenanceParticipantType._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ProvenanceParticipantType withElement(Element? newElement) {
    return ProvenanceParticipantType._(value: value, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  ProvenanceParticipantType copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return ProvenanceParticipantType._(
      value: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
