// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the reason why a dose of vaccine was administered. This value set is provided as a suggestive example.
class ImmunizationReasonCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ImmunizationReasonCodes._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ImmunizationReasonCodes] from JSON.
  factory ImmunizationReasonCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationReasonCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ImmunizationReasonCodes cannot be constructed from JSON.',
      );
    }
    return ImmunizationReasonCodes._(value, element: element);
  }

  /// value429060002
  static final ImmunizationReasonCodes value429060002 =
      ImmunizationReasonCodes._(
    '429060002',
  );

  /// value281657000
  static final ImmunizationReasonCodes value281657000 =
      ImmunizationReasonCodes._(
    '281657000',
  );

  /// For instances where an Element is present but not value

  static final ImmunizationReasonCodes elementOnly =
      ImmunizationReasonCodes._('');

  /// List of all enum-like values
  static final List<ImmunizationReasonCodes> values = [
    value429060002,
    value281657000,
  ];

  /// Clones the current instance
  @override
  ImmunizationReasonCodes clone() => ImmunizationReasonCodes._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ImmunizationReasonCodes withElement(Element? newElement) {
    return ImmunizationReasonCodes._(value, element: newElement);
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
  ImmunizationReasonCodes copyWith({
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
    return ImmunizationReasonCodes._(
      newValue ?? value,
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
