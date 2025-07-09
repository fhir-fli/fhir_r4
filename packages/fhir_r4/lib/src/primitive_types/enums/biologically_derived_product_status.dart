// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for BiologicallyDerivedProductStatus
enum BiologicallyDerivedProductStatusEnum {
  /// available
  available,

  /// unavailable
  unavailable,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case BiologicallyDerivedProductStatusEnum.available:
        return 'available';
      case BiologicallyDerivedProductStatusEnum.unavailable:
        return 'unavailable';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static BiologicallyDerivedProductStatusEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return BiologicallyDerivedProductStatusEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static BiologicallyDerivedProductStatusEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'available':
        return BiologicallyDerivedProductStatusEnum.available;
      case 'unavailable':
        return BiologicallyDerivedProductStatusEnum.unavailable;
    }
    return null;
  }
}

/// Biologically Derived Product Status.
class BiologicallyDerivedProductStatus extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const BiologicallyDerivedProductStatus._({
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
  factory BiologicallyDerivedProductStatus(
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
        BiologicallyDerivedProductStatusEnum.fromString(valueString);
    return BiologicallyDerivedProductStatus._(
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

  /// Factory constructor to create [BiologicallyDerivedProductStatus]
  /// from JSON.
  factory BiologicallyDerivedProductStatus.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = BiologicallyDerivedProductStatusEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return BiologicallyDerivedProductStatus._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'BiologicallyDerivedProductStatus cannot be constructed from JSON.',
      );
    }
    return BiologicallyDerivedProductStatus._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for BiologicallyDerivedProductStatus
  final BiologicallyDerivedProductStatusEnum? valueEnum;

  /// available
  static const BiologicallyDerivedProductStatus available =
      BiologicallyDerivedProductStatus._(
    valueString: 'available',
    valueEnum: BiologicallyDerivedProductStatusEnum.available,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/product-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Available',
    ),
  );

  /// unavailable
  static const BiologicallyDerivedProductStatus unavailable =
      BiologicallyDerivedProductStatus._(
    valueString: 'unavailable',
    valueEnum: BiologicallyDerivedProductStatusEnum.unavailable,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/product-status',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Unavailable',
    ),
  );

  /// List of all enum-like values
  static final List<BiologicallyDerivedProductStatus> values = [
    available,
    unavailable,
  ];

  /// Returns the enum value with an element attached
  BiologicallyDerivedProductStatus withElement(Element? newElement) {
    return BiologicallyDerivedProductStatus._(
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
  BiologicallyDerivedProductStatus clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  BiologicallyDerivedProductStatusCopyWithImpl<BiologicallyDerivedProductStatus>
      get copyWith => BiologicallyDerivedProductStatusCopyWithImpl<
              BiologicallyDerivedProductStatus>(
            this,
            (v) => v as BiologicallyDerivedProductStatus,
          );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class BiologicallyDerivedProductStatusCopyWithImpl<T>
    extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  BiologicallyDerivedProductStatusCopyWithImpl(super._value, super._then);

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
      BiologicallyDerivedProductStatus(
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
