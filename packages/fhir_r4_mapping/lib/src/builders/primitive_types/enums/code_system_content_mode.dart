part of '../primitive_types.dart';

/// Actual enum for CodeSystemContentMode
enum CodeSystemContentModeBuilderEnum {
  /// not-present
  notPresent,

  /// example
  example,

  /// fragment
  fragment,

  /// complete
  complete,

  /// supplement
  supplement,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case CodeSystemContentModeBuilderEnum.notPresent:
        return 'not-present';
      case CodeSystemContentModeBuilderEnum.example:
        return 'example';
      case CodeSystemContentModeBuilderEnum.fragment:
        return 'fragment';
      case CodeSystemContentModeBuilderEnum.complete:
        return 'complete';
      case CodeSystemContentModeBuilderEnum.supplement:
        return 'supplement';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static CodeSystemContentModeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return CodeSystemContentModeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static CodeSystemContentModeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'not-present':
        return CodeSystemContentModeBuilderEnum.notPresent;
      case 'example':
        return CodeSystemContentModeBuilderEnum.example;
      case 'fragment':
        return CodeSystemContentModeBuilderEnum.fragment;
      case 'complete':
        return CodeSystemContentModeBuilderEnum.complete;
      case 'supplement':
        return CodeSystemContentModeBuilderEnum.supplement;
    }
    return null;
  }
}

/// The extent of the content of the code system (the concepts and codes it
/// defines) are represented in a code system resource.
class CodeSystemContentModeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  CodeSystemContentModeBuilder._({
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
  factory CodeSystemContentModeBuilder(
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
    final valueEnum = CodeSystemContentModeBuilderEnum.fromString(
      valueString,
    );
    return CodeSystemContentModeBuilder._(
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

  /// Create empty [CodeSystemContentModeBuilder]
  /// with element only
  factory CodeSystemContentModeBuilder.empty() =>
      CodeSystemContentModeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [CodeSystemContentModeBuilder] from JSON.
  factory CodeSystemContentModeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CodeSystemContentModeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CodeSystemContentModeBuilder cannot be constructed from JSON.',
      );
    }
    return CodeSystemContentModeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for CodeSystemContentModeBuilder
  final CodeSystemContentModeBuilderEnum? valueEnum;

  /// not_present
  static CodeSystemContentModeBuilder notPresent =
      CodeSystemContentModeBuilder._(
    valueString: 'not-present',
    valueEnum: CodeSystemContentModeBuilderEnum.notPresent,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/codesystem-content-mode',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Not Present',
    ),
  );

  /// example
  static CodeSystemContentModeBuilder example = CodeSystemContentModeBuilder._(
    valueString: 'example',
    valueEnum: CodeSystemContentModeBuilderEnum.example,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/codesystem-content-mode',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Example',
    ),
  );

  /// fragment
  static CodeSystemContentModeBuilder fragment = CodeSystemContentModeBuilder._(
    valueString: 'fragment',
    valueEnum: CodeSystemContentModeBuilderEnum.fragment,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/codesystem-content-mode',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Fragment',
    ),
  );

  /// complete
  static CodeSystemContentModeBuilder complete = CodeSystemContentModeBuilder._(
    valueString: 'complete',
    valueEnum: CodeSystemContentModeBuilderEnum.complete,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/codesystem-content-mode',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Complete',
    ),
  );

  /// supplement
  static CodeSystemContentModeBuilder supplement =
      CodeSystemContentModeBuilder._(
    valueString: 'supplement',
    valueEnum: CodeSystemContentModeBuilderEnum.supplement,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/codesystem-content-mode',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Supplement',
    ),
  );

  /// For instances where an Element is present but not value
  static CodeSystemContentModeBuilder elementOnly =
      CodeSystemContentModeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<CodeSystemContentModeBuilder> values = [
    notPresent,
    example,
    fragment,
    complete,
    supplement,
  ];

  /// Returns the enum value with an element attached
  CodeSystemContentModeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return CodeSystemContentModeBuilder._(
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
