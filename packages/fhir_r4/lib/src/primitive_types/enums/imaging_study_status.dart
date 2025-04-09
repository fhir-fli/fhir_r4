// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ImagingStudyStatus
enum ImagingStudyStatusEnum {
  /// registered
  registered,

  /// available
  available,

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
      case ImagingStudyStatusEnum.registered:
        return 'registered';
      case ImagingStudyStatusEnum.available:
        return 'available';
      case ImagingStudyStatusEnum.cancelled:
        return 'cancelled';
      case ImagingStudyStatusEnum.enteredInError:
        return 'entered-in-error';
      case ImagingStudyStatusEnum.unknown:
        return 'unknown';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ImagingStudyStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ImagingStudyStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ImagingStudyStatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'registered':
        return ImagingStudyStatusEnum.registered;
      case 'available':
        return ImagingStudyStatusEnum.available;
      case 'cancelled':
        return ImagingStudyStatusEnum.cancelled;
      case 'entered-in-error':
        return ImagingStudyStatusEnum.enteredInError;
      case 'unknown':
        return ImagingStudyStatusEnum.unknown;
    }
    return null;
  }
}

/// The status of the ImagingStudy.
class ImagingStudyStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ImagingStudyStatus._({
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
  factory ImagingStudyStatus(
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
    final valueEnum = ImagingStudyStatusEnum.fromString(valueString);
    return ImagingStudyStatus._(
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

  /// Factory constructor to create [ImagingStudyStatus]
  /// from JSON.
  factory ImagingStudyStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ImagingStudyStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ImagingStudyStatus._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ImagingStudyStatus cannot be constructed from JSON.',
      );
    }
    return ImagingStudyStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ImagingStudyStatus
  final ImagingStudyStatusEnum? valueEnum;

  /// registered
  static const ImagingStudyStatus registered = ImagingStudyStatus._(
    valueString: 'registered',
    valueEnum: ImagingStudyStatusEnum.registered,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/imagingstudy-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Registered',
    ),
  );

  /// available
  static const ImagingStudyStatus available = ImagingStudyStatus._(
    valueString: 'available',
    valueEnum: ImagingStudyStatusEnum.available,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/imagingstudy-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Available',
    ),
  );

  /// cancelled
  static const ImagingStudyStatus cancelled = ImagingStudyStatus._(
    valueString: 'cancelled',
    valueEnum: ImagingStudyStatusEnum.cancelled,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/imagingstudy-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Cancelled',
    ),
  );

  /// entered_in_error
  static const ImagingStudyStatus enteredInError = ImagingStudyStatus._(
    valueString: 'entered-in-error',
    valueEnum: ImagingStudyStatusEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/imagingstudy-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Entered in Error',
    ),
  );

  /// unknown
  static const ImagingStudyStatus unknown = ImagingStudyStatus._(
    valueString: 'unknown',
    valueEnum: ImagingStudyStatusEnum.unknown,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/imagingstudy-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Unknown',
    ),
  );

  /// List of all enum-like values
  static final List<ImagingStudyStatus> values = [
    registered,
    available,
    cancelled,
    enteredInError,
    unknown,
  ];

  /// Returns the enum value with an element attached
  ImagingStudyStatus withElement(Element? newElement) {
    return ImagingStudyStatus._(
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
  ImagingStudyStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ImagingStudyStatusCopyWithImpl<ImagingStudyStatus> get copyWith =>
      ImagingStudyStatusCopyWithImpl<ImagingStudyStatus>(
        this,
        (v) => v as ImagingStudyStatus,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ImagingStudyStatusCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ImagingStudyStatusCopyWithImpl(super._value, super._then);

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
      ImagingStudyStatus(
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
