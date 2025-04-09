// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for NutritionProductStatus
enum NutritionProductStatusEnum {
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
      case NutritionProductStatusEnum.active:
        return 'active';
      case NutritionProductStatusEnum.inactive:
        return 'inactive';
      case NutritionProductStatusEnum.enteredInError:
        return 'entered-in-error';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static NutritionProductStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return NutritionProductStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static NutritionProductStatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'active':
        return NutritionProductStatusEnum.active;
      case 'inactive':
        return NutritionProductStatusEnum.inactive;
      case 'entered-in-error':
        return NutritionProductStatusEnum.enteredInError;
    }
    return null;
  }
}

/// Codes identifying the lifecycle stage of a product.
class NutritionProductStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const NutritionProductStatus._({
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
  factory NutritionProductStatus(
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
    final valueEnum = NutritionProductStatusEnum.fromString(valueString);
    return NutritionProductStatus._(
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

  /// Factory constructor to create [NutritionProductStatus]
  /// from JSON.
  factory NutritionProductStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = NutritionProductStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NutritionProductStatus._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'NutritionProductStatus cannot be constructed from JSON.',
      );
    }
    return NutritionProductStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for NutritionProductStatus
  final NutritionProductStatusEnum? valueEnum;

  /// active
  static const NutritionProductStatus active = NutritionProductStatus._(
    valueString: 'active',
    valueEnum: NutritionProductStatusEnum.active,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/nutritionproduct-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Active',
    ),
  );

  /// inactive
  static const NutritionProductStatus inactive = NutritionProductStatus._(
    valueString: 'inactive',
    valueEnum: NutritionProductStatusEnum.inactive,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/nutritionproduct-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Inactive',
    ),
  );

  /// entered_in_error
  static const NutritionProductStatus enteredInError = NutritionProductStatus._(
    valueString: 'entered-in-error',
    valueEnum: NutritionProductStatusEnum.enteredInError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/nutritionproduct-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Entered in Error',
    ),
  );

  /// List of all enum-like values
  static final List<NutritionProductStatus> values = [
    active,
    inactive,
    enteredInError,
  ];

  /// Returns the enum value with an element attached
  NutritionProductStatus withElement(Element? newElement) {
    return NutritionProductStatus._(
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
  NutritionProductStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  NutritionProductStatusCopyWithImpl<NutritionProductStatus> get copyWith =>
      NutritionProductStatusCopyWithImpl<NutritionProductStatus>(
        this,
        (v) => v as NutritionProductStatus,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class NutritionProductStatusCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  NutritionProductStatusCopyWithImpl(super._value, super._then);

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
      NutritionProductStatus(
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
