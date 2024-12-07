// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Real world event relating to the schedule.
class EventTiming extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  EventTiming._({
    super.value,
    super.element,
    super.id,
    super.extension_,
  });

  /// Factory constructor to create [EventTiming] from JSON.
  factory EventTiming.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EventTiming.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EventTiming cannot be constructed from JSON.',
      );
    }
    return EventTiming._(value: value, element: element);
  }

  /// MORN
  static final EventTiming MORN = EventTiming._(
    value: 'MORN',
  );

  /// MORN_early
  static final EventTiming MORN_early = EventTiming._(
    value: 'MORN.early',
  );

  /// MORN_late
  static final EventTiming MORN_late = EventTiming._(
    value: 'MORN.late',
  );

  /// NOON
  static final EventTiming NOON = EventTiming._(
    value: 'NOON',
  );

  /// AFT
  static final EventTiming AFT = EventTiming._(
    value: 'AFT',
  );

  /// AFT_early
  static final EventTiming AFT_early = EventTiming._(
    value: 'AFT.early',
  );

  /// AFT_late
  static final EventTiming AFT_late = EventTiming._(
    value: 'AFT.late',
  );

  /// EVE
  static final EventTiming EVE = EventTiming._(
    value: 'EVE',
  );

  /// EVE_early
  static final EventTiming EVE_early = EventTiming._(
    value: 'EVE.early',
  );

  /// EVE_late
  static final EventTiming EVE_late = EventTiming._(
    value: 'EVE.late',
  );

  /// NIGHT
  static final EventTiming NIGHT = EventTiming._(
    value: 'NIGHT',
  );

  /// PHS
  static final EventTiming PHS = EventTiming._(
    value: 'PHS',
  );

  /// HS
  static final EventTiming HS = EventTiming._(
    value: 'HS',
  );

  /// WAKE
  static final EventTiming WAKE = EventTiming._(
    value: 'WAKE',
  );

  /// C
  static final EventTiming C = EventTiming._(
    value: 'C',
  );

  /// CM
  static final EventTiming CM = EventTiming._(
    value: 'CM',
  );

  /// CD
  static final EventTiming CD = EventTiming._(
    value: 'CD',
  );

  /// CV
  static final EventTiming CV = EventTiming._(
    value: 'CV',
  );

  /// AC
  static final EventTiming AC = EventTiming._(
    value: 'AC',
  );

  /// ACM
  static final EventTiming ACM = EventTiming._(
    value: 'ACM',
  );

  /// ACD
  static final EventTiming ACD = EventTiming._(
    value: 'ACD',
  );

  /// ACV
  static final EventTiming ACV = EventTiming._(
    value: 'ACV',
  );

  /// PC
  static final EventTiming PC = EventTiming._(
    value: 'PC',
  );

  /// PCM
  static final EventTiming PCM = EventTiming._(
    value: 'PCM',
  );

  /// PCD
  static final EventTiming PCD = EventTiming._(
    value: 'PCD',
  );

  /// PCV
  static final EventTiming PCV = EventTiming._(
    value: 'PCV',
  );

  /// For instances where an Element is present but not value

  static final EventTiming elementOnly = EventTiming._(value: '');

  /// List of all enum-like values
  static final List<EventTiming> values = [
    MORN,
    MORN_early,
    MORN_late,
    NOON,
    AFT,
    AFT_early,
    AFT_late,
    EVE,
    EVE_early,
    EVE_late,
    NIGHT,
    PHS,
    HS,
    WAKE,
    C,
    CM,
    CD,
    CV,
    AC,
    ACM,
    ACD,
    ACV,
    PC,
    PCM,
    PCD,
    PCV,
  ];

  /// Clones the current instance
  @override
  EventTiming clone() => EventTiming._(
        value: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  EventTiming withElement(Element? newElement) {
    return EventTiming._(value: value, element: newElement);
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
  EventTiming copyWith({
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
    return EventTiming._(
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
