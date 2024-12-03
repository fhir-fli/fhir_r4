// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Whether a reference needs to be version specific or version independent, or whether either can be used.
class ReferenceVersionRules extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ReferenceVersionRules._(super.value, [super.element]);

  /// Factory constructor to create [ReferenceVersionRules] from JSON.
  factory ReferenceVersionRules.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ReferenceVersionRules.elementOnly.withElement(element);
    }
    return ReferenceVersionRules._(value, element);
  }

  /// either
  static final ReferenceVersionRules either = ReferenceVersionRules._(
    'either',
  );

  /// independent
  static final ReferenceVersionRules independent = ReferenceVersionRules._(
    'independent',
  );

  /// specific
  static final ReferenceVersionRules specific = ReferenceVersionRules._(
    'specific',
  );

  /// For instances where an Element is present but not value

  static final ReferenceVersionRules elementOnly = ReferenceVersionRules._('');

  /// List of all enum-like values
  static final List<ReferenceVersionRules> values = [
    either,
    independent,
    specific,
  ];

  /// Clones the current instance
  @override
  ReferenceVersionRules clone() => ReferenceVersionRules._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ReferenceVersionRules setElement(
    String name,
    dynamic elementValue,
  ) {
    return ReferenceVersionRules._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ReferenceVersionRules withElement(Element? newElement) {
    return ReferenceVersionRules._(value, newElement);
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
  ReferenceVersionRules copyWith({
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
    return ReferenceVersionRules._(
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
