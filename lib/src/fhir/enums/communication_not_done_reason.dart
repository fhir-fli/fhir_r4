// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Codes for the reason why a communication did not happen.
class CommunicationNotDoneReason extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  CommunicationNotDoneReason._(super.value, [super.element]);

  /// Factory constructor to create [CommunicationNotDoneReason] from JSON.
  factory CommunicationNotDoneReason.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CommunicationNotDoneReason.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
          'CommunicationNotDoneReason cannot be constructed from JSON.');
    }
    return CommunicationNotDoneReason._(value, element);
  }

  /// unknown
  static final CommunicationNotDoneReason unknown =
      CommunicationNotDoneReason._(
    'unknown',
  );

  /// system_error
  static final CommunicationNotDoneReason system_error =
      CommunicationNotDoneReason._(
    'system-error',
  );

  /// invalid_phone_number
  static final CommunicationNotDoneReason invalid_phone_number =
      CommunicationNotDoneReason._(
    'invalid-phone-number',
  );

  /// recipient_unavailable
  static final CommunicationNotDoneReason recipient_unavailable =
      CommunicationNotDoneReason._(
    'recipient-unavailable',
  );

  /// family_objection
  static final CommunicationNotDoneReason family_objection =
      CommunicationNotDoneReason._(
    'family-objection',
  );

  /// patient_objection
  static final CommunicationNotDoneReason patient_objection =
      CommunicationNotDoneReason._(
    'patient-objection',
  );

  /// For instances where an Element is present but not value

  static final CommunicationNotDoneReason elementOnly =
      CommunicationNotDoneReason._('');

  /// List of all enum-like values
  static final List<CommunicationNotDoneReason> values = [
    unknown,
    system_error,
    invalid_phone_number,
    recipient_unavailable,
    family_objection,
    patient_objection,
  ];

  /// Clones the current instance
  @override
  CommunicationNotDoneReason clone() => CommunicationNotDoneReason._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  CommunicationNotDoneReason setElement(
    String name,
    dynamic elementValue,
  ) {
    return CommunicationNotDoneReason._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  CommunicationNotDoneReason withElement(Element? newElement) {
    return CommunicationNotDoneReason._(value, newElement);
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
  CommunicationNotDoneReason copyWith({
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
    return CommunicationNotDoneReason._(
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
