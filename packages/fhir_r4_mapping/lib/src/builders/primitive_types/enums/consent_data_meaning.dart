part of '../primitive_types.dart';

/// Actual enum for ConsentDataMeaning
enum ConsentDataMeaningBuilderEnum {
  /// instance
  instance,

  /// related
  related,

  /// dependents
  dependents,

  /// authoredby
  authoredby,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ConsentDataMeaningBuilderEnum.instance:
        return 'instance';
      case ConsentDataMeaningBuilderEnum.related:
        return 'related';
      case ConsentDataMeaningBuilderEnum.dependents:
        return 'dependents';
      case ConsentDataMeaningBuilderEnum.authoredby:
        return 'authoredby';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ConsentDataMeaningBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ConsentDataMeaningBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ConsentDataMeaningBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'instance':
        return ConsentDataMeaningBuilderEnum.instance;
      case 'related':
        return ConsentDataMeaningBuilderEnum.related;
      case 'dependents':
        return ConsentDataMeaningBuilderEnum.dependents;
      case 'authoredby':
        return ConsentDataMeaningBuilderEnum.authoredby;
    }
    return null;
  }
}

/// How a resource reference is interpreted when testing consent
/// restrictions.
class ConsentDataMeaningBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ConsentDataMeaningBuilder._({
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
  factory ConsentDataMeaningBuilder(
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
    final valueEnum = ConsentDataMeaningBuilderEnum.fromString(
      valueString,
    );
    return ConsentDataMeaningBuilder._(
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

  /// Create empty [ConsentDataMeaningBuilder]
  /// with element only
  factory ConsentDataMeaningBuilder.empty() =>
      ConsentDataMeaningBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ConsentDataMeaningBuilder] from JSON.
  factory ConsentDataMeaningBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConsentDataMeaningBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ConsentDataMeaningBuilder cannot be constructed from JSON.',
      );
    }
    return ConsentDataMeaningBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ConsentDataMeaningBuilder
  final ConsentDataMeaningBuilderEnum? valueEnum;

  /// instance
  static ConsentDataMeaningBuilder instance = ConsentDataMeaningBuilder._(
    valueString: 'instance',
    valueEnum: ConsentDataMeaningBuilderEnum.instance,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/consent-data-meaning',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Instance',
    ),
  );

  /// related
  static ConsentDataMeaningBuilder related = ConsentDataMeaningBuilder._(
    valueString: 'related',
    valueEnum: ConsentDataMeaningBuilderEnum.related,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/consent-data-meaning',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Related',
    ),
  );

  /// dependents
  static ConsentDataMeaningBuilder dependents = ConsentDataMeaningBuilder._(
    valueString: 'dependents',
    valueEnum: ConsentDataMeaningBuilderEnum.dependents,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/consent-data-meaning',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Dependents',
    ),
  );

  /// authoredby
  static ConsentDataMeaningBuilder authoredby = ConsentDataMeaningBuilder._(
    valueString: 'authoredby',
    valueEnum: ConsentDataMeaningBuilderEnum.authoredby,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/consent-data-meaning',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'AuthoredBy',
    ),
  );

  /// For instances where an Element is present but not value
  static ConsentDataMeaningBuilder elementOnly = ConsentDataMeaningBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ConsentDataMeaningBuilder> values = [
    instance,
    related,
    dependents,
    authoredby,
  ];

  /// Returns the enum value with an element attached
  ConsentDataMeaningBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ConsentDataMeaningBuilder._(
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
