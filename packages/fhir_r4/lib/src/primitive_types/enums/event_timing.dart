// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Real world event relating to the schedule.
class EventTiming extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  EventTiming._({
    required super.valueString,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory EventTiming(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    return EventTiming._(
      valueString: valueString,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Create empty [EventTiming] with element only
  factory EventTiming.empty() => EventTiming._(valueString: '');

  /// Factory constructor to create [EventTiming] from JSON.
  factory EventTiming.fromJson(Map<String, dynamic> json) {
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
      valueString: value,
      element: element,
    );
  }

  /// MORN
  static final EventTiming MORN = EventTiming._(
    valueString: 'MORN',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Morning'.toFhirString,
  );

  /// MORN_early
  static final EventTiming MORN_early = EventTiming._(
    valueString: 'MORN.early',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Early Morning'.toFhirString,
  );

  /// MORN_late
  static final EventTiming MORN_late = EventTiming._(
    valueString: 'MORN.late',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Late Morning'.toFhirString,
  );

  /// NOON
  static final EventTiming NOON = EventTiming._(
    valueString: 'NOON',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Noon'.toFhirString,
  );

  /// AFT
  static final EventTiming AFT = EventTiming._(
    valueString: 'AFT',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Afternoon'.toFhirString,
  );

  /// AFT_early
  static final EventTiming AFT_early = EventTiming._(
    valueString: 'AFT.early',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Early Afternoon'.toFhirString,
  );

  /// AFT_late
  static final EventTiming AFT_late = EventTiming._(
    valueString: 'AFT.late',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Late Afternoon'.toFhirString,
  );

  /// EVE
  static final EventTiming EVE = EventTiming._(
    valueString: 'EVE',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Evening'.toFhirString,
  );

  /// EVE_early
  static final EventTiming EVE_early = EventTiming._(
    valueString: 'EVE.early',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Early Evening'.toFhirString,
  );

  /// EVE_late
  static final EventTiming EVE_late = EventTiming._(
    valueString: 'EVE.late',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Late Evening'.toFhirString,
  );

  /// NIGHT
  static final EventTiming NIGHT = EventTiming._(
    valueString: 'NIGHT',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Night'.toFhirString,
  );

  /// PHS
  static final EventTiming PHS = EventTiming._(
    valueString: 'PHS',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'After Sleep'.toFhirString,
  );

  /// HS
  static final EventTiming HS = EventTiming._(
    valueString: 'HS',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: ''.toFhirString,
  );

  /// WAKE
  static final EventTiming WAKE = EventTiming._(
    valueString: 'WAKE',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: ''.toFhirString,
  );

  /// C
  static final EventTiming C = EventTiming._(
    valueString: 'C',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: ''.toFhirString,
  );

  /// CM
  static final EventTiming CM = EventTiming._(
    valueString: 'CM',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: ''.toFhirString,
  );

  /// CD
  static final EventTiming CD = EventTiming._(
    valueString: 'CD',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: ''.toFhirString,
  );

  /// CV
  static final EventTiming CV = EventTiming._(
    valueString: 'CV',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: ''.toFhirString,
  );

  /// AC
  static final EventTiming AC = EventTiming._(
    valueString: 'AC',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: ''.toFhirString,
  );

  /// ACM
  static final EventTiming ACM = EventTiming._(
    valueString: 'ACM',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: ''.toFhirString,
  );

  /// ACD
  static final EventTiming ACD = EventTiming._(
    valueString: 'ACD',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: ''.toFhirString,
  );

  /// ACV
  static final EventTiming ACV = EventTiming._(
    valueString: 'ACV',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: ''.toFhirString,
  );

  /// PC
  static final EventTiming PC = EventTiming._(
    valueString: 'PC',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: ''.toFhirString,
  );

  /// PCM
  static final EventTiming PCM = EventTiming._(
    valueString: 'PCM',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: ''.toFhirString,
  );

  /// PCD
  static final EventTiming PCD = EventTiming._(
    valueString: 'PCD',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: ''.toFhirString,
  );

  /// PCV
  static final EventTiming PCV = EventTiming._(
    valueString: 'PCV',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: ''.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final EventTiming elementOnly = EventTiming._(valueString: '');

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
        valueString: valueString,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  EventTiming withElement(Element? newElement) {
    return EventTiming._(
      valueString: valueString,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (valueString?.isEmpty ?? false) ? null : valueString,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => valueString ?? '';

  /// Creates a modified copy with updated properties.
  @override
  EventTiming copyWith({
    dynamic newValue,
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
    if (newValue is! String?) {
      throw ArgumentError('Invalid input for EventTiming: $newValue');
    }
    return EventTiming._(
      valueString: newValue ?? valueString,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath!,
    );
  }
}
