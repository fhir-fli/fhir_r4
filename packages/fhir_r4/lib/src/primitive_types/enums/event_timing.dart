// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Real world event relating to the schedule.
class EventTiming extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  EventTiming._({
    required super.validatedValue,
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
    String? raw, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCode._validateCode(raw) : null;
    return EventTiming._(
      validatedValue: validated,
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
  factory EventTiming.empty() => EventTiming._(validatedValue: '');

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
      validatedValue: value,
      element: element,
    );
  }

  /// MORN
  static final EventTiming MORN = EventTiming._(
    validatedValue: 'MORN',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Morning'.toFhirString,
  );

  /// MORN_early
  static final EventTiming MORN_early = EventTiming._(
    validatedValue: 'MORN.early',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Early Morning'.toFhirString,
  );

  /// MORN_late
  static final EventTiming MORN_late = EventTiming._(
    validatedValue: 'MORN.late',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Late Morning'.toFhirString,
  );

  /// NOON
  static final EventTiming NOON = EventTiming._(
    validatedValue: 'NOON',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Noon'.toFhirString,
  );

  /// AFT
  static final EventTiming AFT = EventTiming._(
    validatedValue: 'AFT',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Afternoon'.toFhirString,
  );

  /// AFT_early
  static final EventTiming AFT_early = EventTiming._(
    validatedValue: 'AFT.early',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Early Afternoon'.toFhirString,
  );

  /// AFT_late
  static final EventTiming AFT_late = EventTiming._(
    validatedValue: 'AFT.late',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Late Afternoon'.toFhirString,
  );

  /// EVE
  static final EventTiming EVE = EventTiming._(
    validatedValue: 'EVE',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Evening'.toFhirString,
  );

  /// EVE_early
  static final EventTiming EVE_early = EventTiming._(
    validatedValue: 'EVE.early',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Early Evening'.toFhirString,
  );

  /// EVE_late
  static final EventTiming EVE_late = EventTiming._(
    validatedValue: 'EVE.late',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Late Evening'.toFhirString,
  );

  /// NIGHT
  static final EventTiming NIGHT = EventTiming._(
    validatedValue: 'NIGHT',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Night'.toFhirString,
  );

  /// PHS
  static final EventTiming PHS = EventTiming._(
    validatedValue: 'PHS',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'After Sleep'.toFhirString,
  );

  /// HS
  static final EventTiming HS = EventTiming._(
    validatedValue: 'HS',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: ''.toFhirString,
  );

  /// WAKE
  static final EventTiming WAKE = EventTiming._(
    validatedValue: 'WAKE',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: ''.toFhirString,
  );

  /// C
  static final EventTiming C = EventTiming._(
    validatedValue: 'C',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: ''.toFhirString,
  );

  /// CM
  static final EventTiming CM = EventTiming._(
    validatedValue: 'CM',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: ''.toFhirString,
  );

  /// CD
  static final EventTiming CD = EventTiming._(
    validatedValue: 'CD',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: ''.toFhirString,
  );

  /// CV
  static final EventTiming CV = EventTiming._(
    validatedValue: 'CV',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: ''.toFhirString,
  );

  /// AC
  static final EventTiming AC = EventTiming._(
    validatedValue: 'AC',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: ''.toFhirString,
  );

  /// ACM
  static final EventTiming ACM = EventTiming._(
    validatedValue: 'ACM',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: ''.toFhirString,
  );

  /// ACD
  static final EventTiming ACD = EventTiming._(
    validatedValue: 'ACD',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: ''.toFhirString,
  );

  /// ACV
  static final EventTiming ACV = EventTiming._(
    validatedValue: 'ACV',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: ''.toFhirString,
  );

  /// PC
  static final EventTiming PC = EventTiming._(
    validatedValue: 'PC',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: ''.toFhirString,
  );

  /// PCM
  static final EventTiming PCM = EventTiming._(
    validatedValue: 'PCM',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: ''.toFhirString,
  );

  /// PCD
  static final EventTiming PCD = EventTiming._(
    validatedValue: 'PCD',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: ''.toFhirString,
  );

  /// PCV
  static final EventTiming PCV = EventTiming._(
    validatedValue: 'PCV',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: ''.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final EventTiming elementOnly = EventTiming._(validatedValue: '');

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
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  EventTiming withElement(Element? newElement) {
    return EventTiming._(validatedValue: value, element: newElement);
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
      validatedValue: newValue ?? value,
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
