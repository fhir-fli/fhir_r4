// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes example Procedure Type codes.
class ExampleProcedureTypeCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ExampleProcedureTypeCodes._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ExampleProcedureTypeCodes] from JSON.
  factory ExampleProcedureTypeCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleProcedureTypeCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ExampleProcedureTypeCodes cannot be constructed from JSON.',
      );
    }
    return ExampleProcedureTypeCodes._(value: value, element: element);
  }

  /// primary
  static final ExampleProcedureTypeCodes primary = ExampleProcedureTypeCodes._(
    value: 'primary',
  );

  /// secondary
  static final ExampleProcedureTypeCodes secondary =
      ExampleProcedureTypeCodes._(
    value: 'secondary',
  );

  /// For instances where an Element is present but not value

  static final ExampleProcedureTypeCodes elementOnly =
      ExampleProcedureTypeCodes._(value: '');

  /// List of all enum-like values
  static final List<ExampleProcedureTypeCodes> values = [
    primary,
    secondary,
  ];

  /// Clones the current instance
  @override
  ExampleProcedureTypeCodes clone() => ExampleProcedureTypeCodes._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ExampleProcedureTypeCodes withElement(Element? newElement) {
    return ExampleProcedureTypeCodes._(value: value, element: newElement);
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
  ExampleProcedureTypeCodes copyWith({
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
    return ExampleProcedureTypeCodes._(
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
