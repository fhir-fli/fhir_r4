// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for LinkType
enum LinkTypeBuilderEnum {
  /// replaced-by
  replacedBy,

  /// replaces
  replaces,

  /// refer
  refer,

  /// seealso
  seealso,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case LinkTypeBuilderEnum.replacedBy:
        return 'replaced-by';
      case LinkTypeBuilderEnum.replaces:
        return 'replaces';
      case LinkTypeBuilderEnum.refer:
        return 'refer';
      case LinkTypeBuilderEnum.seealso:
        return 'seealso';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static LinkTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return LinkTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static LinkTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'replaced-by':
        return LinkTypeBuilderEnum.replacedBy;
      case 'replaces':
        return LinkTypeBuilderEnum.replaces;
      case 'refer':
        return LinkTypeBuilderEnum.refer;
      case 'seealso':
        return LinkTypeBuilderEnum.seealso;
    }
    return null;
  }
}

/// The type of link between this patient resource and another patient
/// resource.
class LinkTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  LinkTypeBuilder._({
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
  factory LinkTypeBuilder(
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
    final valueEnum = LinkTypeBuilderEnum.fromString(
      valueString,
    );
    return LinkTypeBuilder._(
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

  /// Create empty [LinkTypeBuilder]
  /// with element only
  factory LinkTypeBuilder.empty() => LinkTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [LinkTypeBuilder] from JSON.
  factory LinkTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return LinkTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'LinkTypeBuilder cannot be constructed from JSON.',
      );
    }
    return LinkTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for LinkTypeBuilder
  final LinkTypeBuilderEnum? valueEnum;

  /// replaced_by
  static LinkTypeBuilder replacedBy = LinkTypeBuilder._(
    valueString: 'replaced-by',
    valueEnum: LinkTypeBuilderEnum.replacedBy,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/link-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Replaced-by',
    ),
  );

  /// replaces
  static LinkTypeBuilder replaces = LinkTypeBuilder._(
    valueString: 'replaces',
    valueEnum: LinkTypeBuilderEnum.replaces,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/link-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Replaces',
    ),
  );

  /// refer
  static LinkTypeBuilder refer = LinkTypeBuilder._(
    valueString: 'refer',
    valueEnum: LinkTypeBuilderEnum.refer,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/link-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Refer',
    ),
  );

  /// seealso
  static LinkTypeBuilder seealso = LinkTypeBuilder._(
    valueString: 'seealso',
    valueEnum: LinkTypeBuilderEnum.seealso,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/link-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'See also',
    ),
  );

  /// For instances where an Element is present but not value
  static LinkTypeBuilder elementOnly = LinkTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<LinkTypeBuilder> values = [
    replacedBy,
    replaces,
    refer,
    seealso,
  ];

  /// Returns the enum value with an element attached
  LinkTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return LinkTypeBuilder._(
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
