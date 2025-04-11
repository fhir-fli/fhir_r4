// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for MeasureReportStatus
enum MeasureReportStatusEnum {
  /// complete
  complete,

  /// pending
  pending,

  /// error
  error,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case MeasureReportStatusEnum.complete:
        return 'complete';
      case MeasureReportStatusEnum.pending:
        return 'pending';
      case MeasureReportStatusEnum.error:
        return 'error';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static MeasureReportStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return MeasureReportStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static MeasureReportStatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'complete':
        return MeasureReportStatusEnum.complete;
      case 'pending':
        return MeasureReportStatusEnum.pending;
      case 'error':
        return MeasureReportStatusEnum.error;
    }
    return null;
  }
}

/// The status of the measure report.
class MeasureReportStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const MeasureReportStatus._({
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
  factory MeasureReportStatus(
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
    final valueEnum = MeasureReportStatusEnum.fromString(valueString);
    return MeasureReportStatus._(
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

  /// Factory constructor to create [MeasureReportStatus]
  /// from JSON.
  factory MeasureReportStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = MeasureReportStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MeasureReportStatus._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'MeasureReportStatus cannot be constructed from JSON.',
      );
    }
    return MeasureReportStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for MeasureReportStatus
  final MeasureReportStatusEnum? valueEnum;

  /// complete
  static const MeasureReportStatus complete = MeasureReportStatus._(
    valueString: 'complete',
    valueEnum: MeasureReportStatusEnum.complete,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/measure-report-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Complete',
    ),
  );

  /// pending
  static const MeasureReportStatus pending = MeasureReportStatus._(
    valueString: 'pending',
    valueEnum: MeasureReportStatusEnum.pending,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/measure-report-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Pending',
    ),
  );

  /// error
  static const MeasureReportStatus error = MeasureReportStatus._(
    valueString: 'error',
    valueEnum: MeasureReportStatusEnum.error,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/measure-report-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Error',
    ),
  );

  /// List of all enum-like values
  static final List<MeasureReportStatus> values = [
    complete,
    pending,
    error,
  ];

  /// Returns the enum value with an element attached
  MeasureReportStatus withElement(Element? newElement) {
    return MeasureReportStatus._(
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
  MeasureReportStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  MeasureReportStatusCopyWithImpl<MeasureReportStatus> get copyWith =>
      MeasureReportStatusCopyWithImpl<MeasureReportStatus>(
        this,
        (v) => v as MeasureReportStatus,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class MeasureReportStatusCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  MeasureReportStatusCopyWithImpl(super._value, super._then);

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
      MeasureReportStatus(
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
