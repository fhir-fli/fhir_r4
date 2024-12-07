// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set contains representative Activity Type codes, which includes codes from the HL7 DocumentCompletion, ActStatus, and DataOperations code system, W3C PROV-DM and PROV-N concepts and display names, several HL7 Lifecycle Event codes for which there are agreed upon definitions, and non-duplicated codes from the HL7 Security and Privacy Ontology Operations codes.
class ProvenanceActivityType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ProvenanceActivityType._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ProvenanceActivityType] from JSON.
  factory ProvenanceActivityType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProvenanceActivityType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ProvenanceActivityType cannot be constructed from JSON.',
      );
    }
    return ProvenanceActivityType._(value: value, element: element);
  }

  /// LA
  static final ProvenanceActivityType LA = ProvenanceActivityType._(
    value: 'LA',
  );

  /// ANONY
  static final ProvenanceActivityType ANONY = ProvenanceActivityType._(
    value: 'ANONY',
  );

  /// DEID
  static final ProvenanceActivityType DEID = ProvenanceActivityType._(
    value: 'DEID',
  );

  /// MASK
  static final ProvenanceActivityType MASK = ProvenanceActivityType._(
    value: 'MASK',
  );

  /// LABEL
  static final ProvenanceActivityType LABEL = ProvenanceActivityType._(
    value: 'LABEL',
  );

  /// PSEUD
  static final ProvenanceActivityType PSEUD = ProvenanceActivityType._(
    value: 'PSEUD',
  );

  /// CREATE
  static final ProvenanceActivityType CREATE = ProvenanceActivityType._(
    value: 'CREATE',
  );

  /// DELETE
  static final ProvenanceActivityType DELETE = ProvenanceActivityType._(
    value: 'DELETE',
  );

  /// UPDATE
  static final ProvenanceActivityType UPDATE = ProvenanceActivityType._(
    value: 'UPDATE',
  );

  /// APPEND
  static final ProvenanceActivityType APPEND = ProvenanceActivityType._(
    value: 'APPEND',
  );

  /// NULLIFY
  static final ProvenanceActivityType NULLIFY = ProvenanceActivityType._(
    value: 'NULLIFY',
  );

  /// For instances where an Element is present but not value

  static final ProvenanceActivityType elementOnly =
      ProvenanceActivityType._(value: '');

  /// List of all enum-like values
  static final List<ProvenanceActivityType> values = [
    LA,
    ANONY,
    DEID,
    MASK,
    LABEL,
    PSEUD,
    CREATE,
    DELETE,
    UPDATE,
    APPEND,
    NULLIFY,
  ];

  /// Clones the current instance
  @override
  ProvenanceActivityType clone() => ProvenanceActivityType._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ProvenanceActivityType withElement(Element? newElement) {
    return ProvenanceActivityType._(value: value, element: newElement);
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
  ProvenanceActivityType copyWith({
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
    return ProvenanceActivityType._(
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
