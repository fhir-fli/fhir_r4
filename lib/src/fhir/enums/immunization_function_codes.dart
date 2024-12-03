// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the function a practitioner or organization may play in the immunization event. This value set is provided as a suggestive example.
class ImmunizationFunctionCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ImmunizationFunctionCodes._(super.value, [super.element]);

  /// Factory constructor to create [ImmunizationFunctionCodes] from JSON.
  factory ImmunizationFunctionCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationFunctionCodes.elementOnly.withElement(element);
    }
    return ImmunizationFunctionCodes._(value, element);
  }

  /// OP
  static final ImmunizationFunctionCodes OP = ImmunizationFunctionCodes._(
    'OP',
  );

  /// AP
  static final ImmunizationFunctionCodes AP = ImmunizationFunctionCodes._(
    'AP',
  );

  /// For instances where an Element is present but not value

  static final ImmunizationFunctionCodes elementOnly =
      ImmunizationFunctionCodes._('');

  /// List of all enum-like values
  static final List<ImmunizationFunctionCodes> values = [
    OP,
    AP,
  ];

  /// Clones the current instance
  @override
  ImmunizationFunctionCodes clone() => ImmunizationFunctionCodes._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ImmunizationFunctionCodes setElement(
    String name,
    dynamic elementValue,
  ) {
    return ImmunizationFunctionCodes._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ImmunizationFunctionCodes withElement(Element? newElement) {
    return ImmunizationFunctionCodes._(value, newElement);
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
  ImmunizationFunctionCodes copyWith({
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
    return ImmunizationFunctionCodes._(
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
