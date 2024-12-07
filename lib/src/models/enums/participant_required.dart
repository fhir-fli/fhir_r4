// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Is the Participant required to attend the appointment.
class ParticipantRequired extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ParticipantRequired._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ParticipantRequired] from JSON.
  factory ParticipantRequired.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ParticipantRequired.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ParticipantRequired cannot be constructed from JSON.',
      );
    }
    return ParticipantRequired._(value: value, element: element);
  }

  /// required_
  static final ParticipantRequired required_ = ParticipantRequired._(
    value: 'required',
  );

  /// optional
  static final ParticipantRequired optional = ParticipantRequired._(
    value: 'optional',
  );

  /// information_only
  static final ParticipantRequired information_only = ParticipantRequired._(
    value: 'information-only',
  );

  /// For instances where an Element is present but not value

  static final ParticipantRequired elementOnly =
      ParticipantRequired._(value: '');

  /// List of all enum-like values
  static final List<ParticipantRequired> values = [
    required_,
    optional,
    information_only,
  ];

  /// Clones the current instance
  @override
  ParticipantRequired clone() => ParticipantRequired._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ParticipantRequired withElement(Element? newElement) {
    return ParticipantRequired._(value: value, element: newElement);
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
  ParticipantRequired copyWith({
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
    return ParticipantRequired._(
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
