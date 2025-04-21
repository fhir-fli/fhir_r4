// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for MedicationDispenseStatusCodes
enum MedicationDispenseStatusCodesEnum {
  /// preparation
  preparation,

  /// in-progress
  inProgress,

  /// cancelled
  cancelled,

  /// on-hold
  onHold,

  /// completed
  completed,

  /// entered-in-error
  enteredInError,

  /// stopped
  stopped,

  /// declined
  declined,

  /// unknown
  unknown,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case MedicationDispenseStatusCodesEnum.preparation:
        return 'preparation';
      case MedicationDispenseStatusCodesEnum.inProgress:
        return 'in-progress';
      case MedicationDispenseStatusCodesEnum.cancelled:
        return 'cancelled';
      case MedicationDispenseStatusCodesEnum.onHold:
        return 'on-hold';
      case MedicationDispenseStatusCodesEnum.completed:
        return 'completed';
      case MedicationDispenseStatusCodesEnum.enteredInError:
        return 'entered-in-error';
      case MedicationDispenseStatusCodesEnum.stopped:
        return 'stopped';
      case MedicationDispenseStatusCodesEnum.declined:
        return 'declined';
      case MedicationDispenseStatusCodesEnum.unknown:
        return 'unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static MedicationDispenseStatusCodesEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return MedicationDispenseStatusCodesEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static MedicationDispenseStatusCodesEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'preparation':
        return MedicationDispenseStatusCodesEnum.preparation;
      case 'in-progress':
        return MedicationDispenseStatusCodesEnum.inProgress;
      case 'cancelled':
        return MedicationDispenseStatusCodesEnum.cancelled;
      case 'on-hold':
        return MedicationDispenseStatusCodesEnum.onHold;
      case 'completed':
        return MedicationDispenseStatusCodesEnum.completed;
      case 'entered-in-error':
        return MedicationDispenseStatusCodesEnum.enteredInError;
      case 'stopped':
        return MedicationDispenseStatusCodesEnum.stopped;
      case 'declined':
        return MedicationDispenseStatusCodesEnum.declined;
      case 'unknown':
        return MedicationDispenseStatusCodesEnum.unknown;
    }
    return null;
  }
}

/// MedicationDispense Status Codes
class MedicationDispenseStatusCodes extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const MedicationDispenseStatusCodes._({
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
  factory MedicationDispenseStatusCodes(
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
    final valueEnum = MedicationDispenseStatusCodesEnum.fromString(valueString);
    return MedicationDispenseStatusCodes._(
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

  /// Factory constructor to create [MedicationDispenseStatusCodes]
  /// from JSON.
  factory MedicationDispenseStatusCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = MedicationDispenseStatusCodesEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationDispenseStatusCodes._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MedicationDispenseStatusCodes cannot be constructed from JSON.',
      );
    }
    return MedicationDispenseStatusCodes._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for MedicationDispenseStatusCodes
  final MedicationDispenseStatusCodesEnum? valueEnum;

  /// preparation
  static const MedicationDispenseStatusCodes preparation =
      MedicationDispenseStatusCodes._(
    valueString: 'preparation',
    valueEnum: MedicationDispenseStatusCodesEnum.preparation,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationdispense-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Preparation',
    ),
  );

  /// in_progress
  static const MedicationDispenseStatusCodes inProgress =
      MedicationDispenseStatusCodes._(
    valueString: 'in-progress',
    valueEnum: MedicationDispenseStatusCodesEnum.inProgress,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationdispense-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'In Progress',
    ),
  );

  /// cancelled
  static const MedicationDispenseStatusCodes cancelled =
      MedicationDispenseStatusCodes._(
    valueString: 'cancelled',
    valueEnum: MedicationDispenseStatusCodesEnum.cancelled,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationdispense-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Cancelled',
    ),
  );

  /// on_hold
  static const MedicationDispenseStatusCodes onHold =
      MedicationDispenseStatusCodes._(
    valueString: 'on-hold',
    valueEnum: MedicationDispenseStatusCodesEnum.onHold,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationdispense-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'On Hold',
    ),
  );

  /// completed
  static const MedicationDispenseStatusCodes completed =
      MedicationDispenseStatusCodes._(
    valueString: 'completed',
    valueEnum: MedicationDispenseStatusCodesEnum.completed,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationdispense-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Completed',
    ),
  );

  /// entered_in_error
  static const MedicationDispenseStatusCodes enteredInError =
      MedicationDispenseStatusCodes._(
    valueString: 'entered-in-error',
    valueEnum: MedicationDispenseStatusCodesEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationdispense-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Entered in Error',
    ),
  );

  /// stopped
  static const MedicationDispenseStatusCodes stopped =
      MedicationDispenseStatusCodes._(
    valueString: 'stopped',
    valueEnum: MedicationDispenseStatusCodesEnum.stopped,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationdispense-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Stopped',
    ),
  );

  /// declined
  static const MedicationDispenseStatusCodes declined =
      MedicationDispenseStatusCodes._(
    valueString: 'declined',
    valueEnum: MedicationDispenseStatusCodesEnum.declined,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationdispense-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Declined',
    ),
  );

  /// unknown
  static const MedicationDispenseStatusCodes unknown =
      MedicationDispenseStatusCodes._(
    valueString: 'unknown',
    valueEnum: MedicationDispenseStatusCodesEnum.unknown,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medicationdispense-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Unknown',
    ),
  );

  /// List of all enum-like values
  static final List<MedicationDispenseStatusCodes> values = [
    preparation,
    inProgress,
    cancelled,
    onHold,
    completed,
    enteredInError,
    stopped,
    declined,
    unknown,
  ];

  /// Returns the enum value with an element attached
  MedicationDispenseStatusCodes withElement(Element? newElement) {
    return MedicationDispenseStatusCodes._(
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
  MedicationDispenseStatusCodes clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  MedicationDispenseStatusCodesCopyWithImpl<MedicationDispenseStatusCodes>
      get copyWith => MedicationDispenseStatusCodesCopyWithImpl<
              MedicationDispenseStatusCodes>(
            this,
            (v) => v as MedicationDispenseStatusCodes,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class MedicationDispenseStatusCodesCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  MedicationDispenseStatusCodesCopyWithImpl(super._value, super._then);

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
      MedicationDispenseStatusCodes(
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
