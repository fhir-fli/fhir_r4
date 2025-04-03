// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Real world event relating to the schedule.
class EventTimingBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  EventTimingBuilder._({
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
  factory EventTimingBuilder(
    String? rawValue, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCodeBuilder._validateCode(rawValue) : null;
    return EventTimingBuilder._(
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

  /// Create empty [EventTimingBuilder] with element only
  factory EventTimingBuilder.empty() => EventTimingBuilder._(valueString: '');

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
      valueString: value,
      element: element,
    );
  }

  /// MORN
  static EventTimingBuilder MORN = EventTimingBuilder._(
    valueString: 'MORN',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Morning'.toFhirStringBuilder,
  );

  /// MORN_early
  static EventTimingBuilder MORN_early = EventTimingBuilder._(
    valueString: 'MORN.early',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Early Morning'.toFhirStringBuilder,
  );

  /// MORN_late
  static EventTimingBuilder MORN_late = EventTimingBuilder._(
    valueString: 'MORN.late',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Late Morning'.toFhirStringBuilder,
  );

  /// NOON
  static EventTimingBuilder NOON = EventTimingBuilder._(
    valueString: 'NOON',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Noon'.toFhirStringBuilder,
  );

  /// AFT
  static EventTimingBuilder AFT = EventTimingBuilder._(
    valueString: 'AFT',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Afternoon'.toFhirStringBuilder,
  );

  /// AFT_early
  static EventTimingBuilder AFT_early = EventTimingBuilder._(
    valueString: 'AFT.early',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Early Afternoon'.toFhirStringBuilder,
  );

  /// AFT_late
  static EventTimingBuilder AFT_late = EventTimingBuilder._(
    valueString: 'AFT.late',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Late Afternoon'.toFhirStringBuilder,
  );

  /// EVE
  static EventTimingBuilder EVE = EventTimingBuilder._(
    valueString: 'EVE',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Evening'.toFhirStringBuilder,
  );

  /// EVE_early
  static EventTimingBuilder EVE_early = EventTimingBuilder._(
    valueString: 'EVE.early',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Early Evening'.toFhirStringBuilder,
  );

  /// EVE_late
  static EventTimingBuilder EVE_late = EventTimingBuilder._(
    valueString: 'EVE.late',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Late Evening'.toFhirStringBuilder,
  );

  /// NIGHT
  static EventTimingBuilder NIGHT = EventTimingBuilder._(
    valueString: 'NIGHT',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Night'.toFhirStringBuilder,
  );

  /// PHS
  static EventTimingBuilder PHS = EventTimingBuilder._(
    valueString: 'PHS',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'After Sleep'.toFhirStringBuilder,
  );

  /// HS
  static EventTimingBuilder HS = EventTimingBuilder._(
    valueString: 'HS',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: ''.toFhirStringBuilder,
  );

  /// WAKE
  static EventTimingBuilder WAKE = EventTimingBuilder._(
    valueString: 'WAKE',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: ''.toFhirStringBuilder,
  );

  /// C
  static EventTimingBuilder C = EventTimingBuilder._(
    valueString: 'C',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: ''.toFhirStringBuilder,
  );

  /// CM
  static EventTimingBuilder CM = EventTimingBuilder._(
    valueString: 'CM',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: ''.toFhirStringBuilder,
  );

  /// CD
  static EventTimingBuilder CD = EventTimingBuilder._(
    valueString: 'CD',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: ''.toFhirStringBuilder,
  );

  /// CV
  static EventTimingBuilder CV = EventTimingBuilder._(
    valueString: 'CV',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: ''.toFhirStringBuilder,
  );

  /// AC
  static EventTimingBuilder AC = EventTimingBuilder._(
    valueString: 'AC',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: ''.toFhirStringBuilder,
  );

  /// ACM
  static EventTimingBuilder ACM = EventTimingBuilder._(
    valueString: 'ACM',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: ''.toFhirStringBuilder,
  );

  /// ACD
  static EventTimingBuilder ACD = EventTimingBuilder._(
    valueString: 'ACD',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: ''.toFhirStringBuilder,
  );

  /// ACV
  static EventTimingBuilder ACV = EventTimingBuilder._(
    valueString: 'ACV',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: ''.toFhirStringBuilder,
  );

  /// PC
  static EventTimingBuilder PC = EventTimingBuilder._(
    valueString: 'PC',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: ''.toFhirStringBuilder,
  );

  /// PCM
  static EventTimingBuilder PCM = EventTimingBuilder._(
    valueString: 'PCM',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: ''.toFhirStringBuilder,
  );

  /// PCD
  static EventTimingBuilder PCD = EventTimingBuilder._(
    valueString: 'PCD',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: ''.toFhirStringBuilder,
  );

  /// PCV
  static EventTimingBuilder PCV = EventTimingBuilder._(
    valueString: 'PCV',
    system: 'http://hl7.org/fhir/ValueSet/event-timing'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: ''.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static EventTimingBuilder elementOnly = EventTimingBuilder._(valueString: '');

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
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  EventTimingBuilder withElement(ElementBuilder? newElement) {
    return EventTimingBuilder._(valueString: valueString, element: newElement);
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
  EventTimingBuilder copyWith({
    dynamic newValue,
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
    if (newValue is! String?) {
      throw ArgumentError('Invalid input for EventTiming: $newValue');
    }
    return EventTimingBuilder._(
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
