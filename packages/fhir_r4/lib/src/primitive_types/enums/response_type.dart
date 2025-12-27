part of '../primitive_types.dart';

/// Actual enum for ResponseType
enum ResponseTypeEnum {
  /// ok
  ok,

  /// transient-error
  transientError,

  /// fatal-error
  fatalError,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ResponseTypeEnum.ok:
        return 'ok';
      case ResponseTypeEnum.transientError:
        return 'transient-error';
      case ResponseTypeEnum.fatalError:
        return 'fatal-error';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ResponseTypeEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ResponseTypeEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ResponseTypeEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'ok':
        return ResponseTypeEnum.ok;
      case 'transient-error':
        return ResponseTypeEnum.transientError;
      case 'fatal-error':
        return ResponseTypeEnum.fatalError;
    }
    return null;
  }
}

/// The kind of response to a message.
class ResponseType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ResponseType._({
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
  factory ResponseType(
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
    final valueEnum = ResponseTypeEnum.fromString(valueString);
    return ResponseType._(
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

  /// Factory constructor to create [ResponseType]
  /// from JSON.
  factory ResponseType.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ResponseTypeEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResponseType._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ResponseType cannot be constructed from JSON.',
      );
    }
    return ResponseType._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ResponseType
  final ResponseTypeEnum? valueEnum;

  /// ok
  static const ResponseType ok = ResponseType._(
    valueString: 'ok',
    valueEnum: ResponseTypeEnum.ok,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/response-code',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'OK',
    ),
  );

  /// transient_error
  static const ResponseType transientError = ResponseType._(
    valueString: 'transient-error',
    valueEnum: ResponseTypeEnum.transientError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/response-code',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Transient Error',
    ),
  );

  /// fatal_error
  static const ResponseType fatalError = ResponseType._(
    valueString: 'fatal-error',
    valueEnum: ResponseTypeEnum.fatalError,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/response-code',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Fatal Error',
    ),
  );

  /// List of all enum-like values
  static final List<ResponseType> values = [
    ok,
    transientError,
    fatalError,
  ];

  /// Returns the enum value with an element attached
  ResponseType withElement(Element? newElement) {
    return ResponseType._(
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
  ResponseType clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ResponseTypeCopyWithImpl<ResponseType> get copyWith =>
      ResponseTypeCopyWithImpl<ResponseType>(
        this,
        (v) => v as ResponseType,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ResponseTypeCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ResponseTypeCopyWithImpl(super._value, super._then);

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
      ResponseType(
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
