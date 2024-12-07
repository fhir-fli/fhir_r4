// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the reason why a dose is considered to be subpotent. This value set is provided as a suggestive example.
class ImmunizationSubpotentReason extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ImmunizationSubpotentReason._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ImmunizationSubpotentReason] from JSON.
  factory ImmunizationSubpotentReason.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationSubpotentReason.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ImmunizationSubpotentReason cannot be constructed from JSON.',
      );
    }
    return ImmunizationSubpotentReason._(value: value, element: element);
  }

  /// partial
  static final ImmunizationSubpotentReason partial =
      ImmunizationSubpotentReason._(
    value: 'partial',
  );

  /// coldchainbreak
  static final ImmunizationSubpotentReason coldchainbreak =
      ImmunizationSubpotentReason._(
    value: 'coldchainbreak',
  );

  /// recall
  static final ImmunizationSubpotentReason recall =
      ImmunizationSubpotentReason._(
    value: 'recall',
  );

  /// For instances where an Element is present but not value

  static final ImmunizationSubpotentReason elementOnly =
      ImmunizationSubpotentReason._(value: '');

  /// List of all enum-like values
  static final List<ImmunizationSubpotentReason> values = [
    partial,
    coldchainbreak,
    recall,
  ];

  /// Clones the current instance
  @override
  ImmunizationSubpotentReason clone() => ImmunizationSubpotentReason._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ImmunizationSubpotentReason withElement(Element? newElement) {
    return ImmunizationSubpotentReason._(value: value, element: newElement);
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
  ImmunizationSubpotentReason copyWith({
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
    return ImmunizationSubpotentReason._(
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
