// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes example Payment Type codes.
class ExamplePaymentTypeCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ExamplePaymentTypeCodes._(super.value, [super.element]);

  /// Factory constructor to create [ExamplePaymentTypeCodes] from JSON.
  factory ExamplePaymentTypeCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExamplePaymentTypeCodes.elementOnly.withElement(element);
    }
    return ExamplePaymentTypeCodes._(value, element);
  }

  /// complete
  static final ExamplePaymentTypeCodes complete = ExamplePaymentTypeCodes._(
    'complete',
  );

  /// partial
  static final ExamplePaymentTypeCodes partial = ExamplePaymentTypeCodes._(
    'partial',
  );

  /// For instances where an Element is present but not value

  static final ExamplePaymentTypeCodes elementOnly =
      ExamplePaymentTypeCodes._('');

  /// List of all enum-like values
  static final List<ExamplePaymentTypeCodes> values = [
    complete,
    partial,
  ];

  /// Clones the current instance
  @override
  ExamplePaymentTypeCodes clone() => ExamplePaymentTypeCodes._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ExamplePaymentTypeCodes setElement(
    String name,
    dynamic elementValue,
  ) {
    return ExamplePaymentTypeCodes._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ExamplePaymentTypeCodes withElement(Element? newElement) {
    return ExamplePaymentTypeCodes._(value, newElement);
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
  ExamplePaymentTypeCodes copyWith({
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
    return ExamplePaymentTypeCodes._(
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
