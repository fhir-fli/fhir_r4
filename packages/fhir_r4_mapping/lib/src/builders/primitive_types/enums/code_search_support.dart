part of '../primitive_types.dart';

/// Actual enum for CodeSearchSupport
enum CodeSearchSupportBuilderEnum {
  /// explicit
  explicit,

  /// all
  all,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case CodeSearchSupportBuilderEnum.explicit:
        return 'explicit';
      case CodeSearchSupportBuilderEnum.all:
        return 'all';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static CodeSearchSupportBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return CodeSearchSupportBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static CodeSearchSupportBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'explicit':
        return CodeSearchSupportBuilderEnum.explicit;
      case 'all':
        return CodeSearchSupportBuilderEnum.all;
    }
    return null;
  }
}

/// The degree to which the server supports the code search parameter on
/// ValueSet, if it is supported.
class CodeSearchSupportBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  CodeSearchSupportBuilder._({
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
  factory CodeSearchSupportBuilder(
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
    final valueEnum = CodeSearchSupportBuilderEnum.fromString(
      valueString,
    );
    return CodeSearchSupportBuilder._(
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

  /// Create empty [CodeSearchSupportBuilder]
  /// with element only
  factory CodeSearchSupportBuilder.empty() =>
      CodeSearchSupportBuilder._(valueString: null);

  /// Factory constructor to create
  /// [CodeSearchSupportBuilder] from JSON.
  factory CodeSearchSupportBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CodeSearchSupportBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CodeSearchSupportBuilder cannot be constructed from JSON.',
      );
    }
    return CodeSearchSupportBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for CodeSearchSupportBuilder
  final CodeSearchSupportBuilderEnum? valueEnum;

  /// explicit
  static CodeSearchSupportBuilder explicit = CodeSearchSupportBuilder._(
    valueString: 'explicit',
    valueEnum: CodeSearchSupportBuilderEnum.explicit,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/code-search-support',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Explicit Codes',
    ),
  );

  /// all
  static CodeSearchSupportBuilder all = CodeSearchSupportBuilder._(
    valueString: 'all',
    valueEnum: CodeSearchSupportBuilderEnum.all,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/code-search-support',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Implicit Codes',
    ),
  );

  /// For instances where an Element is present but not value
  static CodeSearchSupportBuilder elementOnly = CodeSearchSupportBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<CodeSearchSupportBuilder> values = [
    explicit,
    all,
  ];

  /// Returns the enum value with an element attached
  CodeSearchSupportBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return CodeSearchSupportBuilder._(
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
