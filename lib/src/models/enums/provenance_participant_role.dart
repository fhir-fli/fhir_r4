// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The role that a provenance participant played
class ProvenanceParticipantRole extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ProvenanceParticipantRole._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ProvenanceParticipantRole] from JSON.
  factory ProvenanceParticipantRole.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProvenanceParticipantRole.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ProvenanceParticipantRole cannot be constructed from JSON.',
      );
    }
    return ProvenanceParticipantRole._(value, element: element);
  }

  /// enterer
  static final ProvenanceParticipantRole enterer = ProvenanceParticipantRole._(
    'enterer',
  );

  /// performer
  static final ProvenanceParticipantRole performer =
      ProvenanceParticipantRole._(
    'performer',
  );

  /// author
  static final ProvenanceParticipantRole author = ProvenanceParticipantRole._(
    'author',
  );

  /// verifier
  static final ProvenanceParticipantRole verifier = ProvenanceParticipantRole._(
    'verifier',
  );

  /// legal
  static final ProvenanceParticipantRole legal = ProvenanceParticipantRole._(
    'legal',
  );

  /// attester
  static final ProvenanceParticipantRole attester = ProvenanceParticipantRole._(
    'attester',
  );

  /// informant
  static final ProvenanceParticipantRole informant =
      ProvenanceParticipantRole._(
    'informant',
  );

  /// custodian
  static final ProvenanceParticipantRole custodian =
      ProvenanceParticipantRole._(
    'custodian',
  );

  /// assembler
  static final ProvenanceParticipantRole assembler =
      ProvenanceParticipantRole._(
    'assembler',
  );

  /// composer
  static final ProvenanceParticipantRole composer = ProvenanceParticipantRole._(
    'composer',
  );

  /// For instances where an Element is present but not value

  static final ProvenanceParticipantRole elementOnly =
      ProvenanceParticipantRole._('');

  /// List of all enum-like values
  static final List<ProvenanceParticipantRole> values = [
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
  ProvenanceParticipantRole clone() => ProvenanceParticipantRole._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ProvenanceParticipantRole withElement(Element? newElement) {
    return ProvenanceParticipantRole._(value, element: newElement);
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
  ProvenanceParticipantRole copyWith({
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
    return ProvenanceParticipantRole._(
      newValue ?? value,
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
