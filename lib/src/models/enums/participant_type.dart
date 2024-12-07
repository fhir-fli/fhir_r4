// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This value set defines a set of codes that can be used to indicate how an individual participates in an encounter.
class ParticipantType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ParticipantType._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [ParticipantType] from JSON.
  factory ParticipantType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ParticipantType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ParticipantType cannot be constructed from JSON.',
      );
    }
    return ParticipantType._(value: value, element: element);
  }

  /// SPRF
  static final ParticipantType SPRF = ParticipantType._(
    value: 'SPRF',
  );

  /// PPRF
  static final ParticipantType PPRF = ParticipantType._(
    value: 'PPRF',
  );

  /// PART
  static final ParticipantType PART = ParticipantType._(
    value: 'PART',
  );

  /// translator
  static final ParticipantType translator = ParticipantType._(
    value: 'translator',
  );

  /// emergency
  static final ParticipantType emergency = ParticipantType._(
    value: 'emergency',
  );

  /// For instances where an Element is present but not value

  static final ParticipantType elementOnly = ParticipantType._(value: '');

  /// List of all enum-like values
  static final List<ParticipantType> values = [
    SPRF,
    PPRF,
    PART,
    translator,
    emergency,
  ];

  /// Clones the current instance
  @override
  ParticipantType clone() => ParticipantType._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ParticipantType withElement(Element? newElement) {
    return ParticipantType._(value: value, element: newElement);
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
  ParticipantType copyWith({
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
    return ParticipantType._(
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
