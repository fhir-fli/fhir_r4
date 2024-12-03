// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes sample ICD-10 Procedure codes.
class ICD10ProcedureCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ICD10ProcedureCodes._(super.value, [super.element]);

  /// Factory constructor to create [ICD10ProcedureCodes] from JSON.
  factory ICD10ProcedureCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ICD10ProcedureCodes.elementOnly.withElement(element);
    }
    return ICD10ProcedureCodes._(value, element);
  }

  /// value123001
  static final ICD10ProcedureCodes value123001 = ICD10ProcedureCodes._(
    '123001',
  );

  /// value123002
  static final ICD10ProcedureCodes value123002 = ICD10ProcedureCodes._(
    '123002',
  );

  /// value123003
  static final ICD10ProcedureCodes value123003 = ICD10ProcedureCodes._(
    '123003',
  );

  /// For instances where an Element is present but not value

  static final ICD10ProcedureCodes elementOnly = ICD10ProcedureCodes._('');

  /// List of all enum-like values
  static final List<ICD10ProcedureCodes> values = [
    value123001,
    value123002,
    value123003,
  ];

  /// Clones the current instance
  @override
  ICD10ProcedureCodes clone() => ICD10ProcedureCodes._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ICD10ProcedureCodes setElement(
    String name,
    dynamic elementValue,
  ) {
    return ICD10ProcedureCodes._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ICD10ProcedureCodes withElement(Element? newElement) {
    return ICD10ProcedureCodes._(value, newElement);
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
  ICD10ProcedureCodes copyWith({
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
    return ICD10ProcedureCodes._(
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
