// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Current state of the encounter.
class EncounterStatus extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  EncounterStatus._(super.value, [super.element]);

  /// Factory constructor to create [EncounterStatus] from JSON.
  factory EncounterStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EncounterStatus.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EncounterStatus cannot be constructed from JSON.',
      );
    }
    return EncounterStatus._(value, element);
  }

  /// planned
  static final EncounterStatus planned = EncounterStatus._(
    'planned',
  );

  /// arrived
  static final EncounterStatus arrived = EncounterStatus._(
    'arrived',
  );

  /// triaged
  static final EncounterStatus triaged = EncounterStatus._(
    'triaged',
  );

  /// in_progress
  static final EncounterStatus in_progress = EncounterStatus._(
    'in-progress',
  );

  /// onleave
  static final EncounterStatus onleave = EncounterStatus._(
    'onleave',
  );

  /// finished
  static final EncounterStatus finished = EncounterStatus._(
    'finished',
  );

  /// cancelled
  static final EncounterStatus cancelled = EncounterStatus._(
    'cancelled',
  );

  /// entered_in_error
  static final EncounterStatus entered_in_error = EncounterStatus._(
    'entered-in-error',
  );

  /// unknown
  static final EncounterStatus unknown = EncounterStatus._(
    'unknown',
  );

  /// For instances where an Element is present but not value

  static final EncounterStatus elementOnly = EncounterStatus._('');

  /// List of all enum-like values
  static final List<EncounterStatus> values = [
    planned,
    arrived,
    triaged,
    in_progress,
    onleave,
    finished,
    cancelled,
    entered_in_error,
    unknown,
  ];

  /// Clones the current instance
  @override
  EncounterStatus clone() => EncounterStatus._(
        value,
        element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  EncounterStatus withElement(Element? newElement) {
    return EncounterStatus._(value, newElement);
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
  EncounterStatus copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    Map<String, List<void Function()>>? propertyChanged,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return EncounterStatus._(
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
