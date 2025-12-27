part of '../primitive_types.dart';

/// Actual enum for NarrativeStatus
enum NarrativeStatusBuilderEnum {
  /// generated
  generated,

  /// extensions
  extensions,

  /// additional
  additional,

  /// empty
  empty_,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case NarrativeStatusBuilderEnum.generated:
        return 'generated';
      case NarrativeStatusBuilderEnum.extensions:
        return 'extensions';
      case NarrativeStatusBuilderEnum.additional:
        return 'additional';
      case NarrativeStatusBuilderEnum.empty_:
        return 'empty';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static NarrativeStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return NarrativeStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static NarrativeStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'generated':
        return NarrativeStatusBuilderEnum.generated;
      case 'extensions':
        return NarrativeStatusBuilderEnum.extensions;
      case 'additional':
        return NarrativeStatusBuilderEnum.additional;
      case 'empty':
        return NarrativeStatusBuilderEnum.empty_;
    }
    return null;
  }
}

/// The status of a resource narrative.
class NarrativeStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  NarrativeStatusBuilder._({
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
  factory NarrativeStatusBuilder(
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
    final valueEnum = NarrativeStatusBuilderEnum.fromString(
      valueString,
    );
    return NarrativeStatusBuilder._(
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

  /// Create empty [NarrativeStatusBuilder]
  /// with element only
  factory NarrativeStatusBuilder.empty() =>
      NarrativeStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [NarrativeStatusBuilder] from JSON.
  factory NarrativeStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NarrativeStatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'NarrativeStatusBuilder cannot be constructed from JSON.',
      );
    }
    return NarrativeStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for NarrativeStatusBuilder
  final NarrativeStatusBuilderEnum? valueEnum;

  /// generated
  static NarrativeStatusBuilder generated = NarrativeStatusBuilder._(
    valueString: 'generated',
    valueEnum: NarrativeStatusBuilderEnum.generated,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/narrative-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Generated',
    ),
  );

  /// extensions
  static NarrativeStatusBuilder extensions = NarrativeStatusBuilder._(
    valueString: 'extensions',
    valueEnum: NarrativeStatusBuilderEnum.extensions,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/narrative-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Extensions',
    ),
  );

  /// additional
  static NarrativeStatusBuilder additional = NarrativeStatusBuilder._(
    valueString: 'additional',
    valueEnum: NarrativeStatusBuilderEnum.additional,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/narrative-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Additional',
    ),
  );

  /// empty_
  static NarrativeStatusBuilder empty_ = NarrativeStatusBuilder._(
    valueString: 'empty',
    valueEnum: NarrativeStatusBuilderEnum.empty_,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/narrative-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Empty',
    ),
  );

  /// For instances where an Element is present but not value
  static NarrativeStatusBuilder elementOnly = NarrativeStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<NarrativeStatusBuilder> values = [
    generated,
    extensions,
    additional,
    empty_,
  ];

  /// Returns the enum value with an element attached
  NarrativeStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return NarrativeStatusBuilder._(
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
