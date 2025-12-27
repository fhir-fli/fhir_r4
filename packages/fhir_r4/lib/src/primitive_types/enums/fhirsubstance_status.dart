part of '../primitive_types.dart';

/// Actual enum for FHIRSubstanceStatus
enum FHIRSubstanceStatusEnum {
  /// active
  active,

  /// inactive
  inactive,

  /// entered-in-error
  enteredInError,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case FHIRSubstanceStatusEnum.active:
        return 'active';
      case FHIRSubstanceStatusEnum.inactive:
        return 'inactive';
      case FHIRSubstanceStatusEnum.enteredInError:
        return 'entered-in-error';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static FHIRSubstanceStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return FHIRSubstanceStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static FHIRSubstanceStatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'active':
        return FHIRSubstanceStatusEnum.active;
      case 'inactive':
        return FHIRSubstanceStatusEnum.inactive;
      case 'entered-in-error':
        return FHIRSubstanceStatusEnum.enteredInError;
    }
    return null;
  }
}

/// A code to indicate if the substance is actively used.
class FHIRSubstanceStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const FHIRSubstanceStatus._({
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
  factory FHIRSubstanceStatus(
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
    final valueEnum = FHIRSubstanceStatusEnum.fromString(valueString);
    return FHIRSubstanceStatus._(
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

  /// Factory constructor to create [FHIRSubstanceStatus]
  /// from JSON.
  factory FHIRSubstanceStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = FHIRSubstanceStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return FHIRSubstanceStatus._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'FHIRSubstanceStatus cannot be constructed from JSON.',
      );
    }
    return FHIRSubstanceStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for FHIRSubstanceStatus
  final FHIRSubstanceStatusEnum? valueEnum;

  /// active
  static const FHIRSubstanceStatus active = FHIRSubstanceStatus._(
    valueString: 'active',
    valueEnum: FHIRSubstanceStatusEnum.active,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/substance-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Active',
    ),
  );

  /// inactive
  static const FHIRSubstanceStatus inactive = FHIRSubstanceStatus._(
    valueString: 'inactive',
    valueEnum: FHIRSubstanceStatusEnum.inactive,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/substance-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Inactive',
    ),
  );

  /// entered_in_error
  static const FHIRSubstanceStatus enteredInError = FHIRSubstanceStatus._(
    valueString: 'entered-in-error',
    valueEnum: FHIRSubstanceStatusEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/substance-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Entered in Error',
    ),
  );

  /// List of all enum-like values
  static final List<FHIRSubstanceStatus> values = [
    active,
    inactive,
    enteredInError,
  ];

  /// Returns the enum value with an element attached
  FHIRSubstanceStatus withElement(Element? newElement) {
    return FHIRSubstanceStatus._(
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
  FHIRSubstanceStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  FHIRSubstanceStatusCopyWithImpl<FHIRSubstanceStatus> get copyWith =>
      FHIRSubstanceStatusCopyWithImpl<FHIRSubstanceStatus>(
        this,
        (v) => v as FHIRSubstanceStatus,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class FHIRSubstanceStatusCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  FHIRSubstanceStatusCopyWithImpl(super._value, super._then);

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
      FHIRSubstanceStatus(
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
