// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The value set to instantiate this attribute should be drawn from a terminologically robust code system that consists of or contains concepts to support describing the reason why a dose of vaccine was not administered. This value set is provided as a suggestive example.
class ImmunizationStatusReasonCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ImmunizationStatusReasonCodes._(
    super.value, {
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ImmunizationStatusReasonCodes] from JSON.
  factory ImmunizationStatusReasonCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationStatusReasonCodes.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ImmunizationStatusReasonCodes cannot be constructed from JSON.',
      );
    }
    return ImmunizationStatusReasonCodes._(value, element: element);
  }

  /// IMMUNE
  static final ImmunizationStatusReasonCodes IMMUNE =
      ImmunizationStatusReasonCodes._(
    'IMMUNE',
  );

  /// MEDPREC
  static final ImmunizationStatusReasonCodes MEDPREC =
      ImmunizationStatusReasonCodes._(
    'MEDPREC',
  );

  /// OSTOCK
  static final ImmunizationStatusReasonCodes OSTOCK =
      ImmunizationStatusReasonCodes._(
    'OSTOCK',
  );

  /// PATOBJ
  static final ImmunizationStatusReasonCodes PATOBJ =
      ImmunizationStatusReasonCodes._(
    'PATOBJ',
  );

  /// For instances where an Element is present but not value

  static final ImmunizationStatusReasonCodes elementOnly =
      ImmunizationStatusReasonCodes._('');

  /// List of all enum-like values
  static final List<ImmunizationStatusReasonCodes> values = [
    IMMUNE,
    MEDPREC,
    OSTOCK,
    PATOBJ,
  ];

  /// Clones the current instance
  @override
  ImmunizationStatusReasonCodes clone() => ImmunizationStatusReasonCodes._(
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ImmunizationStatusReasonCodes withElement(Element? newElement) {
    return ImmunizationStatusReasonCodes._(value, element: newElement);
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
  ImmunizationStatusReasonCodes copyWith({
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
    return ImmunizationStatusReasonCodes._(
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
