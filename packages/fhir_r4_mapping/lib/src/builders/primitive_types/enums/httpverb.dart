part of '../primitive_types.dart';

/// Actual enum for HTTPVerb
enum HTTPVerbBuilderEnum {
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
      case HTTPVerbBuilderEnum.gET:
        return 'GET';
      case HTTPVerbBuilderEnum.hEAD:
        return 'HEAD';
      case HTTPVerbBuilderEnum.pOST:
        return 'POST';
      case HTTPVerbBuilderEnum.pUT:
        return 'PUT';
      case HTTPVerbBuilderEnum.dELETE:
        return 'DELETE';
      case HTTPVerbBuilderEnum.pATCH:
        return 'PATCH';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static HTTPVerbBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return HTTPVerbBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static HTTPVerbBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'GET':
        return HTTPVerbBuilderEnum.gET;
      case 'HEAD':
        return HTTPVerbBuilderEnum.hEAD;
      case 'POST':
        return HTTPVerbBuilderEnum.pOST;
      case 'PUT':
        return HTTPVerbBuilderEnum.pUT;
      case 'DELETE':
        return HTTPVerbBuilderEnum.dELETE;
      case 'PATCH':
        return HTTPVerbBuilderEnum.pATCH;
    }
    return null;
  }
}

/// HTTP verbs (in the HTTP command line). See [HTTP
/// rfc](https://tools.ietf.org/html/rfc7231) for details.
class HTTPVerbBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  HTTPVerbBuilder._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory HTTPVerbBuilder(
    String? rawValue, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCodeBuilder._validateCode(rawValue) : null;
    final valueEnum = HTTPVerbBuilderEnum.fromString(
      valueString,
    );
    return HTTPVerbBuilder._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
      objectPath: objectPath,
    );
  }

  /// Create empty [HTTPVerbBuilder]
  /// with element only
  factory HTTPVerbBuilder.empty() => HTTPVerbBuilder._(valueString: null);

  /// Factory constructor to create
  /// [HTTPVerbBuilder] from JSON.
  factory HTTPVerbBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return HTTPVerbBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'HTTPVerbBuilder cannot be constructed from JSON.',
      );
    }
    return HTTPVerbBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for HTTPVerbBuilder
  final HTTPVerbBuilderEnum? valueEnum;

  /// GET
  static HTTPVerbBuilder gET = HTTPVerbBuilder._(
    valueString: 'GET',
    valueEnum: HTTPVerbBuilderEnum.gET,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/http-verb',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'GET',
    ),
  );

  /// HEAD
  static HTTPVerbBuilder hEAD = HTTPVerbBuilder._(
    valueString: 'HEAD',
    valueEnum: HTTPVerbBuilderEnum.hEAD,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/http-verb',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'HEAD',
    ),
  );

  /// POST
  static HTTPVerbBuilder pOST = HTTPVerbBuilder._(
    valueString: 'POST',
    valueEnum: HTTPVerbBuilderEnum.pOST,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/http-verb',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'POST',
    ),
  );

  /// PUT
  static HTTPVerbBuilder pUT = HTTPVerbBuilder._(
    valueString: 'PUT',
    valueEnum: HTTPVerbBuilderEnum.pUT,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/http-verb',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'PUT',
    ),
  );

  /// DELETE
  static HTTPVerbBuilder dELETE = HTTPVerbBuilder._(
    valueString: 'DELETE',
    valueEnum: HTTPVerbBuilderEnum.dELETE,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/http-verb',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'DELETE',
    ),
  );

  /// PATCH
  static HTTPVerbBuilder pATCH = HTTPVerbBuilder._(
    valueString: 'PATCH',
    valueEnum: HTTPVerbBuilderEnum.pATCH,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/http-verb',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'PATCH',
    ),
  );

  /// For instances where an Element is present but not value
  static HTTPVerbBuilder elementOnly = HTTPVerbBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<HTTPVerbBuilder> values = [
    gET,
    hEAD,
    pOST,
    pUT,
    dELETE,
    pATCH,
  ];

  /// Returns the enum value with an element attached
  HTTPVerbBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return HTTPVerbBuilder._(
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
}
