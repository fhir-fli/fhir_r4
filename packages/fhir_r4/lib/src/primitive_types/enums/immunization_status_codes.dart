part of '../primitive_types.dart';

/// Actual enum for ImmunizationStatusCodes
enum ImmunizationStatusCodesEnum {
  /// preparation
  preparation,

  /// in-progress
  inProgress,

  /// not-done
  notDone,

  /// on-hold
  onHold,

  /// stopped
  stopped,

  /// completed
  completed,

  /// entered-in-error
  enteredInError,

  /// unknown
  unknown,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ImmunizationStatusCodesEnum.preparation:
        return 'preparation';
      case ImmunizationStatusCodesEnum.inProgress:
        return 'in-progress';
      case ImmunizationStatusCodesEnum.notDone:
        return 'not-done';
      case ImmunizationStatusCodesEnum.onHold:
        return 'on-hold';
      case ImmunizationStatusCodesEnum.stopped:
        return 'stopped';
      case ImmunizationStatusCodesEnum.completed:
        return 'completed';
      case ImmunizationStatusCodesEnum.enteredInError:
        return 'entered-in-error';
      case ImmunizationStatusCodesEnum.unknown:
        return 'unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ImmunizationStatusCodesEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ImmunizationStatusCodesEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ImmunizationStatusCodesEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'preparation':
        return ImmunizationStatusCodesEnum.preparation;
      case 'in-progress':
        return ImmunizationStatusCodesEnum.inProgress;
      case 'not-done':
        return ImmunizationStatusCodesEnum.notDone;
      case 'on-hold':
        return ImmunizationStatusCodesEnum.onHold;
      case 'stopped':
        return ImmunizationStatusCodesEnum.stopped;
      case 'completed':
        return ImmunizationStatusCodesEnum.completed;
      case 'entered-in-error':
        return ImmunizationStatusCodesEnum.enteredInError;
      case 'unknown':
        return ImmunizationStatusCodesEnum.unknown;
    }
    return null;
  }
}

/// The value set to instantiate this attribute should be drawn from a
/// terminologically robust code system that consists of or contains
/// concepts to support describing the current status of the administered
/// dose of vaccine.
class ImmunizationStatusCodes extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ImmunizationStatusCodes._({
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
  factory ImmunizationStatusCodes(
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
    final valueEnum = ImmunizationStatusCodesEnum.fromString(valueString);
    return ImmunizationStatusCodes._(
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

  /// Factory constructor to create [ImmunizationStatusCodes]
  /// from JSON.
  factory ImmunizationStatusCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ImmunizationStatusCodesEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationStatusCodes._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ImmunizationStatusCodes cannot be constructed from JSON.',
      );
    }
    return ImmunizationStatusCodes._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ImmunizationStatusCodes
  final ImmunizationStatusCodesEnum? valueEnum;

  /// preparation
  static const ImmunizationStatusCodes preparation = ImmunizationStatusCodes._(
    valueString: 'preparation',
    valueEnum: ImmunizationStatusCodesEnum.preparation,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/immunization-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Preparation',
    ),
  );

  /// in_progress
  static const ImmunizationStatusCodes inProgress = ImmunizationStatusCodes._(
    valueString: 'in-progress',
    valueEnum: ImmunizationStatusCodesEnum.inProgress,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/immunization-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'In Progress',
    ),
  );

  /// not_done
  static const ImmunizationStatusCodes notDone = ImmunizationStatusCodes._(
    valueString: 'not-done',
    valueEnum: ImmunizationStatusCodesEnum.notDone,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/immunization-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Not Done',
    ),
  );

  /// on_hold
  static const ImmunizationStatusCodes onHold = ImmunizationStatusCodes._(
    valueString: 'on-hold',
    valueEnum: ImmunizationStatusCodesEnum.onHold,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/immunization-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'On Hold',
    ),
  );

  /// stopped
  static const ImmunizationStatusCodes stopped = ImmunizationStatusCodes._(
    valueString: 'stopped',
    valueEnum: ImmunizationStatusCodesEnum.stopped,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/immunization-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Stopped',
    ),
  );

  /// completed
  static const ImmunizationStatusCodes completed = ImmunizationStatusCodes._(
    valueString: 'completed',
    valueEnum: ImmunizationStatusCodesEnum.completed,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/immunization-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Completed',
    ),
  );

  /// entered_in_error
  static const ImmunizationStatusCodes enteredInError =
      ImmunizationStatusCodes._(
    valueString: 'entered-in-error',
    valueEnum: ImmunizationStatusCodesEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/immunization-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Entered in Error',
    ),
  );

  /// unknown
  static const ImmunizationStatusCodes unknown = ImmunizationStatusCodes._(
    valueString: 'unknown',
    valueEnum: ImmunizationStatusCodesEnum.unknown,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/immunization-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Unknown',
    ),
  );

  /// List of all enum-like values
  static final List<ImmunizationStatusCodes> values = [
    preparation,
    inProgress,
    notDone,
    onHold,
    stopped,
    completed,
    enteredInError,
    unknown,
  ];

  /// Returns the enum value with an element attached
  ImmunizationStatusCodes withElement(Element? newElement) {
    return ImmunizationStatusCodes._(
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
  ImmunizationStatusCodes clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ImmunizationStatusCodesCopyWithImpl<ImmunizationStatusCodes> get copyWith =>
      ImmunizationStatusCodesCopyWithImpl<ImmunizationStatusCodes>(
        this,
        (v) => v as ImmunizationStatusCodes,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ImmunizationStatusCodesCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ImmunizationStatusCodesCopyWithImpl(super._value, super._then);

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
      ImmunizationStatusCodes(
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
