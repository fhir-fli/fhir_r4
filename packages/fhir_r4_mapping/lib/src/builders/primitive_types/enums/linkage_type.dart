// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for LinkageType
enum LinkageTypeBuilderEnum {
  /// source
  source,

  /// alternate
  alternate,

  /// historical
  historical,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case LinkageTypeBuilderEnum.source:
        return 'source';
      case LinkageTypeBuilderEnum.alternate:
        return 'alternate';
      case LinkageTypeBuilderEnum.historical:
        return 'historical';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static LinkageTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return LinkageTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static LinkageTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'source':
        return LinkageTypeBuilderEnum.source;
      case 'alternate':
        return LinkageTypeBuilderEnum.alternate;
      case 'historical':
        return LinkageTypeBuilderEnum.historical;
    }
    return null;
  }
}

/// Used to distinguish different roles a resource can play within a set of
/// linked resources.
class LinkageTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  LinkageTypeBuilder._({
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
  factory LinkageTypeBuilder(
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
    final valueEnum = LinkageTypeBuilderEnum.fromString(
      valueString,
    );
    return LinkageTypeBuilder._(
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

  /// Create empty [LinkageTypeBuilder]
  /// with element only
  factory LinkageTypeBuilder.empty() => LinkageTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [LinkageTypeBuilder] from JSON.
  factory LinkageTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return LinkageTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'LinkageTypeBuilder cannot be constructed from JSON.',
      );
    }
    return LinkageTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for LinkageTypeBuilder
  final LinkageTypeBuilderEnum? valueEnum;

  /// source
  static LinkageTypeBuilder source = LinkageTypeBuilder._(
    valueString: 'source',
    valueEnum: LinkageTypeBuilderEnum.source,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/linkage-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Source of Truth',
    ),
  );

  /// alternate
  static LinkageTypeBuilder alternate = LinkageTypeBuilder._(
    valueString: 'alternate',
    valueEnum: LinkageTypeBuilderEnum.alternate,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/linkage-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Alternate Record',
    ),
  );

  /// historical
  static LinkageTypeBuilder historical = LinkageTypeBuilder._(
    valueString: 'historical',
    valueEnum: LinkageTypeBuilderEnum.historical,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/linkage-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Historical/Obsolete Record',
    ),
  );

  /// For instances where an Element is present but not value
  static LinkageTypeBuilder elementOnly = LinkageTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<LinkageTypeBuilder> values = [
    source,
    alternate,
    historical,
  ];

  /// Returns the enum value with an element attached
  LinkageTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return LinkageTypeBuilder._(
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
