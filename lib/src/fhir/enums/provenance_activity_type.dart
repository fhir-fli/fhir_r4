// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set contains representative Activity Type codes, which includes codes from the HL7 DocumentCompletion, ActStatus, and DataOperations code system, W3C PROV-DM and PROV-N concepts and display names, several HL7 Lifecycle Event codes for which there are agreed upon definitions, and non-duplicated codes from the HL7 Security and Privacy Ontology Operations codes.
class ProvenanceActivityType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ProvenanceActivityType._(super.value, [super.element]);

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
    return ProvenanceActivityType._(value, element);
  }

  /// LA
  static final ProvenanceActivityType LA = ProvenanceActivityType._(
    'LA',
  );

  /// ANONY
  static final ProvenanceActivityType ANONY = ProvenanceActivityType._(
    'ANONY',
  );

  /// DEID
  static final ProvenanceActivityType DEID = ProvenanceActivityType._(
    'DEID',
  );

  /// MASK
  static final ProvenanceActivityType MASK = ProvenanceActivityType._(
    'MASK',
  );

  /// LABEL
  static final ProvenanceActivityType LABEL = ProvenanceActivityType._(
    'LABEL',
  );

  /// PSEUD
  static final ProvenanceActivityType PSEUD = ProvenanceActivityType._(
    'PSEUD',
  );

  /// CREATE
  static final ProvenanceActivityType CREATE = ProvenanceActivityType._(
    'CREATE',
  );

  /// DELETE
  static final ProvenanceActivityType DELETE = ProvenanceActivityType._(
    'DELETE',
  );

  /// UPDATE
  static final ProvenanceActivityType UPDATE = ProvenanceActivityType._(
    'UPDATE',
  );

  /// APPEND
  static final ProvenanceActivityType APPEND = ProvenanceActivityType._(
    'APPEND',
  );

  /// NULLIFY
  static final ProvenanceActivityType NULLIFY = ProvenanceActivityType._(
    'NULLIFY',
  );

  /// For instances where an Element is present but not value

  static final ProvenanceActivityType elementOnly =
      ProvenanceActivityType._('');

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
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ProvenanceActivityType setElement(
    String name,
    dynamic elementValue,
  ) {
    return ProvenanceActivityType._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ProvenanceActivityType withElement(Element? newElement) {
    return ProvenanceActivityType._(value, newElement);
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
    return ProvenanceActivityType._(
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
