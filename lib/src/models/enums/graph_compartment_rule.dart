// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// How a compartment must be linked.
class GraphCompartmentRule extends FhirCode {
  // Private constructor for internal use (like enum)
  GraphCompartmentRule._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Factory constructor to create [GraphCompartmentRule] from JSON.
  factory GraphCompartmentRule.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GraphCompartmentRule.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'GraphCompartmentRule cannot be constructed from JSON.',
      );
    }
    return GraphCompartmentRule._(
      value,
      element: element,
    );
  }

  /// identical
  static final GraphCompartmentRule identical = GraphCompartmentRule._(
    'identical',
  );

  /// matching
  static final GraphCompartmentRule matching = GraphCompartmentRule._(
    'matching',
  );

  /// different
  static final GraphCompartmentRule different = GraphCompartmentRule._(
    'different',
  );

  /// custom
  static final GraphCompartmentRule custom = GraphCompartmentRule._(
    'custom',
  );

  /// For instances where an Element is present but not value

  static final GraphCompartmentRule elementOnly = GraphCompartmentRule._('');

  /// List of all enum-like values
  static final List<GraphCompartmentRule> values = [
    identical,
    matching,
    different,
    custom,
  ];

  /// Clones the current instance
  @override
  GraphCompartmentRule clone() => GraphCompartmentRule._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  GraphCompartmentRule withElement(Element? newElement) {
    return GraphCompartmentRule._(
      value,
      element: newElement,
    );
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
  GraphCompartmentRule copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return GraphCompartmentRule._(
      newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath,
    );
  }
}
