part of '../primitive_types.dart';

/// Actual enum for MedicationAdministrationStatusCodes
enum MedicationAdministrationStatusCodesEnum {
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
      case MedicationAdministrationStatusCodesEnum.inProgress:
        return 'in-progress';
      case MedicationAdministrationStatusCodesEnum.notDone:
        return 'not-done';
      case MedicationAdministrationStatusCodesEnum.onHold:
        return 'on-hold';
      case MedicationAdministrationStatusCodesEnum.completed:
        return 'completed';
      case MedicationAdministrationStatusCodesEnum.enteredInError:
        return 'entered-in-error';
      case MedicationAdministrationStatusCodesEnum.stopped:
        return 'stopped';
      case MedicationAdministrationStatusCodesEnum.unknown:
        return 'unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static MedicationAdministrationStatusCodesEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return MedicationAdministrationStatusCodesEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static MedicationAdministrationStatusCodesEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'in-progress':
        return MedicationAdministrationStatusCodesEnum.inProgress;
      case 'not-done':
        return MedicationAdministrationStatusCodesEnum.notDone;
      case 'on-hold':
        return MedicationAdministrationStatusCodesEnum.onHold;
      case 'completed':
        return MedicationAdministrationStatusCodesEnum.completed;
      case 'entered-in-error':
        return MedicationAdministrationStatusCodesEnum.enteredInError;
      case 'stopped':
        return MedicationAdministrationStatusCodesEnum.stopped;
      case 'unknown':
        return MedicationAdministrationStatusCodesEnum.unknown;
    }
    return null;
  }
}

/// MedicationAdministration Status Codes
class MedicationAdministrationStatusCodes extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const MedicationAdministrationStatusCodes._({
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
  factory MedicationAdministrationStatusCodes(
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
        MedicationAdministrationStatusCodesEnum.fromString(valueString);
    return MedicationAdministrationStatusCodes._(
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

  /// Factory constructor to create [MedicationAdministrationStatusCodes]
  /// from JSON.
  factory MedicationAdministrationStatusCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = MedicationAdministrationStatusCodesEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationAdministrationStatusCodes._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MedicationAdministrationStatusCodes cannot be constructed from JSON.',
      );
    }
    return MedicationAdministrationStatusCodes._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for MedicationAdministrationStatusCodes
  final MedicationAdministrationStatusCodesEnum? valueEnum;

  /// in_progress
  static const MedicationAdministrationStatusCodes inProgress =
      MedicationAdministrationStatusCodes._(
    valueString: 'in-progress',
    valueEnum: MedicationAdministrationStatusCodesEnum.inProgress,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medication-admin-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'In Progress',
    ),
  );

  /// not_done
  static const MedicationAdministrationStatusCodes notDone =
      MedicationAdministrationStatusCodes._(
    valueString: 'not-done',
    valueEnum: MedicationAdministrationStatusCodesEnum.notDone,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medication-admin-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Not Done',
    ),
  );

  /// on_hold
  static const MedicationAdministrationStatusCodes onHold =
      MedicationAdministrationStatusCodes._(
    valueString: 'on-hold',
    valueEnum: MedicationAdministrationStatusCodesEnum.onHold,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medication-admin-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'On Hold',
    ),
  );

  /// completed
  static const MedicationAdministrationStatusCodes completed =
      MedicationAdministrationStatusCodes._(
    valueString: 'completed',
    valueEnum: MedicationAdministrationStatusCodesEnum.completed,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medication-admin-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Completed',
    ),
  );

  /// entered_in_error
  static const MedicationAdministrationStatusCodes enteredInError =
      MedicationAdministrationStatusCodes._(
    valueString: 'entered-in-error',
    valueEnum: MedicationAdministrationStatusCodesEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medication-admin-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Entered in Error',
    ),
  );

  /// stopped
  static const MedicationAdministrationStatusCodes stopped =
      MedicationAdministrationStatusCodes._(
    valueString: 'stopped',
    valueEnum: MedicationAdministrationStatusCodesEnum.stopped,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medication-admin-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Stopped',
    ),
  );

  /// unknown
  static const MedicationAdministrationStatusCodes unknown =
      MedicationAdministrationStatusCodes._(
    valueString: 'unknown',
    valueEnum: MedicationAdministrationStatusCodesEnum.unknown,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medication-admin-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Unknown',
    ),
  );

  /// List of all enum-like values
  static final List<MedicationAdministrationStatusCodes> values = [
    inProgress,
    notDone,
    onHold,
    completed,
    enteredInError,
    stopped,
    unknown,
  ];

  /// Returns the enum value with an element attached
  MedicationAdministrationStatusCodes withElement(Element? newElement) {
    return MedicationAdministrationStatusCodes._(
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
  MedicationAdministrationStatusCodes clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  MedicationAdministrationStatusCodesCopyWithImpl<
          MedicationAdministrationStatusCodes>
      get copyWith => MedicationAdministrationStatusCodesCopyWithImpl<
              MedicationAdministrationStatusCodes>(
            this,
            (v) => v as MedicationAdministrationStatusCodes,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class MedicationAdministrationStatusCodesCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  MedicationAdministrationStatusCodesCopyWithImpl(super._value, super._then);

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
      MedicationAdministrationStatusCodes(
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
