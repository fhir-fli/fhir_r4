// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The status of the location.
class EncounterLocationStatus extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  EncounterLocationStatus._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [EncounterLocationStatus] from JSON.
  factory EncounterLocationStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EncounterLocationStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EncounterLocationStatus cannot be constructed from JSON.',
      );
    }
    return EncounterLocationStatus._(value: value, element: element);
  }

  /// planned
  static final EncounterLocationStatus planned = EncounterLocationStatus._(
    value: 'planned',
  );

  /// active
  static final EncounterLocationStatus active = EncounterLocationStatus._(
    value: 'active',
  );

  /// reserved
  static final EncounterLocationStatus reserved = EncounterLocationStatus._(
    value: 'reserved',
  );

  /// completed
  static final EncounterLocationStatus completed = EncounterLocationStatus._(
    value: 'completed',
  );

  /// For instances where an Element is present but not value

  static final EncounterLocationStatus elementOnly =
      EncounterLocationStatus._(value: '');

  /// List of all enum-like values
  static final List<EncounterLocationStatus> values = [
    planned,
    active,
    reserved,
    completed,
  ];

  /// Clones the current instance
  @override
  EncounterLocationStatus clone() => EncounterLocationStatus._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  EncounterLocationStatus withElement(Element? newElement) {
    return EncounterLocationStatus._(value: value, element: newElement);
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
  EncounterLocationStatus copyWith({
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
    return EncounterLocationStatus._(
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
