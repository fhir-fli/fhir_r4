// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for NamingSystemType
enum NamingSystemTypeBuilderEnum {
  /// codesystem
  codesystem,

  /// identifier
  identifier,

  /// root
  root,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case NamingSystemTypeBuilderEnum.codesystem:
        return 'codesystem';
      case NamingSystemTypeBuilderEnum.identifier:
        return 'identifier';
      case NamingSystemTypeBuilderEnum.root:
        return 'root';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static NamingSystemTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return NamingSystemTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static NamingSystemTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'codesystem':
        return NamingSystemTypeBuilderEnum.codesystem;
      case 'identifier':
        return NamingSystemTypeBuilderEnum.identifier;
      case 'root':
        return NamingSystemTypeBuilderEnum.root;
    }
    return null;
  }
}

/// Identifies the purpose of the naming system.
class NamingSystemTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  NamingSystemTypeBuilder._({
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
  factory NamingSystemTypeBuilder(
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
    final valueEnum = NamingSystemTypeBuilderEnum.fromString(
      valueString,
    );
    return NamingSystemTypeBuilder._(
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

  /// Create empty [NamingSystemTypeBuilder]
  /// with element only
  factory NamingSystemTypeBuilder.empty() =>
      NamingSystemTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [NamingSystemTypeBuilder] from JSON.
  factory NamingSystemTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NamingSystemTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'NamingSystemTypeBuilder cannot be constructed from JSON.',
      );
    }
    return NamingSystemTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for NamingSystemTypeBuilder
  final NamingSystemTypeBuilderEnum? valueEnum;

  /// codesystem
  static NamingSystemTypeBuilder codesystem = NamingSystemTypeBuilder._(
    valueString: 'codesystem',
    valueEnum: NamingSystemTypeBuilderEnum.codesystem,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/namingsystem-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Code System',
    ),
  );

  /// identifier
  static NamingSystemTypeBuilder identifier = NamingSystemTypeBuilder._(
    valueString: 'identifier',
    valueEnum: NamingSystemTypeBuilderEnum.identifier,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/namingsystem-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Identifier',
    ),
  );

  /// root
  static NamingSystemTypeBuilder root = NamingSystemTypeBuilder._(
    valueString: 'root',
    valueEnum: NamingSystemTypeBuilderEnum.root,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/namingsystem-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Root',
    ),
  );

  /// For instances where an Element is present but not value
  static NamingSystemTypeBuilder elementOnly = NamingSystemTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<NamingSystemTypeBuilder> values = [
    codesystem,
    identifier,
    root,
  ];

  /// Returns the enum value with an element attached
  NamingSystemTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return NamingSystemTypeBuilder._(
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
