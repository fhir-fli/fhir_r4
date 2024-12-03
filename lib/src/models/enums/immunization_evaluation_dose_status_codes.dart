// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the validity of a dose relative to a particular recommended schedule. This value set is provided as a suggestive example.
class ImmunizationEvaluationDoseStatusCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ImmunizationEvaluationDoseStatusCodes._(super.value, [super.element]);

  /// Factory constructor to create [ImmunizationEvaluationDoseStatusCodes] from JSON.
  factory ImmunizationEvaluationDoseStatusCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationEvaluationDoseStatusCodes.elementOnly
          .withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ImmunizationEvaluationDoseStatusCodes cannot be constructed from JSON.',
      );
    }
    return ImmunizationEvaluationDoseStatusCodes._(value, element);
  }

  /// valid
  static final ImmunizationEvaluationDoseStatusCodes valid =
      ImmunizationEvaluationDoseStatusCodes._(
    'valid',
  );

  /// notvalid
  static final ImmunizationEvaluationDoseStatusCodes notvalid =
      ImmunizationEvaluationDoseStatusCodes._(
    'notvalid',
  );

  /// For instances where an Element is present but not value

  static final ImmunizationEvaluationDoseStatusCodes elementOnly =
      ImmunizationEvaluationDoseStatusCodes._('');

  /// List of all enum-like values
  static final List<ImmunizationEvaluationDoseStatusCodes> values = [
    valid,
    notvalid,
  ];

  /// Clones the current instance
  @override
  ImmunizationEvaluationDoseStatusCodes clone() =>
      ImmunizationEvaluationDoseStatusCodes._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ImmunizationEvaluationDoseStatusCodes setElement(
    String name,
    dynamic elementValue,
  ) {
    return ImmunizationEvaluationDoseStatusCodes._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ImmunizationEvaluationDoseStatusCodes withElement(Element? newElement) {
    return ImmunizationEvaluationDoseStatusCodes._(value, newElement);
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
  ImmunizationEvaluationDoseStatusCodes copyWith({
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
    return ImmunizationEvaluationDoseStatusCodes._(
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
