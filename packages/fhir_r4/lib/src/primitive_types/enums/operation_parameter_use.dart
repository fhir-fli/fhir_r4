part of '../primitive_types.dart';

/// Actual enum for OperationParameterUse
enum OperationParameterUseEnum {
  /// in
  in_,

  /// out
  out,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case OperationParameterUseEnum.in_:
        return 'in';
      case OperationParameterUseEnum.out:
        return 'out';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static OperationParameterUseEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return OperationParameterUseEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static OperationParameterUseEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'in':
        return OperationParameterUseEnum.in_;
      case 'out':
        return OperationParameterUseEnum.out;
    }
    return null;
  }
}

/// Whether an operation parameter is an input or an output parameter.
class OperationParameterUse extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const OperationParameterUse._({
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
  factory OperationParameterUse(
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
    final valueEnum = OperationParameterUseEnum.fromString(valueString);
    return OperationParameterUse._(
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

  /// Factory constructor to create [OperationParameterUse]
  /// from JSON.
  factory OperationParameterUse.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = OperationParameterUseEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return OperationParameterUse._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'OperationParameterUse cannot be constructed from JSON.',
      );
    }
    return OperationParameterUse._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for OperationParameterUse
  final OperationParameterUseEnum? valueEnum;

  /// in_
  static const OperationParameterUse in_ = OperationParameterUse._(
    valueString: 'in',
    valueEnum: OperationParameterUseEnum.in_,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/operation-parameter-use',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'In',
    ),
  );

  /// out
  static const OperationParameterUse out = OperationParameterUse._(
    valueString: 'out',
    valueEnum: OperationParameterUseEnum.out,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/operation-parameter-use',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Out',
    ),
  );

  /// List of all enum-like values
  static final List<OperationParameterUse> values = [
    in_,
    out,
  ];

  /// Returns the enum value with an element attached
  OperationParameterUse withElement(Element? newElement) {
    return OperationParameterUse._(
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
  OperationParameterUse clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  OperationParameterUseCopyWithImpl<OperationParameterUse> get copyWith =>
      OperationParameterUseCopyWithImpl<OperationParameterUse>(
        this,
        (v) => v as OperationParameterUse,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class OperationParameterUseCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  OperationParameterUseCopyWithImpl(super._value, super._then);

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
      OperationParameterUse(
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
