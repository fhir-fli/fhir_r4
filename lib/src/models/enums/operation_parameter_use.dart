// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Whether an operation parameter is an input or an output parameter.
class OperationParameterUse extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  OperationParameterUse._(super.value, [super.element]);

  /// Factory constructor to create [OperationParameterUse] from JSON.
  factory OperationParameterUse.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return OperationParameterUse.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'OperationParameterUse cannot be constructed from JSON.',
      );
    }
    return OperationParameterUse._(value, element);
  }

  /// in_
  static final OperationParameterUse in_ = OperationParameterUse._(
    'in',
  );

  /// out
  static final OperationParameterUse out = OperationParameterUse._(
    'out',
  );

  /// For instances where an Element is present but not value

  static final OperationParameterUse elementOnly = OperationParameterUse._('');

  /// List of all enum-like values
  static final List<OperationParameterUse> values = [
    in_,
    out,
  ];

  /// Clones the current instance
  @override
  OperationParameterUse clone() => OperationParameterUse._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  OperationParameterUse setElement(
    String name,
    dynamic elementValue,
  ) {
    return OperationParameterUse._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  OperationParameterUse withElement(Element? newElement) {
    return OperationParameterUse._(value, newElement);
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
  OperationParameterUse copyWith({
    String? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return OperationParameterUse._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
    );
  }
}
