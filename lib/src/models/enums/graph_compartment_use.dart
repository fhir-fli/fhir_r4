// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Defines how a compartment rule is used.
class GraphCompartmentUse extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  GraphCompartmentUse._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [GraphCompartmentUse] from JSON.
  factory GraphCompartmentUse.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GraphCompartmentUse.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'GraphCompartmentUse cannot be constructed from JSON.',
      );
    }
    return GraphCompartmentUse._(value, element: element);
  }

  /// condition
  static final GraphCompartmentUse condition = GraphCompartmentUse._(
    'condition',
  );

  /// requirement
  static final GraphCompartmentUse requirement = GraphCompartmentUse._(
    'requirement',
  );

  /// For instances where an Element is present but not value

  static final GraphCompartmentUse elementOnly = GraphCompartmentUse._('');

  /// List of all enum-like values
  static final List<GraphCompartmentUse> values = [
    condition,
    requirement,
  ];

  /// Clones the current instance
  @override
  GraphCompartmentUse clone() => GraphCompartmentUse._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  GraphCompartmentUse withElement(Element? newElement) {
    return GraphCompartmentUse._(value, element: newElement);
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
  GraphCompartmentUse copyWith({
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
    return GraphCompartmentUse._(
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
