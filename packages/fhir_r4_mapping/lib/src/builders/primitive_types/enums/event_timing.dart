// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for EventTiming
enum EventTimingBuilderEnum {
  /// MORN
  mORN,

  /// MORN.early
  mornEarly,

  /// MORN.late
  mornLate,

  /// NOON
  nOON,

  /// AFT
  aFT,

  /// AFT.early
  aftEarly,

  /// AFT.late
  aftLate,

  /// EVE
  eVE,

  /// EVE.early
  eveEarly,

  /// EVE.late
  eveLate,

  /// NIGHT
  nIGHT,

  /// PHS
  pHS,

  /// HS
  hS,

  /// WAKE
  wAKE,

  /// C
  c,

  /// CM
  cM,

  /// CD
  cD,

  /// CV
  cV,

  /// AC
  aC,

  /// ACM
  aCM,

  /// ACD
  aCD,

  /// ACV
  aCV,

  /// PC
  pC,

  /// PCM
  pCM,

  /// PCD
  pCD,

  /// PCV
  pCV,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case EventTimingBuilderEnum.mORN:
        return 'MORN';
      case EventTimingBuilderEnum.mornEarly:
        return 'MORN.early';
      case EventTimingBuilderEnum.mornLate:
        return 'MORN.late';
      case EventTimingBuilderEnum.nOON:
        return 'NOON';
      case EventTimingBuilderEnum.aFT:
        return 'AFT';
      case EventTimingBuilderEnum.aftEarly:
        return 'AFT.early';
      case EventTimingBuilderEnum.aftLate:
        return 'AFT.late';
      case EventTimingBuilderEnum.eVE:
        return 'EVE';
      case EventTimingBuilderEnum.eveEarly:
        return 'EVE.early';
      case EventTimingBuilderEnum.eveLate:
        return 'EVE.late';
      case EventTimingBuilderEnum.nIGHT:
        return 'NIGHT';
      case EventTimingBuilderEnum.pHS:
        return 'PHS';
      case EventTimingBuilderEnum.hS:
        return 'HS';
      case EventTimingBuilderEnum.wAKE:
        return 'WAKE';
      case EventTimingBuilderEnum.c:
        return 'C';
      case EventTimingBuilderEnum.cM:
        return 'CM';
      case EventTimingBuilderEnum.cD:
        return 'CD';
      case EventTimingBuilderEnum.cV:
        return 'CV';
      case EventTimingBuilderEnum.aC:
        return 'AC';
      case EventTimingBuilderEnum.aCM:
        return 'ACM';
      case EventTimingBuilderEnum.aCD:
        return 'ACD';
      case EventTimingBuilderEnum.aCV:
        return 'ACV';
      case EventTimingBuilderEnum.pC:
        return 'PC';
      case EventTimingBuilderEnum.pCM:
        return 'PCM';
      case EventTimingBuilderEnum.pCD:
        return 'PCD';
      case EventTimingBuilderEnum.pCV:
        return 'PCV';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static EventTimingBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return EventTimingBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static EventTimingBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'MORN':
        return EventTimingBuilderEnum.mORN;
      case 'MORN.early':
        return EventTimingBuilderEnum.mornEarly;
      case 'MORN.late':
        return EventTimingBuilderEnum.mornLate;
      case 'NOON':
        return EventTimingBuilderEnum.nOON;
      case 'AFT':
        return EventTimingBuilderEnum.aFT;
      case 'AFT.early':
        return EventTimingBuilderEnum.aftEarly;
      case 'AFT.late':
        return EventTimingBuilderEnum.aftLate;
      case 'EVE':
        return EventTimingBuilderEnum.eVE;
      case 'EVE.early':
        return EventTimingBuilderEnum.eveEarly;
      case 'EVE.late':
        return EventTimingBuilderEnum.eveLate;
      case 'NIGHT':
        return EventTimingBuilderEnum.nIGHT;
      case 'PHS':
        return EventTimingBuilderEnum.pHS;
      case 'HS':
        return EventTimingBuilderEnum.hS;
      case 'WAKE':
        return EventTimingBuilderEnum.wAKE;
      case 'C':
        return EventTimingBuilderEnum.c;
      case 'CM':
        return EventTimingBuilderEnum.cM;
      case 'CD':
        return EventTimingBuilderEnum.cD;
      case 'CV':
        return EventTimingBuilderEnum.cV;
      case 'AC':
        return EventTimingBuilderEnum.aC;
      case 'ACM':
        return EventTimingBuilderEnum.aCM;
      case 'ACD':
        return EventTimingBuilderEnum.aCD;
      case 'ACV':
        return EventTimingBuilderEnum.aCV;
      case 'PC':
        return EventTimingBuilderEnum.pC;
      case 'PCM':
        return EventTimingBuilderEnum.pCM;
      case 'PCD':
        return EventTimingBuilderEnum.pCD;
      case 'PCV':
        return EventTimingBuilderEnum.pCV;
    }
    return null;
  }
}

/// Real world event relating to the schedule.
class EventTimingBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  EventTimingBuilder._({
    required super.valueString,
    this.valueEnum,
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
    final valueEnum = EventTimingBuilderEnum.fromString(
      valueString,
    );
    return EventTimingBuilder._(
      valueString: valueString,
      valueEnum: valueEnum,
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

  /// Create empty [EventTimingBuilder]
  /// with element only
  factory EventTimingBuilder.empty() => EventTimingBuilder._(valueString: null);

  /// Factory constructor to create
  /// [EventTimingBuilder] from JSON.
  factory EventTimingBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EventTimingBuilder._(
        valueString: null,
        element: element,
      );
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

  ///  An actual enum that can be used for EventTimingBuilder
  final EventTimingBuilderEnum? valueEnum;

  /// MORN
  static EventTimingBuilder mORN = EventTimingBuilder._(
    valueString: 'MORN',
    valueEnum: EventTimingBuilderEnum.mORN,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-timing',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Morning',
    ),
  );

  /// MORN_early
  static EventTimingBuilder mornEarly = EventTimingBuilder._(
    valueString: 'MORN.early',
    valueEnum: EventTimingBuilderEnum.mornEarly,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-timing',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Early Morning',
    ),
  );

  /// MORN_late
  static EventTimingBuilder mornLate = EventTimingBuilder._(
    valueString: 'MORN.late',
    valueEnum: EventTimingBuilderEnum.mornLate,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-timing',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Late Morning',
    ),
  );

  /// NOON
  static EventTimingBuilder nOON = EventTimingBuilder._(
    valueString: 'NOON',
    valueEnum: EventTimingBuilderEnum.nOON,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-timing',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Noon',
    ),
  );

  /// AFT
  static EventTimingBuilder aFT = EventTimingBuilder._(
    valueString: 'AFT',
    valueEnum: EventTimingBuilderEnum.aFT,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-timing',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Afternoon',
    ),
  );

  /// AFT_early
  static EventTimingBuilder aftEarly = EventTimingBuilder._(
    valueString: 'AFT.early',
    valueEnum: EventTimingBuilderEnum.aftEarly,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-timing',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Early Afternoon',
    ),
  );

  /// AFT_late
  static EventTimingBuilder aftLate = EventTimingBuilder._(
    valueString: 'AFT.late',
    valueEnum: EventTimingBuilderEnum.aftLate,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-timing',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Late Afternoon',
    ),
  );

  /// EVE
  static EventTimingBuilder eVE = EventTimingBuilder._(
    valueString: 'EVE',
    valueEnum: EventTimingBuilderEnum.eVE,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-timing',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Evening',
    ),
  );

  /// EVE_early
  static EventTimingBuilder eveEarly = EventTimingBuilder._(
    valueString: 'EVE.early',
    valueEnum: EventTimingBuilderEnum.eveEarly,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-timing',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Early Evening',
    ),
  );

  /// EVE_late
  static EventTimingBuilder eveLate = EventTimingBuilder._(
    valueString: 'EVE.late',
    valueEnum: EventTimingBuilderEnum.eveLate,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-timing',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Late Evening',
    ),
  );

  /// NIGHT
  static EventTimingBuilder nIGHT = EventTimingBuilder._(
    valueString: 'NIGHT',
    valueEnum: EventTimingBuilderEnum.nIGHT,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-timing',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Night',
    ),
  );

  /// PHS
  static EventTimingBuilder pHS = EventTimingBuilder._(
    valueString: 'PHS',
    valueEnum: EventTimingBuilderEnum.pHS,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-timing',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'After Sleep',
    ),
  );

  /// HS
  static EventTimingBuilder hS = EventTimingBuilder._(
    valueString: 'HS',
    valueEnum: EventTimingBuilderEnum.hS,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-timing',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: '',
    ),
  );

  /// WAKE
  static EventTimingBuilder wAKE = EventTimingBuilder._(
    valueString: 'WAKE',
    valueEnum: EventTimingBuilderEnum.wAKE,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-timing',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: '',
    ),
  );

  /// C
  static EventTimingBuilder c = EventTimingBuilder._(
    valueString: 'C',
    valueEnum: EventTimingBuilderEnum.c,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-timing',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: '',
    ),
  );

  /// CM
  static EventTimingBuilder cM = EventTimingBuilder._(
    valueString: 'CM',
    valueEnum: EventTimingBuilderEnum.cM,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-timing',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: '',
    ),
  );

  /// CD
  static EventTimingBuilder cD = EventTimingBuilder._(
    valueString: 'CD',
    valueEnum: EventTimingBuilderEnum.cD,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-timing',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: '',
    ),
  );

  /// CV
  static EventTimingBuilder cV = EventTimingBuilder._(
    valueString: 'CV',
    valueEnum: EventTimingBuilderEnum.cV,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-timing',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: '',
    ),
  );

  /// AC
  static EventTimingBuilder aC = EventTimingBuilder._(
    valueString: 'AC',
    valueEnum: EventTimingBuilderEnum.aC,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-timing',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: '',
    ),
  );

  /// ACM
  static EventTimingBuilder aCM = EventTimingBuilder._(
    valueString: 'ACM',
    valueEnum: EventTimingBuilderEnum.aCM,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-timing',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: '',
    ),
  );

  /// ACD
  static EventTimingBuilder aCD = EventTimingBuilder._(
    valueString: 'ACD',
    valueEnum: EventTimingBuilderEnum.aCD,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-timing',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: '',
    ),
  );

  /// ACV
  static EventTimingBuilder aCV = EventTimingBuilder._(
    valueString: 'ACV',
    valueEnum: EventTimingBuilderEnum.aCV,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-timing',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: '',
    ),
  );

  /// PC
  static EventTimingBuilder pC = EventTimingBuilder._(
    valueString: 'PC',
    valueEnum: EventTimingBuilderEnum.pC,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-timing',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: '',
    ),
  );

  /// PCM
  static EventTimingBuilder pCM = EventTimingBuilder._(
    valueString: 'PCM',
    valueEnum: EventTimingBuilderEnum.pCM,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-timing',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: '',
    ),
  );

  /// PCD
  static EventTimingBuilder pCD = EventTimingBuilder._(
    valueString: 'PCD',
    valueEnum: EventTimingBuilderEnum.pCD,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-timing',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: '',
    ),
  );

  /// PCV
  static EventTimingBuilder pCV = EventTimingBuilder._(
    valueString: 'PCV',
    valueEnum: EventTimingBuilderEnum.pCV,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-timing',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: '',
    ),
  );

  /// For instances where an Element is present but not value
  static EventTimingBuilder elementOnly = EventTimingBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<EventTimingBuilder> values = [
    mORN,
    mornEarly,
    mornLate,
    nOON,
    aFT,
    aftEarly,
    aftLate,
    eVE,
    eveEarly,
    eveLate,
    nIGHT,
    pHS,
    hS,
    wAKE,
    c,
    cM,
    cD,
    cV,
    aC,
    aCM,
    aCD,
    aCV,
    pC,
    pCM,
    pCD,
    pCV,
  ];

  /// Returns the enum value with an element attached
  EventTimingBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return EventTimingBuilder._(
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
}
