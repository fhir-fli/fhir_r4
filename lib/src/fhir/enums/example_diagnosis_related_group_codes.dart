// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes example Diagnosis Related Group codes.
class ExampleDiagnosisRelatedGroupCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ExampleDiagnosisRelatedGroupCodes._(super.value, [super.element]);

  /// Factory constructor to create [ExampleDiagnosisRelatedGroupCodes] from JSON.
  factory ExampleDiagnosisRelatedGroupCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleDiagnosisRelatedGroupCodes.elementOnly.withElement(element);
    }
    return ExampleDiagnosisRelatedGroupCodes._(value, element);
  }

  /// value100
  static final ExampleDiagnosisRelatedGroupCodes value100 =
      ExampleDiagnosisRelatedGroupCodes._(
    '100',
  );

  /// value101
  static final ExampleDiagnosisRelatedGroupCodes value101 =
      ExampleDiagnosisRelatedGroupCodes._(
    '101',
  );

  /// value300
  static final ExampleDiagnosisRelatedGroupCodes value300 =
      ExampleDiagnosisRelatedGroupCodes._(
    '300',
  );

  /// value400
  static final ExampleDiagnosisRelatedGroupCodes value400 =
      ExampleDiagnosisRelatedGroupCodes._(
    '400',
  );

  /// For instances where an Element is present but not value

  static final ExampleDiagnosisRelatedGroupCodes elementOnly =
      ExampleDiagnosisRelatedGroupCodes._('');

  /// List of all enum-like values
  static final List<ExampleDiagnosisRelatedGroupCodes> values = [
    value100,
    value101,
    value300,
    value400,
  ];

  /// Clones the current instance
  @override
  ExampleDiagnosisRelatedGroupCodes clone() =>
      ExampleDiagnosisRelatedGroupCodes._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ExampleDiagnosisRelatedGroupCodes setElement(
    String name,
    dynamic elementValue,
  ) {
    return ExampleDiagnosisRelatedGroupCodes._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ExampleDiagnosisRelatedGroupCodes withElement(Element? newElement) {
    return ExampleDiagnosisRelatedGroupCodes._(value, newElement);
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
  ExampleDiagnosisRelatedGroupCodes copyWith({
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
    return ExampleDiagnosisRelatedGroupCodes._(
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
