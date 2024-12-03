// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Classification of relationship between a therapy and a contraindication or an indication.
class TherapyRelationshipType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  TherapyRelationshipType._(super.value, [super.element]);

  /// Factory constructor to create [TherapyRelationshipType] from JSON.
  factory TherapyRelationshipType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return TherapyRelationshipType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
          'TherapyRelationshipType cannot be constructed from JSON.');
    }
    return TherapyRelationshipType._(value, element);
  }

  /// contraindicated_only_with
  static final TherapyRelationshipType contraindicated_only_with =
      TherapyRelationshipType._(
    'contraindicated-only-with',
  );

  /// contraindicated_except_with
  static final TherapyRelationshipType contraindicated_except_with =
      TherapyRelationshipType._(
    'contraindicated-except-with',
  );

  /// indicated_only_with
  static final TherapyRelationshipType indicated_only_with =
      TherapyRelationshipType._(
    'indicated-only-with',
  );

  /// indicated_except_with
  static final TherapyRelationshipType indicated_except_with =
      TherapyRelationshipType._(
    'indicated-except-with',
  );

  /// indicated_only_before
  static final TherapyRelationshipType indicated_only_before =
      TherapyRelationshipType._(
    'indicated-only-before',
  );

  /// replace_other_therapy
  static final TherapyRelationshipType replace_other_therapy =
      TherapyRelationshipType._(
    'replace-other-therapy',
  );

  /// replace_other_therapy_contraindicated
  static final TherapyRelationshipType replace_other_therapy_contraindicated =
      TherapyRelationshipType._(
    'replace-other-therapy-contraindicated',
  );

  /// replace_other_therapy_not_tolerated
  static final TherapyRelationshipType replace_other_therapy_not_tolerated =
      TherapyRelationshipType._(
    'replace-other-therapy-not-tolerated',
  );

  /// replace_other_therapy_not_effective
  static final TherapyRelationshipType replace_other_therapy_not_effective =
      TherapyRelationshipType._(
    'replace-other-therapy-not-effective',
  );

  /// For instances where an Element is present but not value

  static final TherapyRelationshipType elementOnly =
      TherapyRelationshipType._('');

  /// List of all enum-like values
  static final List<TherapyRelationshipType> values = [
    contraindicated_only_with,
    contraindicated_except_with,
    indicated_only_with,
    indicated_except_with,
    indicated_only_before,
    replace_other_therapy,
    replace_other_therapy_contraindicated,
    replace_other_therapy_not_tolerated,
    replace_other_therapy_not_effective,
  ];

  /// Clones the current instance
  @override
  TherapyRelationshipType clone() => TherapyRelationshipType._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  TherapyRelationshipType setElement(
    String name,
    dynamic elementValue,
  ) {
    return TherapyRelationshipType._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  TherapyRelationshipType withElement(Element? newElement) {
    return TherapyRelationshipType._(value, newElement);
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
  TherapyRelationshipType copyWith({
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
    return TherapyRelationshipType._(
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
