part of '../primitive_types.dart';

/// Actual enum for DiagnosticReportStatus
enum DiagnosticReportStatusEnum {
  /// registered
  registered,

  /// partial
  partial,

  /// preliminary
  preliminary,

  /// final
  final_,

  /// amended
  amended,

  /// corrected
  corrected,

  /// appended
  appended,

  /// cancelled
  cancelled,

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
      case DiagnosticReportStatusEnum.registered:
        return 'registered';
      case DiagnosticReportStatusEnum.partial:
        return 'partial';
      case DiagnosticReportStatusEnum.preliminary:
        return 'preliminary';
      case DiagnosticReportStatusEnum.final_:
        return 'final';
      case DiagnosticReportStatusEnum.amended:
        return 'amended';
      case DiagnosticReportStatusEnum.corrected:
        return 'corrected';
      case DiagnosticReportStatusEnum.appended:
        return 'appended';
      case DiagnosticReportStatusEnum.cancelled:
        return 'cancelled';
      case DiagnosticReportStatusEnum.enteredInError:
        return 'entered-in-error';
      case DiagnosticReportStatusEnum.unknown:
        return 'unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static DiagnosticReportStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return DiagnosticReportStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static DiagnosticReportStatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'registered':
        return DiagnosticReportStatusEnum.registered;
      case 'partial':
        return DiagnosticReportStatusEnum.partial;
      case 'preliminary':
        return DiagnosticReportStatusEnum.preliminary;
      case 'final':
        return DiagnosticReportStatusEnum.final_;
      case 'amended':
        return DiagnosticReportStatusEnum.amended;
      case 'corrected':
        return DiagnosticReportStatusEnum.corrected;
      case 'appended':
        return DiagnosticReportStatusEnum.appended;
      case 'cancelled':
        return DiagnosticReportStatusEnum.cancelled;
      case 'entered-in-error':
        return DiagnosticReportStatusEnum.enteredInError;
      case 'unknown':
        return DiagnosticReportStatusEnum.unknown;
    }
    return null;
  }
}

/// The status of the diagnostic report.
class DiagnosticReportStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const DiagnosticReportStatus._({
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
  factory DiagnosticReportStatus(
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
    final valueEnum = DiagnosticReportStatusEnum.fromString(valueString);
    return DiagnosticReportStatus._(
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

  /// Factory constructor to create [DiagnosticReportStatus]
  /// from JSON.
  factory DiagnosticReportStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = DiagnosticReportStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DiagnosticReportStatus._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DiagnosticReportStatus cannot be constructed from JSON.',
      );
    }
    return DiagnosticReportStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for DiagnosticReportStatus
  final DiagnosticReportStatusEnum? valueEnum;

  /// registered
  static const DiagnosticReportStatus registered = DiagnosticReportStatus._(
    valueString: 'registered',
    valueEnum: DiagnosticReportStatusEnum.registered,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/diagnostic-report-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Registered',
    ),
  );

  /// partial
  static const DiagnosticReportStatus partial = DiagnosticReportStatus._(
    valueString: 'partial',
    valueEnum: DiagnosticReportStatusEnum.partial,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/diagnostic-report-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Partial',
    ),
  );

  /// preliminary
  static const DiagnosticReportStatus preliminary = DiagnosticReportStatus._(
    valueString: 'preliminary',
    valueEnum: DiagnosticReportStatusEnum.preliminary,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/diagnostic-report-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Preliminary',
    ),
  );

  /// final_
  static const DiagnosticReportStatus final_ = DiagnosticReportStatus._(
    valueString: 'final',
    valueEnum: DiagnosticReportStatusEnum.final_,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/diagnostic-report-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Final',
    ),
  );

  /// amended
  static const DiagnosticReportStatus amended = DiagnosticReportStatus._(
    valueString: 'amended',
    valueEnum: DiagnosticReportStatusEnum.amended,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/diagnostic-report-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Amended',
    ),
  );

  /// corrected
  static const DiagnosticReportStatus corrected = DiagnosticReportStatus._(
    valueString: 'corrected',
    valueEnum: DiagnosticReportStatusEnum.corrected,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/diagnostic-report-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Corrected',
    ),
  );

  /// appended
  static const DiagnosticReportStatus appended = DiagnosticReportStatus._(
    valueString: 'appended',
    valueEnum: DiagnosticReportStatusEnum.appended,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/diagnostic-report-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Appended',
    ),
  );

  /// cancelled
  static const DiagnosticReportStatus cancelled = DiagnosticReportStatus._(
    valueString: 'cancelled',
    valueEnum: DiagnosticReportStatusEnum.cancelled,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/diagnostic-report-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Cancelled',
    ),
  );

  /// entered_in_error
  static const DiagnosticReportStatus enteredInError = DiagnosticReportStatus._(
    valueString: 'entered-in-error',
    valueEnum: DiagnosticReportStatusEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/diagnostic-report-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Entered in Error',
    ),
  );

  /// unknown
  static const DiagnosticReportStatus unknown = DiagnosticReportStatus._(
    valueString: 'unknown',
    valueEnum: DiagnosticReportStatusEnum.unknown,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/diagnostic-report-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Unknown',
    ),
  );

  /// List of all enum-like values
  static final List<DiagnosticReportStatus> values = [
    registered,
    partial,
    preliminary,
    final_,
    amended,
    corrected,
    appended,
    cancelled,
    enteredInError,
    unknown,
  ];

  /// Returns the enum value with an element attached
  DiagnosticReportStatus withElement(Element? newElement) {
    return DiagnosticReportStatus._(
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
  DiagnosticReportStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  DiagnosticReportStatusCopyWithImpl<DiagnosticReportStatus> get copyWith =>
      DiagnosticReportStatusCopyWithImpl<DiagnosticReportStatus>(
        this,
        (v) => v as DiagnosticReportStatus,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class DiagnosticReportStatusCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  DiagnosticReportStatusCopyWithImpl(super._value, super._then);

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
      DiagnosticReportStatus(
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
