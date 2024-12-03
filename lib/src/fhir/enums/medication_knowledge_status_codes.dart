// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// MedicationKnowledge Status Codes
class MedicationKnowledgeStatusCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  MedicationKnowledgeStatusCodes._(super.value, [super.element]);

  /// Factory constructor to create [MedicationKnowledgeStatusCodes] from JSON.
  factory MedicationKnowledgeStatusCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationKnowledgeStatusCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
          'MedicationKnowledgeStatusCodes cannot be constructed from JSON.');
    }
    return MedicationKnowledgeStatusCodes._(value, element);
  }

  /// active
  static final MedicationKnowledgeStatusCodes active =
      MedicationKnowledgeStatusCodes._(
    'active',
  );

  /// inactive
  static final MedicationKnowledgeStatusCodes inactive =
      MedicationKnowledgeStatusCodes._(
    'inactive',
  );

  /// entered_in_error
  static final MedicationKnowledgeStatusCodes entered_in_error =
      MedicationKnowledgeStatusCodes._(
    'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final MedicationKnowledgeStatusCodes elementOnly =
      MedicationKnowledgeStatusCodes._('');

  /// List of all enum-like values
  static final List<MedicationKnowledgeStatusCodes> values = [
    active,
    inactive,
    entered_in_error,
  ];

  /// Clones the current instance
  @override
  MedicationKnowledgeStatusCodes clone() => MedicationKnowledgeStatusCodes._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  MedicationKnowledgeStatusCodes setElement(
    String name,
    dynamic elementValue,
  ) {
    return MedicationKnowledgeStatusCodes._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  MedicationKnowledgeStatusCodes withElement(Element? newElement) {
    return MedicationKnowledgeStatusCodes._(value, newElement);
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
  MedicationKnowledgeStatusCodes copyWith({
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
    return MedicationKnowledgeStatusCodes._(
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
