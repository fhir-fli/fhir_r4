part of '../primitive_types.dart';

/// Actual enum for MedicationStatementStatusCodes
enum MedicationStatementStatusCodesEnum {
  /// active
  active,

  /// completed
  completed,

  /// entered-in-error
  enteredInError,

  /// intended
  intended,

  /// stopped
  stopped,

  /// on-hold
  onHold,

  /// unknown
  unknown,

  /// not-taken
  notTaken,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case MedicationStatementStatusCodesEnum.active:
        return 'active';
      case MedicationStatementStatusCodesEnum.completed:
        return 'completed';
      case MedicationStatementStatusCodesEnum.enteredInError:
        return 'entered-in-error';
      case MedicationStatementStatusCodesEnum.intended:
        return 'intended';
      case MedicationStatementStatusCodesEnum.stopped:
        return 'stopped';
      case MedicationStatementStatusCodesEnum.onHold:
        return 'on-hold';
      case MedicationStatementStatusCodesEnum.unknown:
        return 'unknown';
      case MedicationStatementStatusCodesEnum.notTaken:
        return 'not-taken';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static MedicationStatementStatusCodesEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return MedicationStatementStatusCodesEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static MedicationStatementStatusCodesEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'active':
        return MedicationStatementStatusCodesEnum.active;
      case 'completed':
        return MedicationStatementStatusCodesEnum.completed;
      case 'entered-in-error':
        return MedicationStatementStatusCodesEnum.enteredInError;
      case 'intended':
        return MedicationStatementStatusCodesEnum.intended;
      case 'stopped':
        return MedicationStatementStatusCodesEnum.stopped;
      case 'on-hold':
        return MedicationStatementStatusCodesEnum.onHold;
      case 'unknown':
        return MedicationStatementStatusCodesEnum.unknown;
      case 'not-taken':
        return MedicationStatementStatusCodesEnum.notTaken;
    }
    return null;
  }
}

/// MedicationStatement Status Codes
class MedicationStatementStatusCodes extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const MedicationStatementStatusCodes._({
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
  factory MedicationStatementStatusCodes(
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
        MedicationStatementStatusCodesEnum.fromString(valueString);
    return MedicationStatementStatusCodes._(
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

  /// Factory constructor to create [MedicationStatementStatusCodes]
  /// from JSON.
  factory MedicationStatementStatusCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = MedicationStatementStatusCodesEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MedicationStatementStatusCodes._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MedicationStatementStatusCodes cannot be constructed from JSON.',
      );
    }
    return MedicationStatementStatusCodes._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for MedicationStatementStatusCodes
  final MedicationStatementStatusCodesEnum? valueEnum;

  /// active
  static const MedicationStatementStatusCodes active =
      MedicationStatementStatusCodes._(
    valueString: 'active',
    valueEnum: MedicationStatementStatusCodesEnum.active,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medication-statement-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Active',
    ),
  );

  /// completed
  static const MedicationStatementStatusCodes completed =
      MedicationStatementStatusCodes._(
    valueString: 'completed',
    valueEnum: MedicationStatementStatusCodesEnum.completed,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medication-statement-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Completed',
    ),
  );

  /// entered_in_error
  static const MedicationStatementStatusCodes enteredInError =
      MedicationStatementStatusCodes._(
    valueString: 'entered-in-error',
    valueEnum: MedicationStatementStatusCodesEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medication-statement-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Entered in Error',
    ),
  );

  /// intended
  static const MedicationStatementStatusCodes intended =
      MedicationStatementStatusCodes._(
    valueString: 'intended',
    valueEnum: MedicationStatementStatusCodesEnum.intended,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medication-statement-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Intended',
    ),
  );

  /// stopped
  static const MedicationStatementStatusCodes stopped =
      MedicationStatementStatusCodes._(
    valueString: 'stopped',
    valueEnum: MedicationStatementStatusCodesEnum.stopped,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medication-statement-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Stopped',
    ),
  );

  /// on_hold
  static const MedicationStatementStatusCodes onHold =
      MedicationStatementStatusCodes._(
    valueString: 'on-hold',
    valueEnum: MedicationStatementStatusCodesEnum.onHold,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medication-statement-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'On Hold',
    ),
  );

  /// unknown
  static const MedicationStatementStatusCodes unknown =
      MedicationStatementStatusCodes._(
    valueString: 'unknown',
    valueEnum: MedicationStatementStatusCodesEnum.unknown,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medication-statement-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Unknown',
    ),
  );

  /// not_taken
  static const MedicationStatementStatusCodes notTaken =
      MedicationStatementStatusCodes._(
    valueString: 'not-taken',
    valueEnum: MedicationStatementStatusCodesEnum.notTaken,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/medication-statement-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Not Taken',
    ),
  );

  /// List of all enum-like values
  static final List<MedicationStatementStatusCodes> values = [
    active,
    completed,
    enteredInError,
    intended,
    stopped,
    onHold,
    unknown,
    notTaken,
  ];

  /// Returns the enum value with an element attached
  MedicationStatementStatusCodes withElement(Element? newElement) {
    return MedicationStatementStatusCodes._(
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
  MedicationStatementStatusCodes clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  MedicationStatementStatusCodesCopyWithImpl<MedicationStatementStatusCodes>
      get copyWith => MedicationStatementStatusCodesCopyWithImpl<
              MedicationStatementStatusCodes>(
            this,
            (v) => v as MedicationStatementStatusCodes,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class MedicationStatementStatusCodesCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  MedicationStatementStatusCodesCopyWithImpl(super._value, super._then);

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
      MedicationStatementStatusCodes(
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
