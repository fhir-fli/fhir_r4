part of '../primitive_types.dart';

/// Actual enum for ExtensionContextType
enum ExtensionContextTypeBuilderEnum {
  /// fhirpath
  fhirpath,

  /// element
  element_,

  /// extension
  extensionValue,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ExtensionContextTypeBuilderEnum.fhirpath:
        return 'fhirpath';
      case ExtensionContextTypeBuilderEnum.element_:
        return 'element';
      case ExtensionContextTypeBuilderEnum.extensionValue:
        return 'extension';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ExtensionContextTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ExtensionContextTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ExtensionContextTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'fhirpath':
        return ExtensionContextTypeBuilderEnum.fhirpath;
      case 'element':
        return ExtensionContextTypeBuilderEnum.element_;
      case 'extension':
        return ExtensionContextTypeBuilderEnum.extensionValue;
    }
    return null;
  }
}

/// How an extension context is interpreted.
class ExtensionContextTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ExtensionContextTypeBuilder._({
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
  factory ExtensionContextTypeBuilder(
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
    final valueEnum = ExtensionContextTypeBuilderEnum.fromString(
      valueString,
    );
    return ExtensionContextTypeBuilder._(
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

  /// Create empty [ExtensionContextTypeBuilder]
  /// with element only
  factory ExtensionContextTypeBuilder.empty() =>
      ExtensionContextTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ExtensionContextTypeBuilder] from JSON.
  factory ExtensionContextTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExtensionContextTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ExtensionContextTypeBuilder cannot be constructed from JSON.',
      );
    }
    return ExtensionContextTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ExtensionContextTypeBuilder
  final ExtensionContextTypeBuilderEnum? valueEnum;

  /// fhirpath
  static ExtensionContextTypeBuilder fhirpath = ExtensionContextTypeBuilder._(
    valueString: 'fhirpath',
    valueEnum: ExtensionContextTypeBuilderEnum.fhirpath,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/extension-context-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'FHIRPath',
    ),
  );

  /// element_
  static ExtensionContextTypeBuilder element_ = ExtensionContextTypeBuilder._(
    valueString: 'element',
    valueEnum: ExtensionContextTypeBuilderEnum.element_,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/extension-context-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Element ID',
    ),
  );

  /// extension_
  static ExtensionContextTypeBuilder extensionValue =
      ExtensionContextTypeBuilder._(
    valueString: 'extension',
    valueEnum: ExtensionContextTypeBuilderEnum.extensionValue,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/extension-context-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Extension URL',
    ),
  );

  /// For instances where an Element is present but not value
  static ExtensionContextTypeBuilder elementOnly =
      ExtensionContextTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ExtensionContextTypeBuilder> values = [
    fhirpath,
    element_,
    extensionValue,
  ];

  /// Returns the enum value with an element attached
  ExtensionContextTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ExtensionContextTypeBuilder._(
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
