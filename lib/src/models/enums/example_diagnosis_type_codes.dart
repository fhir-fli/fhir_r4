// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes example Diagnosis Type codes.
class ExampleDiagnosisTypeCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ExampleDiagnosisTypeCodes._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ExampleDiagnosisTypeCodes] from JSON.
  factory ExampleDiagnosisTypeCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleDiagnosisTypeCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ExampleDiagnosisTypeCodes cannot be constructed from JSON.',
      );
    }
    return ExampleDiagnosisTypeCodes._(value: value, element: element);
  }

  /// admitting
  static final ExampleDiagnosisTypeCodes admitting =
      ExampleDiagnosisTypeCodes._(
    value: 'admitting',
  );

  /// clinical
  static final ExampleDiagnosisTypeCodes clinical = ExampleDiagnosisTypeCodes._(
    value: 'clinical',
  );

  /// differential
  static final ExampleDiagnosisTypeCodes differential =
      ExampleDiagnosisTypeCodes._(
    value: 'differential',
  );

  /// discharge
  static final ExampleDiagnosisTypeCodes discharge =
      ExampleDiagnosisTypeCodes._(
    value: 'discharge',
  );

  /// laboratory
  static final ExampleDiagnosisTypeCodes laboratory =
      ExampleDiagnosisTypeCodes._(
    value: 'laboratory',
  );

  /// nursing
  static final ExampleDiagnosisTypeCodes nursing = ExampleDiagnosisTypeCodes._(
    value: 'nursing',
  );

  /// prenatal
  static final ExampleDiagnosisTypeCodes prenatal = ExampleDiagnosisTypeCodes._(
    value: 'prenatal',
  );

  /// principal
  static final ExampleDiagnosisTypeCodes principal =
      ExampleDiagnosisTypeCodes._(
    value: 'principal',
  );

  /// radiology
  static final ExampleDiagnosisTypeCodes radiology =
      ExampleDiagnosisTypeCodes._(
    value: 'radiology',
  );

  /// remote
  static final ExampleDiagnosisTypeCodes remote = ExampleDiagnosisTypeCodes._(
    value: 'remote',
  );

  /// retrospective
  static final ExampleDiagnosisTypeCodes retrospective =
      ExampleDiagnosisTypeCodes._(
    value: 'retrospective',
  );

  /// self
  static final ExampleDiagnosisTypeCodes self = ExampleDiagnosisTypeCodes._(
    value: 'self',
  );

  /// For instances where an Element is present but not value

  static final ExampleDiagnosisTypeCodes elementOnly =
      ExampleDiagnosisTypeCodes._(value: '');

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
  ExampleDiagnosisTypeCodes clone() => ExampleDiagnosisTypeCodes._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ExampleDiagnosisTypeCodes withElement(Element? newElement) {
    return ExampleDiagnosisTypeCodes._(value: value, element: newElement);
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
    return ExampleDiagnosisTypeCodes._(
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
