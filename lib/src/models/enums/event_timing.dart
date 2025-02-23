// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// Real world event relating to the schedule.
class EventTiming extends FhirCodeEnum {
  // Private constructor for internal use (like enum)
  EventTiming._(
    super.value, {
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Create empty [EventTiming] with element only
  factory EventTiming.empty() => EventTiming._('');

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
    return EventTiming._(
      value,
      element: element,
    );
  }

  /// MORN
  static final EventTiming MORN = EventTiming._(
    'MORN',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Morning'.toFhirString,
  );

  /// MORN_early
  static final EventTiming MORN_early = EventTiming._(
    'MORN.early',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Early Morning'.toFhirString,
  );

  /// MORN_late
  static final EventTiming MORN_late = EventTiming._(
    'MORN.late',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Late Morning'.toFhirString,
  );

  /// NOON
  static final EventTiming NOON = EventTiming._(
    'NOON',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Noon'.toFhirString,
  );

  /// AFT
  static final EventTiming AFT = EventTiming._(
    'AFT',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Afternoon'.toFhirString,
  );

  /// AFT_early
  static final EventTiming AFT_early = EventTiming._(
    'AFT.early',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Early Afternoon'.toFhirString,
  );

  /// AFT_late
  static final EventTiming AFT_late = EventTiming._(
    'AFT.late',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Late Afternoon'.toFhirString,
  );

  /// EVE
  static final EventTiming EVE = EventTiming._(
    'EVE',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Evening'.toFhirString,
  );

  /// EVE_early
  static final EventTiming EVE_early = EventTiming._(
    'EVE.early',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Early Evening'.toFhirString,
  );

  /// EVE_late
  static final EventTiming EVE_late = EventTiming._(
    'EVE.late',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Late Evening'.toFhirString,
  );

  /// NIGHT
  static final EventTiming NIGHT = EventTiming._(
    'NIGHT',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Night'.toFhirString,
  );

  /// PHS
  static final EventTiming PHS = EventTiming._(
    'PHS',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'After Sleep'.toFhirString,
  );

  /// HS
  static final EventTiming HS = EventTiming._(
    'HS',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: ''.toFhirString,
  );

  /// WAKE
  static final EventTiming WAKE = EventTiming._(
    'WAKE',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: ''.toFhirString,
  );

  /// C
  static final EventTiming C = EventTiming._(
    'C',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: ''.toFhirString,
  );

  /// CM
  static final EventTiming CM = EventTiming._(
    'CM',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: ''.toFhirString,
  );

  /// CD
  static final EventTiming CD = EventTiming._(
    'CD',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: ''.toFhirString,
  );

  /// CV
  static final EventTiming CV = EventTiming._(
    'CV',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: ''.toFhirString,
  );

  /// AC
  static final EventTiming AC = EventTiming._(
    'AC',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: ''.toFhirString,
  );

  /// ACM
  static final EventTiming ACM = EventTiming._(
    'ACM',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: ''.toFhirString,
  );

  /// ACD
  static final EventTiming ACD = EventTiming._(
    'ACD',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: ''.toFhirString,
  );

  /// ACV
  static final EventTiming ACV = EventTiming._(
    'ACV',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: ''.toFhirString,
  );

  /// PC
  static final EventTiming PC = EventTiming._(
    'PC',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: ''.toFhirString,
  );

  /// PCM
  static final EventTiming PCM = EventTiming._(
    'PCM',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: ''.toFhirString,
  );

  /// PCD
  static final EventTiming PCD = EventTiming._(
    'PCD',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: ''.toFhirString,
  );

  /// PCV
  static final EventTiming PCV = EventTiming._(
    'PCV',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: ''.toFhirString,
  );

  /// For instances where an Element is present but not value

  static final EventTiming elementOnly = EventTiming._('');

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
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  EventTiming withElement(Element? newElement) {
    return EventTiming._(
      value,
      element: newElement,
    );
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
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return EventTiming._(
      newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath,
    );
  }
}
