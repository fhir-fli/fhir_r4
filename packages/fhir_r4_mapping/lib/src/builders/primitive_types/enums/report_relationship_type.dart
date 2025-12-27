part of '../primitive_types.dart';

/// Actual enum for ReportRelationshipType
enum ReportRelationshipTypeBuilderEnum {
  /// replaces
  replaces,

  /// amends
  amends,

  /// appends
  appends,

  /// transforms
  transforms,

  /// replacedWith
  replacedWith,

  /// amendedWith
  amendedWith,

  /// appendedWith
  appendedWith,

  /// transformedWith
  transformedWith,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ReportRelationshipTypeBuilderEnum.replaces:
        return 'replaces';
      case ReportRelationshipTypeBuilderEnum.amends:
        return 'amends';
      case ReportRelationshipTypeBuilderEnum.appends:
        return 'appends';
      case ReportRelationshipTypeBuilderEnum.transforms:
        return 'transforms';
      case ReportRelationshipTypeBuilderEnum.replacedWith:
        return 'replacedWith';
      case ReportRelationshipTypeBuilderEnum.amendedWith:
        return 'amendedWith';
      case ReportRelationshipTypeBuilderEnum.appendedWith:
        return 'appendedWith';
      case ReportRelationshipTypeBuilderEnum.transformedWith:
        return 'transformedWith';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ReportRelationshipTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ReportRelationshipTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ReportRelationshipTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'replaces':
        return ReportRelationshipTypeBuilderEnum.replaces;
      case 'amends':
        return ReportRelationshipTypeBuilderEnum.amends;
      case 'appends':
        return ReportRelationshipTypeBuilderEnum.appends;
      case 'transforms':
        return ReportRelationshipTypeBuilderEnum.transforms;
      case 'replacedWith':
        return ReportRelationshipTypeBuilderEnum.replacedWith;
      case 'amendedWith':
        return ReportRelationshipTypeBuilderEnum.amendedWith;
      case 'appendedWith':
        return ReportRelationshipTypeBuilderEnum.appendedWith;
      case 'transformedWith':
        return ReportRelationshipTypeBuilderEnum.transformedWith;
    }
    return null;
  }
}

/// The type of relationship between reports.
class ReportRelationshipTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ReportRelationshipTypeBuilder._({
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
  factory ReportRelationshipTypeBuilder(
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
    final valueEnum = ReportRelationshipTypeBuilderEnum.fromString(
      valueString,
    );
    return ReportRelationshipTypeBuilder._(
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

  /// Create empty [ReportRelationshipTypeBuilder]
  /// with element only
  factory ReportRelationshipTypeBuilder.empty() =>
      ReportRelationshipTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ReportRelationshipTypeBuilder] from JSON.
  factory ReportRelationshipTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ReportRelationshipTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ReportRelationshipTypeBuilder cannot be constructed from JSON.',
      );
    }
    return ReportRelationshipTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ReportRelationshipTypeBuilder
  final ReportRelationshipTypeBuilderEnum? valueEnum;

  /// replaces
  static ReportRelationshipTypeBuilder replaces =
      ReportRelationshipTypeBuilder._(
    valueString: 'replaces',
    valueEnum: ReportRelationshipTypeBuilderEnum.replaces,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/report-relation-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Replaces',
    ),
  );

  /// amends
  static ReportRelationshipTypeBuilder amends = ReportRelationshipTypeBuilder._(
    valueString: 'amends',
    valueEnum: ReportRelationshipTypeBuilderEnum.amends,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/report-relation-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Amends',
    ),
  );

  /// appends
  static ReportRelationshipTypeBuilder appends =
      ReportRelationshipTypeBuilder._(
    valueString: 'appends',
    valueEnum: ReportRelationshipTypeBuilderEnum.appends,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/report-relation-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Appends',
    ),
  );

  /// transforms
  static ReportRelationshipTypeBuilder transforms =
      ReportRelationshipTypeBuilder._(
    valueString: 'transforms',
    valueEnum: ReportRelationshipTypeBuilderEnum.transforms,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/report-relation-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Transforms',
    ),
  );

  /// replacedWith
  static ReportRelationshipTypeBuilder replacedWith =
      ReportRelationshipTypeBuilder._(
    valueString: 'replacedWith',
    valueEnum: ReportRelationshipTypeBuilderEnum.replacedWith,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/report-relation-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Replaced With',
    ),
  );

  /// amendedWith
  static ReportRelationshipTypeBuilder amendedWith =
      ReportRelationshipTypeBuilder._(
    valueString: 'amendedWith',
    valueEnum: ReportRelationshipTypeBuilderEnum.amendedWith,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/report-relation-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Amended With',
    ),
  );

  /// appendedWith
  static ReportRelationshipTypeBuilder appendedWith =
      ReportRelationshipTypeBuilder._(
    valueString: 'appendedWith',
    valueEnum: ReportRelationshipTypeBuilderEnum.appendedWith,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/report-relation-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Appended With',
    ),
  );

  /// transformedWith
  static ReportRelationshipTypeBuilder transformedWith =
      ReportRelationshipTypeBuilder._(
    valueString: 'transformedWith',
    valueEnum: ReportRelationshipTypeBuilderEnum.transformedWith,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/report-relation-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Transformed With',
    ),
  );

  /// For instances where an Element is present but not value
  static ReportRelationshipTypeBuilder elementOnly =
      ReportRelationshipTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ReportRelationshipTypeBuilder> values = [
    replaces,
    amends,
    appends,
    transforms,
    replacedWith,
    amendedWith,
    appendedWith,
    transformedWith,
  ];

  /// Returns the enum value with an element attached
  ReportRelationshipTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ReportRelationshipTypeBuilder._(
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
