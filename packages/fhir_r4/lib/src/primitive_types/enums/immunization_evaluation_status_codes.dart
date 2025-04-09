// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ImmunizationEvaluationStatusCodes
enum ImmunizationEvaluationStatusCodesEnum {
  /// in-progress
  inProgress,

  /// not-done
  notDone,

  /// on-hold
  onHold,

  /// completed
  completed,

  /// entered-in-error
  enteredInError,

  /// stopped
  stopped,

  /// unknown
  unknown,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ImmunizationEvaluationStatusCodesEnum.inProgress:
        return 'in-progress';
      case ImmunizationEvaluationStatusCodesEnum.notDone:
        return 'not-done';
      case ImmunizationEvaluationStatusCodesEnum.onHold:
        return 'on-hold';
      case ImmunizationEvaluationStatusCodesEnum.completed:
        return 'completed';
      case ImmunizationEvaluationStatusCodesEnum.enteredInError:
        return 'entered-in-error';
      case ImmunizationEvaluationStatusCodesEnum.stopped:
        return 'stopped';
      case ImmunizationEvaluationStatusCodesEnum.unknown:
        return 'unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ImmunizationEvaluationStatusCodesEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ImmunizationEvaluationStatusCodesEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ImmunizationEvaluationStatusCodesEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'in-progress':
        return ImmunizationEvaluationStatusCodesEnum.inProgress;
      case 'not-done':
        return ImmunizationEvaluationStatusCodesEnum.notDone;
      case 'on-hold':
        return ImmunizationEvaluationStatusCodesEnum.onHold;
      case 'completed':
        return ImmunizationEvaluationStatusCodesEnum.completed;
      case 'entered-in-error':
        return ImmunizationEvaluationStatusCodesEnum.enteredInError;
      case 'stopped':
        return ImmunizationEvaluationStatusCodesEnum.stopped;
      case 'unknown':
        return ImmunizationEvaluationStatusCodesEnum.unknown;
    }
    return null;
  }
}

/// The value set to instantiate this attribute should be drawn from a
/// terminologically robust code system that consists of or contains
/// concepts to support describing the current status of the evaluation for
/// vaccine administration event.
class ImmunizationEvaluationStatusCodes extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ImmunizationEvaluationStatusCodes._({
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
  factory ImmunizationEvaluationStatusCodes(
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
    final valueEnum =
        ImmunizationEvaluationStatusCodesEnum.fromString(valueString);
    return ImmunizationEvaluationStatusCodes._(
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

  /// Factory constructor to create [ImmunizationEvaluationStatusCodes]
  /// from JSON.
  factory ImmunizationEvaluationStatusCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ImmunizationEvaluationStatusCodesEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImmunizationEvaluationStatusCodes._(
          valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ImmunizationEvaluationStatusCodes cannot be constructed from JSON.',
      );
    }
    return ImmunizationEvaluationStatusCodes._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ImmunizationEvaluationStatusCodes
  final ImmunizationEvaluationStatusCodesEnum? valueEnum;

  /// in_progress
  static const ImmunizationEvaluationStatusCodes inProgress =
      ImmunizationEvaluationStatusCodes._(
    valueString: 'in-progress',
    valueEnum: ImmunizationEvaluationStatusCodesEnum.inProgress,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/immunization-evaluation-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'In Progress',
    ),
  );

  /// not_done
  static const ImmunizationEvaluationStatusCodes notDone =
      ImmunizationEvaluationStatusCodes._(
    valueString: 'not-done',
    valueEnum: ImmunizationEvaluationStatusCodesEnum.notDone,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/immunization-evaluation-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Not Done',
    ),
  );

  /// on_hold
  static const ImmunizationEvaluationStatusCodes onHold =
      ImmunizationEvaluationStatusCodes._(
    valueString: 'on-hold',
    valueEnum: ImmunizationEvaluationStatusCodesEnum.onHold,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/immunization-evaluation-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'On Hold',
    ),
  );

  /// completed
  static const ImmunizationEvaluationStatusCodes completed =
      ImmunizationEvaluationStatusCodes._(
    valueString: 'completed',
    valueEnum: ImmunizationEvaluationStatusCodesEnum.completed,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/immunization-evaluation-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Completed',
    ),
  );

  /// entered_in_error
  static const ImmunizationEvaluationStatusCodes enteredInError =
      ImmunizationEvaluationStatusCodes._(
    valueString: 'entered-in-error',
    valueEnum: ImmunizationEvaluationStatusCodesEnum.enteredInError,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/immunization-evaluation-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Entered in Error',
    ),
  );

  /// stopped
  static const ImmunizationEvaluationStatusCodes stopped =
      ImmunizationEvaluationStatusCodes._(
    valueString: 'stopped',
    valueEnum: ImmunizationEvaluationStatusCodesEnum.stopped,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/immunization-evaluation-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Stopped',
    ),
  );

  /// unknown
  static const ImmunizationEvaluationStatusCodes unknown =
      ImmunizationEvaluationStatusCodes._(
    valueString: 'unknown',
    valueEnum: ImmunizationEvaluationStatusCodesEnum.unknown,
    system: FhirUri._(
      valueString:
          'http://hl7.org/fhir/ValueSet/immunization-evaluation-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Unknown',
    ),
  );

  /// List of all enum-like values
  static final List<ImmunizationEvaluationStatusCodes> values = [
    inProgress,
    notDone,
    onHold,
    completed,
    enteredInError,
    stopped,
    unknown,
  ];

  /// Returns the enum value with an element attached
  ImmunizationEvaluationStatusCodes withElement(Element? newElement) {
    return ImmunizationEvaluationStatusCodes._(
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
  ImmunizationEvaluationStatusCodes clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ImmunizationEvaluationStatusCodesCopyWithImpl<
          ImmunizationEvaluationStatusCodes>
      get copyWith => ImmunizationEvaluationStatusCodesCopyWithImpl<
              ImmunizationEvaluationStatusCodes>(
            this,
            (v) => v as ImmunizationEvaluationStatusCodes,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ImmunizationEvaluationStatusCodesCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ImmunizationEvaluationStatusCodesCopyWithImpl(super._value, super._then);

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
      ImmunizationEvaluationStatusCodes(
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
