part of '../primitive_types.dart';

/// Actual enum for HTTPVerb
enum HTTPVerbEnum {
  /// GET
  gET,

  /// HEAD
  hEAD,

  /// POST
  pOST,

  /// PUT
  pUT,

  /// DELETE
  dELETE,

  /// PATCH
  pATCH,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case HTTPVerbEnum.gET:
        return 'GET';
      case HTTPVerbEnum.hEAD:
        return 'HEAD';
      case HTTPVerbEnum.pOST:
        return 'POST';
      case HTTPVerbEnum.pUT:
        return 'PUT';
      case HTTPVerbEnum.dELETE:
        return 'DELETE';
      case HTTPVerbEnum.pATCH:
        return 'PATCH';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static HTTPVerbEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return HTTPVerbEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static HTTPVerbEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'GET':
        return HTTPVerbEnum.gET;
      case 'HEAD':
        return HTTPVerbEnum.hEAD;
      case 'POST':
        return HTTPVerbEnum.pOST;
      case 'PUT':
        return HTTPVerbEnum.pUT;
      case 'DELETE':
        return HTTPVerbEnum.dELETE;
      case 'PATCH':
        return HTTPVerbEnum.pATCH;
    }
    return null;
  }
}

/// HTTP verbs (in the HTTP command line). See [HTTP
/// rfc](https://tools.ietf.org/html/rfc7231) for details.
class HTTPVerb extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const HTTPVerb._({
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
  factory HTTPVerb(
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
    final valueEnum = HTTPVerbEnum.fromString(valueString);
    return HTTPVerb._(
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

  /// Factory constructor to create [HTTPVerb]
  /// from JSON.
  factory HTTPVerb.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = HTTPVerbEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return HTTPVerb._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'HTTPVerb cannot be constructed from JSON.',
      );
    }
    return HTTPVerb._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for HTTPVerb
  final HTTPVerbEnum? valueEnum;

  /// GET
  static const HTTPVerb gET = HTTPVerb._(
    valueString: 'GET',
    valueEnum: HTTPVerbEnum.gET,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/http-verb',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'GET',
    ),
  );

  /// HEAD
  static const HTTPVerb hEAD = HTTPVerb._(
    valueString: 'HEAD',
    valueEnum: HTTPVerbEnum.hEAD,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/http-verb',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'HEAD',
    ),
  );

  /// POST
  static const HTTPVerb pOST = HTTPVerb._(
    valueString: 'POST',
    valueEnum: HTTPVerbEnum.pOST,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/http-verb',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'POST',
    ),
  );

  /// PUT
  static const HTTPVerb pUT = HTTPVerb._(
    valueString: 'PUT',
    valueEnum: HTTPVerbEnum.pUT,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/http-verb',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'PUT',
    ),
  );

  /// DELETE
  static const HTTPVerb dELETE = HTTPVerb._(
    valueString: 'DELETE',
    valueEnum: HTTPVerbEnum.dELETE,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/http-verb',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'DELETE',
    ),
  );

  /// PATCH
  static const HTTPVerb pATCH = HTTPVerb._(
    valueString: 'PATCH',
    valueEnum: HTTPVerbEnum.pATCH,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/http-verb',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'PATCH',
    ),
  );

  /// List of all enum-like values
  static final List<HTTPVerb> values = [
    gET,
    hEAD,
    pOST,
    pUT,
    dELETE,
    pATCH,
  ];

  /// Returns the enum value with an element attached
  HTTPVerb withElement(Element? newElement) {
    return HTTPVerb._(
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
  HTTPVerb clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  HTTPVerbCopyWithImpl<HTTPVerb> get copyWith => HTTPVerbCopyWithImpl<HTTPVerb>(
        this,
        (v) => v as HTTPVerb,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class HTTPVerbCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  HTTPVerbCopyWithImpl(super._value, super._then);

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
      HTTPVerb(
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
