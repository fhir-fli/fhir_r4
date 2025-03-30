// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Real world event relating to the schedule.
class EventTimingBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  EventTimingBuilder._({
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
  factory EventTimingBuilder(
    String? raw, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCodeBuilder._validateCode(raw) : null;
    return EventTimingBuilder._(
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

  /// Create empty [EventTimingBuilder] with element only
  factory EventTimingBuilder.empty() =>
      EventTimingBuilder._(validatedValue: '');

  /// Factory constructor to create [EventTimingBuilder]
  /// from JSON.
  factory EventTimingBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EventTimingBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EventTimingBuilder cannot be constructed from JSON.',
      );
    }
    return EventTimingBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// MORN
  static EventTimingBuilder MORN = EventTimingBuilder._(
    validatedValue: 'MORN',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Morning'.toFhirStringBuilder,
  );

  /// MORN_early
  static EventTimingBuilder MORN_early = EventTimingBuilder._(
    validatedValue: 'MORN.early',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Early Morning'.toFhirStringBuilder,
  );

  /// MORN_late
  static EventTimingBuilder MORN_late = EventTimingBuilder._(
    validatedValue: 'MORN.late',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Late Morning'.toFhirStringBuilder,
  );

  /// NOON
  static EventTimingBuilder NOON = EventTimingBuilder._(
    validatedValue: 'NOON',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Noon'.toFhirStringBuilder,
  );

  /// AFT
  static EventTimingBuilder AFT = EventTimingBuilder._(
    validatedValue: 'AFT',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Afternoon'.toFhirStringBuilder,
  );

  /// AFT_early
  static EventTimingBuilder AFT_early = EventTimingBuilder._(
    validatedValue: 'AFT.early',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Early Afternoon'.toFhirStringBuilder,
  );

  /// AFT_late
  static EventTimingBuilder AFT_late = EventTimingBuilder._(
    validatedValue: 'AFT.late',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Late Afternoon'.toFhirStringBuilder,
  );

  /// EVE
  static EventTimingBuilder EVE = EventTimingBuilder._(
    validatedValue: 'EVE',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Evening'.toFhirStringBuilder,
  );

  /// EVE_early
  static EventTimingBuilder EVE_early = EventTimingBuilder._(
    validatedValue: 'EVE.early',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Early Evening'.toFhirStringBuilder,
  );

  /// EVE_late
  static EventTimingBuilder EVE_late = EventTimingBuilder._(
    validatedValue: 'EVE.late',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Late Evening'.toFhirStringBuilder,
  );

  /// NIGHT
  static EventTimingBuilder NIGHT = EventTimingBuilder._(
    validatedValue: 'NIGHT',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Night'.toFhirStringBuilder,
  );

  /// PHS
  static EventTimingBuilder PHS = EventTimingBuilder._(
    validatedValue: 'PHS',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'After Sleep'.toFhirStringBuilder,
  );

  /// HS
  static EventTimingBuilder HS = EventTimingBuilder._(
    validatedValue: 'HS',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: ''.toFhirStringBuilder,
  );

  /// WAKE
  static EventTimingBuilder WAKE = EventTimingBuilder._(
    validatedValue: 'WAKE',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: ''.toFhirStringBuilder,
  );

  /// C
  static EventTimingBuilder C = EventTimingBuilder._(
    validatedValue: 'C',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: ''.toFhirStringBuilder,
  );

  /// CM
  static EventTimingBuilder CM = EventTimingBuilder._(
    validatedValue: 'CM',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: ''.toFhirStringBuilder,
  );

  /// CD
  static EventTimingBuilder CD = EventTimingBuilder._(
    validatedValue: 'CD',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: ''.toFhirStringBuilder,
  );

  /// CV
  static EventTimingBuilder CV = EventTimingBuilder._(
    validatedValue: 'CV',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: ''.toFhirStringBuilder,
  );

  /// AC
  static EventTimingBuilder AC = EventTimingBuilder._(
    validatedValue: 'AC',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: ''.toFhirStringBuilder,
  );

  /// ACM
  static EventTimingBuilder ACM = EventTimingBuilder._(
    validatedValue: 'ACM',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: ''.toFhirStringBuilder,
  );

  /// ACD
  static EventTimingBuilder ACD = EventTimingBuilder._(
    validatedValue: 'ACD',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: ''.toFhirStringBuilder,
  );

  /// ACV
  static EventTimingBuilder ACV = EventTimingBuilder._(
    validatedValue: 'ACV',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: ''.toFhirStringBuilder,
  );

  /// PC
  static EventTimingBuilder PC = EventTimingBuilder._(
    validatedValue: 'PC',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: ''.toFhirStringBuilder,
  );

  /// PCM
  static EventTimingBuilder PCM = EventTimingBuilder._(
    validatedValue: 'PCM',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: ''.toFhirStringBuilder,
  );

  /// PCD
  static EventTimingBuilder PCD = EventTimingBuilder._(
    validatedValue: 'PCD',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: ''.toFhirStringBuilder,
  );

  /// PCV
  static EventTimingBuilder PCV = EventTimingBuilder._(
    validatedValue: 'PCV',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: ''.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static EventTimingBuilder elementOnly =
      EventTimingBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<EventTimingBuilder> values = [
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
  EventTimingBuilder clone() => EventTimingBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  EventTimingBuilder withElement(ElementBuilder? newElement) {
    return EventTimingBuilder._(validatedValue: value, element: newElement);
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
  EventTimingBuilder copyWith({
    String? newValue,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
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
    return EventTimingBuilder._(
      validatedValue: newValue ?? value,
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
