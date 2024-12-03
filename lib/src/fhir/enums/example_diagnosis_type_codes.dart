// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes example Diagnosis Type codes.
class ExampleDiagnosisTypeCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ExampleDiagnosisTypeCodes._(super.value, [super.element]);

  /// Factory constructor to create [ExampleDiagnosisTypeCodes] from JSON.
  factory ExampleDiagnosisTypeCodes.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleDiagnosisTypeCodes.elementOnly.withElement(element);
    }
    return ExampleDiagnosisTypeCodes._(value, element);
  }

  /// admitting
  static final ExampleDiagnosisTypeCodes admitting =
      ExampleDiagnosisTypeCodes._(
    'admitting',
  );

  /// clinical
  static final ExampleDiagnosisTypeCodes clinical = ExampleDiagnosisTypeCodes._(
    'clinical',
  );

  /// differential
  static final ExampleDiagnosisTypeCodes differential =
      ExampleDiagnosisTypeCodes._(
    'differential',
  );

  /// discharge
  static final ExampleDiagnosisTypeCodes discharge =
      ExampleDiagnosisTypeCodes._(
    'discharge',
  );

  /// laboratory
  static final ExampleDiagnosisTypeCodes laboratory =
      ExampleDiagnosisTypeCodes._(
    'laboratory',
  );

  /// nursing
  static final ExampleDiagnosisTypeCodes nursing = ExampleDiagnosisTypeCodes._(
    'nursing',
  );

  /// prenatal
  static final ExampleDiagnosisTypeCodes prenatal = ExampleDiagnosisTypeCodes._(
    'prenatal',
  );

  /// principal
  static final ExampleDiagnosisTypeCodes principal =
      ExampleDiagnosisTypeCodes._(
    'principal',
  );

  /// radiology
  static final ExampleDiagnosisTypeCodes radiology =
      ExampleDiagnosisTypeCodes._(
    'radiology',
  );

  /// remote
  static final ExampleDiagnosisTypeCodes remote = ExampleDiagnosisTypeCodes._(
    'remote',
  );

  /// retrospective
  static final ExampleDiagnosisTypeCodes retrospective =
      ExampleDiagnosisTypeCodes._(
    'retrospective',
  );

  /// self
  static final ExampleDiagnosisTypeCodes self = ExampleDiagnosisTypeCodes._(
    'self',
  );

  /// For instances where an Element is present but not value

  static final ExampleDiagnosisTypeCodes elementOnly =
      ExampleDiagnosisTypeCodes._('');

  /// List of all enum-like values
  static final List<ExampleDiagnosisTypeCodes> values = [
    admitting,
    clinical,
    differential,
    discharge,
    laboratory,
    nursing,
    prenatal,
    principal,
    radiology,
    remote,
    retrospective,
    self,
  ];

  /// Clones the current instance
  @override
  ExampleDiagnosisTypeCodes clone() =>
      ExampleDiagnosisTypeCodes._(value, element?.clone() as Element?);

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ExampleDiagnosisTypeCodes setElement(String name, dynamic elementValue) {
    return ExampleDiagnosisTypeCodes._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ExampleDiagnosisTypeCodes withElement(Element? newElement) {
    return ExampleDiagnosisTypeCodes._(value, newElement);
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
  ExampleDiagnosisTypeCodes copyWith({
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
    return ExampleDiagnosisTypeCodes._(
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
