// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The type of participation a provenance participant.
class ProvenanceParticipantType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ProvenanceParticipantType._(super.value, [super.element]);

  /// Factory constructor to create [ProvenanceParticipantType] from JSON.
  factory ProvenanceParticipantType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProvenanceParticipantType.elementOnly.withElement(element);
    }
    return ProvenanceParticipantType._(value, element);
  }

  /// enterer
  static final ProvenanceParticipantType enterer = ProvenanceParticipantType._(
    'enterer',
  );

  /// performer
  static final ProvenanceParticipantType performer =
      ProvenanceParticipantType._(
    'performer',
  );

  /// author
  static final ProvenanceParticipantType author = ProvenanceParticipantType._(
    'author',
  );

  /// verifier
  static final ProvenanceParticipantType verifier = ProvenanceParticipantType._(
    'verifier',
  );

  /// legal
  static final ProvenanceParticipantType legal = ProvenanceParticipantType._(
    'legal',
  );

  /// attester
  static final ProvenanceParticipantType attester = ProvenanceParticipantType._(
    'attester',
  );

  /// informant
  static final ProvenanceParticipantType informant =
      ProvenanceParticipantType._(
    'informant',
  );

  /// custodian
  static final ProvenanceParticipantType custodian =
      ProvenanceParticipantType._(
    'custodian',
  );

  /// assembler
  static final ProvenanceParticipantType assembler =
      ProvenanceParticipantType._(
    'assembler',
  );

  /// composer
  static final ProvenanceParticipantType composer = ProvenanceParticipantType._(
    'composer',
  );

  /// For instances where an Element is present but not value

  static final ProvenanceParticipantType elementOnly =
      ProvenanceParticipantType._('');

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
  ProvenanceParticipantType clone() =>
      ProvenanceParticipantType._(value, element?.clone() as Element?);

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ProvenanceParticipantType setElement(String name, dynamic elementValue) {
    return ProvenanceParticipantType._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ProvenanceParticipantType withElement(Element? newElement) {
    return ProvenanceParticipantType._(value, newElement);
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return ProvenanceParticipantType._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
        children: children ?? this.element?.children,
        namedChildren: namedChildren ?? this.element?.namedChildren,
      ),
    );
  }
}
