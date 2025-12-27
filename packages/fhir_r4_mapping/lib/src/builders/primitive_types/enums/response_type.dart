part of '../primitive_types.dart';

/// Actual enum for ResponseType
enum ResponseTypeBuilderEnum {
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
      case ResponseTypeBuilderEnum.ok:
        return 'ok';
      case ResponseTypeBuilderEnum.transientError:
        return 'transient-error';
      case ResponseTypeBuilderEnum.fatalError:
        return 'fatal-error';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ResponseTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ResponseTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ResponseTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'ok':
        return ResponseTypeBuilderEnum.ok;
      case 'transient-error':
        return ResponseTypeBuilderEnum.transientError;
      case 'fatal-error':
        return ResponseTypeBuilderEnum.fatalError;
    }
    return null;
  }
}

/// The kind of response to a message.
class ResponseTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ResponseTypeBuilder._({
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
  factory ResponseTypeBuilder(
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
    final valueEnum = ResponseTypeBuilderEnum.fromString(
      valueString,
    );
    return ResponseTypeBuilder._(
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

  /// Create empty [ResponseTypeBuilder]
  /// with element only
  factory ResponseTypeBuilder.empty() =>
      ResponseTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ResponseTypeBuilder] from JSON.
  factory ResponseTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ResponseTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ResponseTypeBuilder cannot be constructed from JSON.',
      );
    }
    return ResponseTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ResponseTypeBuilder
  final ResponseTypeBuilderEnum? valueEnum;

  /// ok
  static ResponseTypeBuilder ok = ResponseTypeBuilder._(
    valueString: 'ok',
    valueEnum: ResponseTypeBuilderEnum.ok,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/response-code',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'OK',
    ),
  );

  /// transient_error
  static ResponseTypeBuilder transientError = ResponseTypeBuilder._(
    valueString: 'transient-error',
    valueEnum: ResponseTypeBuilderEnum.transientError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/response-code',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Transient Error',
    ),
  );

  /// fatal_error
  static ResponseTypeBuilder fatalError = ResponseTypeBuilder._(
    valueString: 'fatal-error',
    valueEnum: ResponseTypeBuilderEnum.fatalError,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/response-code',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Fatal Error',
    ),
  );

  /// For instances where an Element is present but not value
  static ResponseTypeBuilder elementOnly = ResponseTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ResponseTypeBuilder> values = [
    ok,
    transientError,
    fatalError,
  ];

  /// Returns the enum value with an element attached
  ResponseTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ResponseTypeBuilder._(
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
