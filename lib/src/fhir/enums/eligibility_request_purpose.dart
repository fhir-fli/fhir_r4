// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A code specifying the types of information being requested.
class EligibilityRequestPurpose extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  EligibilityRequestPurpose._(super.value, [super.element]);

  /// Factory constructor to create [EligibilityRequestPurpose] from JSON.
  factory EligibilityRequestPurpose.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EligibilityRequestPurpose.elementOnly.withElement(element);
    }
    return EligibilityRequestPurpose._(value, element);
  }

  /// auth_requirements
  static final EligibilityRequestPurpose auth_requirements =
      EligibilityRequestPurpose._(
    'auth-requirements',
  );

  /// benefits
  static final EligibilityRequestPurpose benefits = EligibilityRequestPurpose._(
    'benefits',
  );

  /// discovery
  static final EligibilityRequestPurpose discovery =
      EligibilityRequestPurpose._(
    'discovery',
  );

  /// validation
  static final EligibilityRequestPurpose validation =
      EligibilityRequestPurpose._(
    'validation',
  );

  /// For instances where an Element is present but not value

  static final EligibilityRequestPurpose elementOnly =
      EligibilityRequestPurpose._('');

  /// List of all enum-like values
  static final List<EligibilityRequestPurpose> values = [
    auth_requirements,
    benefits,
    discovery,
    validation,
  ];

  /// Clones the current instance
  @override
  EligibilityRequestPurpose clone() => EligibilityRequestPurpose._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  EligibilityRequestPurpose setElement(
    String name,
    dynamic elementValue,
  ) {
    return EligibilityRequestPurpose._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  EligibilityRequestPurpose withElement(Element? newElement) {
    return EligibilityRequestPurpose._(value, newElement);
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
  EligibilityRequestPurpose copyWith({
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
    return EligibilityRequestPurpose._(
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
