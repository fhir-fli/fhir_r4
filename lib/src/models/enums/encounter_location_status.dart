// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The status of the location.
class EncounterLocationStatus extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  EncounterLocationStatus._(super.value, [super.element]);

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
    return EncounterLocationStatus._(value, element);
  }

  /// planned
  static final EncounterLocationStatus planned = EncounterLocationStatus._(
    'planned',
  );

  /// active
  static final EncounterLocationStatus active = EncounterLocationStatus._(
    'active',
  );

  /// reserved
  static final EncounterLocationStatus reserved = EncounterLocationStatus._(
    'reserved',
  );

  /// completed
  static final EncounterLocationStatus completed = EncounterLocationStatus._(
    'completed',
  );

  /// For instances where an Element is present but not value

  static final EncounterLocationStatus elementOnly =
      EncounterLocationStatus._('');

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
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  EncounterLocationStatus setElement(
    String name,
    dynamic elementValue,
  ) {
    return EncounterLocationStatus._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  EncounterLocationStatus withElement(Element? newElement) {
    return EncounterLocationStatus._(value, newElement);
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
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return EncounterLocationStatus._(
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
