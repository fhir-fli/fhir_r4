// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// A code specifying the state of the resource instance.
class ExplanationOfBenefitStatus extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ExplanationOfBenefitStatus._(super.value, [super.element]);

  /// Factory constructor to create [ExplanationOfBenefitStatus] from JSON.
  factory ExplanationOfBenefitStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExplanationOfBenefitStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ExplanationOfBenefitStatus cannot be constructed from JSON.',
      );
    }
    return ExplanationOfBenefitStatus._(value, element);
  }

  /// active
  static final ExplanationOfBenefitStatus active = ExplanationOfBenefitStatus._(
    'active',
  );

  /// cancelled
  static final ExplanationOfBenefitStatus cancelled =
      ExplanationOfBenefitStatus._(
    'cancelled',
  );

  /// draft
  static final ExplanationOfBenefitStatus draft = ExplanationOfBenefitStatus._(
    'draft',
  );

  /// entered_in_error
  static final ExplanationOfBenefitStatus entered_in_error =
      ExplanationOfBenefitStatus._(
    'entered-in-error',
  );

  /// For instances where an Element is present but not value

  static final ExplanationOfBenefitStatus elementOnly =
      ExplanationOfBenefitStatus._('');

  /// List of all enum-like values
  static final List<ExplanationOfBenefitStatus> values = [
    active,
    cancelled,
    draft,
    entered_in_error,
  ];

  /// Clones the current instance
  @override
  ExplanationOfBenefitStatus clone() => ExplanationOfBenefitStatus._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ExplanationOfBenefitStatus setElement(
    String name,
    dynamic elementValue,
  ) {
    return ExplanationOfBenefitStatus._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ExplanationOfBenefitStatus withElement(Element? newElement) {
    return ExplanationOfBenefitStatus._(value, newElement);
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
  ExplanationOfBenefitStatus copyWith({
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
    return ExplanationOfBenefitStatus._(
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
