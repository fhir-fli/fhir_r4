// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for CatalogEntryRelationType
enum CatalogEntryRelationTypeBuilderEnum {
  /// triggers
  triggers,

  /// is-replaced-by
  isReplacedBy,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case CatalogEntryRelationTypeBuilderEnum.triggers:
        return 'triggers';
      case CatalogEntryRelationTypeBuilderEnum.isReplacedBy:
        return 'is-replaced-by';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static CatalogEntryRelationTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return CatalogEntryRelationTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static CatalogEntryRelationTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'triggers':
        return CatalogEntryRelationTypeBuilderEnum.triggers;
      case 'is-replaced-by':
        return CatalogEntryRelationTypeBuilderEnum.isReplacedBy;
    }
    return null;
  }
}

/// The type of relations between entries.
class CatalogEntryRelationTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  CatalogEntryRelationTypeBuilder._({
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
  factory CatalogEntryRelationTypeBuilder(
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
    final valueEnum = CatalogEntryRelationTypeBuilderEnum.fromString(
      valueString,
    );
    return CatalogEntryRelationTypeBuilder._(
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

  /// Create empty [CatalogEntryRelationTypeBuilder]
  /// with element only
  factory CatalogEntryRelationTypeBuilder.empty() =>
      CatalogEntryRelationTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [CatalogEntryRelationTypeBuilder] from JSON.
  factory CatalogEntryRelationTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CatalogEntryRelationTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CatalogEntryRelationTypeBuilder cannot be constructed from JSON.',
      );
    }
    return CatalogEntryRelationTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for CatalogEntryRelationTypeBuilder
  final CatalogEntryRelationTypeBuilderEnum? valueEnum;

  /// triggers
  static CatalogEntryRelationTypeBuilder triggers =
      CatalogEntryRelationTypeBuilder._(
    valueString: 'triggers',
    valueEnum: CatalogEntryRelationTypeBuilderEnum.triggers,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/relation-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Triggers',
    ),
  );

  /// is_replaced_by
  static CatalogEntryRelationTypeBuilder isReplacedBy =
      CatalogEntryRelationTypeBuilder._(
    valueString: 'is-replaced-by',
    valueEnum: CatalogEntryRelationTypeBuilderEnum.isReplacedBy,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/relation-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Replaced By',
    ),
  );

  /// For instances where an Element is present but not value
  static CatalogEntryRelationTypeBuilder elementOnly =
      CatalogEntryRelationTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<CatalogEntryRelationTypeBuilder> values = [
    triggers,
    isReplacedBy,
  ];

  /// Returns the enum value with an element attached
  CatalogEntryRelationTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return CatalogEntryRelationTypeBuilder._(
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
