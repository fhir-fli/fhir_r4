// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for EventTiming
enum EventTimingEnum {
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
      case EventTimingEnum.mORN:
        return 'MORN';
      case EventTimingEnum.mornEarly:
        return 'MORN.early';
      case EventTimingEnum.mornLate:
        return 'MORN.late';
      case EventTimingEnum.nOON:
        return 'NOON';
      case EventTimingEnum.aFT:
        return 'AFT';
      case EventTimingEnum.aftEarly:
        return 'AFT.early';
      case EventTimingEnum.aftLate:
        return 'AFT.late';
      case EventTimingEnum.eVE:
        return 'EVE';
      case EventTimingEnum.eveEarly:
        return 'EVE.early';
      case EventTimingEnum.eveLate:
        return 'EVE.late';
      case EventTimingEnum.nIGHT:
        return 'NIGHT';
      case EventTimingEnum.pHS:
        return 'PHS';
      case EventTimingEnum.hS:
        return 'HS';
      case EventTimingEnum.wAKE:
        return 'WAKE';
      case EventTimingEnum.c:
        return 'C';
      case EventTimingEnum.cM:
        return 'CM';
      case EventTimingEnum.cD:
        return 'CD';
      case EventTimingEnum.cV:
        return 'CV';
      case EventTimingEnum.aC:
        return 'AC';
      case EventTimingEnum.aCM:
        return 'ACM';
      case EventTimingEnum.aCD:
        return 'ACD';
      case EventTimingEnum.aCV:
        return 'ACV';
      case EventTimingEnum.pC:
        return 'PC';
      case EventTimingEnum.pCM:
        return 'PCM';
      case EventTimingEnum.pCD:
        return 'PCD';
      case EventTimingEnum.pCV:
        return 'PCV';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static EventTimingEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return EventTimingEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static EventTimingEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'MORN':
        return EventTimingEnum.mORN;
      case 'MORN.early':
        return EventTimingEnum.mornEarly;
      case 'MORN.late':
        return EventTimingEnum.mornLate;
      case 'NOON':
        return EventTimingEnum.nOON;
      case 'AFT':
        return EventTimingEnum.aFT;
      case 'AFT.early':
        return EventTimingEnum.aftEarly;
      case 'AFT.late':
        return EventTimingEnum.aftLate;
      case 'EVE':
        return EventTimingEnum.eVE;
      case 'EVE.early':
        return EventTimingEnum.eveEarly;
      case 'EVE.late':
        return EventTimingEnum.eveLate;
      case 'NIGHT':
        return EventTimingEnum.nIGHT;
      case 'PHS':
        return EventTimingEnum.pHS;
      case 'HS':
        return EventTimingEnum.hS;
      case 'WAKE':
        return EventTimingEnum.wAKE;
      case 'C':
        return EventTimingEnum.c;
      case 'CM':
        return EventTimingEnum.cM;
      case 'CD':
        return EventTimingEnum.cD;
      case 'CV':
        return EventTimingEnum.cV;
      case 'AC':
        return EventTimingEnum.aC;
      case 'ACM':
        return EventTimingEnum.aCM;
      case 'ACD':
        return EventTimingEnum.aCD;
      case 'ACV':
        return EventTimingEnum.aCV;
      case 'PC':
        return EventTimingEnum.pC;
      case 'PCM':
        return EventTimingEnum.pCM;
      case 'PCD':
        return EventTimingEnum.pCD;
      case 'PCV':
        return EventTimingEnum.pCV;
    }
    return null;
  }
}

/// Real world event relating to the schedule.
class EventTiming extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const EventTiming._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
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
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    final valueEnum = EventTimingEnum.fromString(valueString);
    return EventTiming._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  /// Factory constructor to create [EventTiming]
  /// from JSON.
  factory EventTiming.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = EventTimingEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return EventTiming._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'EventTiming cannot be constructed from JSON.',
      );
    }
    return EventTiming._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for EventTiming
  final EventTimingEnum? valueEnum;

  /// MORN
  static const EventTiming mORN = EventTiming._(
    valueString: 'MORN',
    valueEnum: EventTimingEnum.mORN,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-timing',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Morning',
    ),
  );

  /// MORN_early
  static const EventTiming mornEarly = EventTiming._(
    valueString: 'MORN.early',
    valueEnum: EventTimingEnum.mornEarly,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-timing',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Early Morning',
    ),
  );

  /// MORN_late
  static const EventTiming mornLate = EventTiming._(
    valueString: 'MORN.late',
    valueEnum: EventTimingEnum.mornLate,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-timing',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Late Morning',
    ),
  );

  /// NOON
  static const EventTiming nOON = EventTiming._(
    valueString: 'NOON',
    valueEnum: EventTimingEnum.nOON,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-timing',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Noon',
    ),
  );

  /// AFT
  static const EventTiming aFT = EventTiming._(
    valueString: 'AFT',
    valueEnum: EventTimingEnum.aFT,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-timing',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Afternoon',
    ),
  );

  /// AFT_early
  static const EventTiming aftEarly = EventTiming._(
    valueString: 'AFT.early',
    valueEnum: EventTimingEnum.aftEarly,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-timing',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Early Afternoon',
    ),
  );

  /// AFT_late
  static const EventTiming aftLate = EventTiming._(
    valueString: 'AFT.late',
    valueEnum: EventTimingEnum.aftLate,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-timing',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Late Afternoon',
    ),
  );

  /// EVE
  static const EventTiming eVE = EventTiming._(
    valueString: 'EVE',
    valueEnum: EventTimingEnum.eVE,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-timing',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Evening',
    ),
  );

  /// EVE_early
  static const EventTiming eveEarly = EventTiming._(
    valueString: 'EVE.early',
    valueEnum: EventTimingEnum.eveEarly,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-timing',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Early Evening',
    ),
  );

  /// EVE_late
  static const EventTiming eveLate = EventTiming._(
    valueString: 'EVE.late',
    valueEnum: EventTimingEnum.eveLate,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-timing',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Late Evening',
    ),
  );

  /// NIGHT
  static const EventTiming nIGHT = EventTiming._(
    valueString: 'NIGHT',
    valueEnum: EventTimingEnum.nIGHT,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-timing',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Night',
    ),
  );

  /// PHS
  static const EventTiming pHS = EventTiming._(
    valueString: 'PHS',
    valueEnum: EventTimingEnum.pHS,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-timing',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'After Sleep',
    ),
  );

  /// HS
  static const EventTiming hS = EventTiming._(
    valueString: 'HS',
    valueEnum: EventTimingEnum.hS,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-timing',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: '',
    ),
  );

  /// WAKE
  static const EventTiming wAKE = EventTiming._(
    valueString: 'WAKE',
    valueEnum: EventTimingEnum.wAKE,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-timing',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: '',
    ),
  );

  /// C
  static const EventTiming c = EventTiming._(
    valueString: 'C',
    valueEnum: EventTimingEnum.c,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-timing',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: '',
    ),
  );

  /// CM
  static const EventTiming cM = EventTiming._(
    valueString: 'CM',
    valueEnum: EventTimingEnum.cM,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-timing',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: '',
    ),
  );

  /// CD
  static const EventTiming cD = EventTiming._(
    valueString: 'CD',
    valueEnum: EventTimingEnum.cD,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-timing',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: '',
    ),
  );

  /// CV
  static const EventTiming cV = EventTiming._(
    valueString: 'CV',
    valueEnum: EventTimingEnum.cV,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-timing',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: '',
    ),
  );

  /// AC
  static const EventTiming aC = EventTiming._(
    valueString: 'AC',
    valueEnum: EventTimingEnum.aC,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-timing',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: '',
    ),
  );

  /// ACM
  static const EventTiming aCM = EventTiming._(
    valueString: 'ACM',
    valueEnum: EventTimingEnum.aCM,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-timing',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: '',
    ),
  );

  /// ACD
  static const EventTiming aCD = EventTiming._(
    valueString: 'ACD',
    valueEnum: EventTimingEnum.aCD,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-timing',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: '',
    ),
  );

  /// ACV
  static const EventTiming aCV = EventTiming._(
    valueString: 'ACV',
    valueEnum: EventTimingEnum.aCV,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-timing',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: '',
    ),
  );

  /// PC
  static const EventTiming pC = EventTiming._(
    valueString: 'PC',
    valueEnum: EventTimingEnum.pC,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-timing',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: '',
    ),
  );

  /// PCM
  static const EventTiming pCM = EventTiming._(
    valueString: 'PCM',
    valueEnum: EventTimingEnum.pCM,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-timing',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: '',
    ),
  );

  /// PCD
  static const EventTiming pCD = EventTiming._(
    valueString: 'PCD',
    valueEnum: EventTimingEnum.pCD,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-timing',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: '',
    ),
  );

  /// PCV
  static const EventTiming pCV = EventTiming._(
    valueString: 'PCV',
    valueEnum: EventTimingEnum.pCV,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/event-timing',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: '',
    ),
  );

  /// List of all enum-like values
  static final List<EventTiming> values = [
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

  @override
  EventTiming clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  EventTimingCopyWithImpl<EventTiming> get copyWith =>
      EventTimingCopyWithImpl<EventTiming>(
        this,
        (v) => v as EventTiming,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class EventTimingCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  EventTimingCopyWithImpl(super._value, super._then);

  @override
  T call({
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    if (!identical(newValue, fhirSentinel) && newValue is! String?) {
      throw ArgumentError(
        'newValue must be a String or null, but found ${newValue.runtimeType}',
        'newValue',
      );
    }
    return _then(
      EventTiming(
        identical(newValue, fhirSentinel)
            ? _value.valueString
            : newValue as String?,
        element: identical(element, fhirSentinel)
            ? _value.element
            : element as Element?,
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}
