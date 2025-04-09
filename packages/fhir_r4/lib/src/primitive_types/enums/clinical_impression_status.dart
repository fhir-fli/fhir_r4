// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ClinicalImpressionStatus
enum ClinicalImpressionStatusEnum {
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
      case ClinicalImpressionStatusEnum.preparation:
        return 'preparation';
      case ClinicalImpressionStatusEnum.inProgress:
        return 'in-progress';
      case ClinicalImpressionStatusEnum.notDone:
        return 'not-done';
      case ClinicalImpressionStatusEnum.onHold:
        return 'on-hold';
      case ClinicalImpressionStatusEnum.stopped:
        return 'stopped';
      case ClinicalImpressionStatusEnum.completed:
        return 'completed';
      case ClinicalImpressionStatusEnum.enteredInError:
        return 'entered-in-error';
      case ClinicalImpressionStatusEnum.unknown:
        return 'unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ClinicalImpressionStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ClinicalImpressionStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ClinicalImpressionStatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'preparation':
        return ClinicalImpressionStatusEnum.preparation;
      case 'in-progress':
        return ClinicalImpressionStatusEnum.inProgress;
      case 'not-done':
        return ClinicalImpressionStatusEnum.notDone;
      case 'on-hold':
        return ClinicalImpressionStatusEnum.onHold;
      case 'stopped':
        return ClinicalImpressionStatusEnum.stopped;
      case 'completed':
        return ClinicalImpressionStatusEnum.completed;
      case 'entered-in-error':
        return ClinicalImpressionStatusEnum.enteredInError;
      case 'unknown':
        return ClinicalImpressionStatusEnum.unknown;
    }
    return null;
  }
}

/// Codes that reflect the current state of a clinical impression within
/// its overall lifecycle.
class ClinicalImpressionStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ClinicalImpressionStatus._({
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
  factory ClinicalImpressionStatus(
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
    final valueEnum = ClinicalImpressionStatusEnum.fromString(valueString);
    return ClinicalImpressionStatus._(
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

  /// Factory constructor to create [ClinicalImpressionStatus]
  /// from JSON.
  factory ClinicalImpressionStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ClinicalImpressionStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ClinicalImpressionStatus._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ClinicalImpressionStatus cannot be constructed from JSON.',
      );
    }
    return ClinicalImpressionStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ClinicalImpressionStatus
  final ClinicalImpressionStatusEnum? valueEnum;

  /// preparation
  static const ClinicalImpressionStatus preparation =
      ClinicalImpressionStatus._(
    valueString: 'preparation',
    valueEnum: ClinicalImpressionStatusEnum.preparation,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/clinicalimpression-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Preparation',
    ),
  );

  /// in_progress
  static const ClinicalImpressionStatus inProgress = ClinicalImpressionStatus._(
    valueString: 'in-progress',
    valueEnum: ClinicalImpressionStatusEnum.inProgress,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/clinicalimpression-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'In Progress',
    ),
  );

  /// not_done
  static const ClinicalImpressionStatus notDone = ClinicalImpressionStatus._(
    valueString: 'not-done',
    valueEnum: ClinicalImpressionStatusEnum.notDone,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/clinicalimpression-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Not Done',
    ),
  );

  /// on_hold
  static const ClinicalImpressionStatus onHold = ClinicalImpressionStatus._(
    valueString: 'on-hold',
    valueEnum: ClinicalImpressionStatusEnum.onHold,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/clinicalimpression-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'On Hold',
    ),
  );

  /// stopped
  static const ClinicalImpressionStatus stopped = ClinicalImpressionStatus._(
    valueString: 'stopped',
    valueEnum: ClinicalImpressionStatusEnum.stopped,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/clinicalimpression-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Stopped',
    ),
  );

  /// completed
  static const ClinicalImpressionStatus completed = ClinicalImpressionStatus._(
    valueString: 'completed',
    valueEnum: ClinicalImpressionStatusEnum.completed,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/clinicalimpression-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Completed',
    ),
  );

  /// entered_in_error
  static const ClinicalImpressionStatus enteredInError =
      ClinicalImpressionStatus._(
    valueString: 'entered-in-error',
    valueEnum: ClinicalImpressionStatusEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/clinicalimpression-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Entered in Error',
    ),
  );

  /// unknown
  static const ClinicalImpressionStatus unknown = ClinicalImpressionStatus._(
    valueString: 'unknown',
    valueEnum: ClinicalImpressionStatusEnum.unknown,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/clinicalimpression-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Unknown',
    ),
  );

  /// List of all enum-like values
  static final List<ClinicalImpressionStatus> values = [
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
  ClinicalImpressionStatus withElement(Element? newElement) {
    return ClinicalImpressionStatus._(
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
  ClinicalImpressionStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ClinicalImpressionStatusCopyWithImpl<ClinicalImpressionStatus> get copyWith =>
      ClinicalImpressionStatusCopyWithImpl<ClinicalImpressionStatus>(
        this,
        (v) => v as ClinicalImpressionStatus,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ClinicalImpressionStatusCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ClinicalImpressionStatusCopyWithImpl(super._value, super._then);

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
      ClinicalImpressionStatus(
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
