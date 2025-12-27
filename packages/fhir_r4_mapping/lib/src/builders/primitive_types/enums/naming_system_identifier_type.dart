part of '../primitive_types.dart';

/// Actual enum for NamingSystemIdentifierType
enum NamingSystemIdentifierTypeBuilderEnum {
  /// oid
  oid,

  /// uuid
  uuid,

  /// uri
  uri,

  /// other
  other,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case NamingSystemIdentifierTypeBuilderEnum.oid:
        return 'oid';
      case NamingSystemIdentifierTypeBuilderEnum.uuid:
        return 'uuid';
      case NamingSystemIdentifierTypeBuilderEnum.uri:
        return 'uri';
      case NamingSystemIdentifierTypeBuilderEnum.other:
        return 'other';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static NamingSystemIdentifierTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return NamingSystemIdentifierTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static NamingSystemIdentifierTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'oid':
        return NamingSystemIdentifierTypeBuilderEnum.oid;
      case 'uuid':
        return NamingSystemIdentifierTypeBuilderEnum.uuid;
      case 'uri':
        return NamingSystemIdentifierTypeBuilderEnum.uri;
      case 'other':
        return NamingSystemIdentifierTypeBuilderEnum.other;
    }
    return null;
  }
}

/// Identifies the style of unique identifier used to identify a namespace.
class NamingSystemIdentifierTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  NamingSystemIdentifierTypeBuilder._({
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
  factory NamingSystemIdentifierTypeBuilder(
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
    final valueEnum = NamingSystemIdentifierTypeBuilderEnum.fromString(
      valueString,
    );
    return NamingSystemIdentifierTypeBuilder._(
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

  /// Create empty [NamingSystemIdentifierTypeBuilder]
  /// with element only
  factory NamingSystemIdentifierTypeBuilder.empty() =>
      NamingSystemIdentifierTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [NamingSystemIdentifierTypeBuilder] from JSON.
  factory NamingSystemIdentifierTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NamingSystemIdentifierTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'NamingSystemIdentifierTypeBuilder cannot be constructed from JSON.',
      );
    }
    return NamingSystemIdentifierTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for NamingSystemIdentifierTypeBuilder
  final NamingSystemIdentifierTypeBuilderEnum? valueEnum;

  /// oid
  static NamingSystemIdentifierTypeBuilder oid =
      NamingSystemIdentifierTypeBuilder._(
    valueString: 'oid',
    valueEnum: NamingSystemIdentifierTypeBuilderEnum.oid,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/namingsystem-identifier-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'OID',
    ),
  );

  /// uuid
  static NamingSystemIdentifierTypeBuilder uuid =
      NamingSystemIdentifierTypeBuilder._(
    valueString: 'uuid',
    valueEnum: NamingSystemIdentifierTypeBuilderEnum.uuid,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/namingsystem-identifier-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'UUID',
    ),
  );

  /// uri
  static NamingSystemIdentifierTypeBuilder uri =
      NamingSystemIdentifierTypeBuilder._(
    valueString: 'uri',
    valueEnum: NamingSystemIdentifierTypeBuilderEnum.uri,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/namingsystem-identifier-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'URI',
    ),
  );

  /// other
  static NamingSystemIdentifierTypeBuilder other =
      NamingSystemIdentifierTypeBuilder._(
    valueString: 'other',
    valueEnum: NamingSystemIdentifierTypeBuilderEnum.other,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/namingsystem-identifier-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Other',
    ),
  );

  /// For instances where an Element is present but not value
  static NamingSystemIdentifierTypeBuilder elementOnly =
      NamingSystemIdentifierTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<NamingSystemIdentifierTypeBuilder> values = [
    oid,
    uuid,
    uri,
    other,
  ];

  /// Returns the enum value with an element attached
  NamingSystemIdentifierTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return NamingSystemIdentifierTypeBuilder._(
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
