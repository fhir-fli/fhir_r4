// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes sample Provider Qualification codes.
class ExampleProviderQualificationCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ExampleProviderQualificationCodes._(super.value, [super.element]);

  /// Factory constructor to create [ExampleProviderQualificationCodes] from JSON.
  factory ExampleProviderQualificationCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleProviderQualificationCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
          'ExampleProviderQualificationCodes cannot be constructed from JSON.');
    }
    return ExampleProviderQualificationCodes._(value, element);
  }

  /// value311405
  static final ExampleProviderQualificationCodes value311405 =
      ExampleProviderQualificationCodes._(
    '311405',
  );

  /// value604215
  static final ExampleProviderQualificationCodes value604215 =
      ExampleProviderQualificationCodes._(
    '604215',
  );

  /// value604210
  static final ExampleProviderQualificationCodes value604210 =
      ExampleProviderQualificationCodes._(
    '604210',
  );

  /// For instances where an Element is present but not value

  static final ExampleProviderQualificationCodes elementOnly =
      ExampleProviderQualificationCodes._('');

  /// List of all enum-like values
  static final List<ExampleProviderQualificationCodes> values = [
    value311405,
    value604215,
    value604210,
  ];

  /// Clones the current instance
  @override
  ExampleProviderQualificationCodes clone() =>
      ExampleProviderQualificationCodes._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ExampleProviderQualificationCodes setElement(
    String name,
    dynamic elementValue,
  ) {
    return ExampleProviderQualificationCodes._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ExampleProviderQualificationCodes withElement(Element? newElement) {
    return ExampleProviderQualificationCodes._(value, newElement);
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
  ExampleProviderQualificationCodes copyWith({
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
    return ExampleProviderQualificationCodes._(
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
