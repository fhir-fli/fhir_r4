part of '../primitive_types.dart';

/// Actual enum for CodeSystemHierarchyMeaning
enum CodeSystemHierarchyMeaningBuilderEnum {
  /// grouped-by
  groupedBy,

  /// is-a
  isA,

  /// part-of
  partOf,

  /// classified-with
  classifiedWith,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case CodeSystemHierarchyMeaningBuilderEnum.groupedBy:
        return 'grouped-by';
      case CodeSystemHierarchyMeaningBuilderEnum.isA:
        return 'is-a';
      case CodeSystemHierarchyMeaningBuilderEnum.partOf:
        return 'part-of';
      case CodeSystemHierarchyMeaningBuilderEnum.classifiedWith:
        return 'classified-with';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static CodeSystemHierarchyMeaningBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return CodeSystemHierarchyMeaningBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static CodeSystemHierarchyMeaningBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'grouped-by':
        return CodeSystemHierarchyMeaningBuilderEnum.groupedBy;
      case 'is-a':
        return CodeSystemHierarchyMeaningBuilderEnum.isA;
      case 'part-of':
        return CodeSystemHierarchyMeaningBuilderEnum.partOf;
      case 'classified-with':
        return CodeSystemHierarchyMeaningBuilderEnum.classifiedWith;
    }
    return null;
  }
}

/// The meaning of the hierarchy of concepts in a code system.
class CodeSystemHierarchyMeaningBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  CodeSystemHierarchyMeaningBuilder._({
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
  factory CodeSystemHierarchyMeaningBuilder(
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
    final valueEnum = CodeSystemHierarchyMeaningBuilderEnum.fromString(
      valueString,
    );
    return CodeSystemHierarchyMeaningBuilder._(
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

  /// Create empty [CodeSystemHierarchyMeaningBuilder]
  /// with element only
  factory CodeSystemHierarchyMeaningBuilder.empty() =>
      CodeSystemHierarchyMeaningBuilder._(valueString: null);

  /// Factory constructor to create
  /// [CodeSystemHierarchyMeaningBuilder] from JSON.
  factory CodeSystemHierarchyMeaningBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CodeSystemHierarchyMeaningBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CodeSystemHierarchyMeaningBuilder cannot be constructed from JSON.',
      );
    }
    return CodeSystemHierarchyMeaningBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for CodeSystemHierarchyMeaningBuilder
  final CodeSystemHierarchyMeaningBuilderEnum? valueEnum;

  /// grouped_by
  static CodeSystemHierarchyMeaningBuilder groupedBy =
      CodeSystemHierarchyMeaningBuilder._(
    valueString: 'grouped-by',
    valueEnum: CodeSystemHierarchyMeaningBuilderEnum.groupedBy,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/codesystem-hierarchy-meaning',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Grouped By',
    ),
  );

  /// is_a
  static CodeSystemHierarchyMeaningBuilder isA =
      CodeSystemHierarchyMeaningBuilder._(
    valueString: 'is-a',
    valueEnum: CodeSystemHierarchyMeaningBuilderEnum.isA,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/codesystem-hierarchy-meaning',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Is-A',
    ),
  );

  /// part_of
  static CodeSystemHierarchyMeaningBuilder partOf =
      CodeSystemHierarchyMeaningBuilder._(
    valueString: 'part-of',
    valueEnum: CodeSystemHierarchyMeaningBuilderEnum.partOf,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/codesystem-hierarchy-meaning',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Part Of',
    ),
  );

  /// classified_with
  static CodeSystemHierarchyMeaningBuilder classifiedWith =
      CodeSystemHierarchyMeaningBuilder._(
    valueString: 'classified-with',
    valueEnum: CodeSystemHierarchyMeaningBuilderEnum.classifiedWith,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/codesystem-hierarchy-meaning',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Classified With',
    ),
  );

  /// For instances where an Element is present but not value
  static CodeSystemHierarchyMeaningBuilder elementOnly =
      CodeSystemHierarchyMeaningBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<CodeSystemHierarchyMeaningBuilder> values = [
    groupedBy,
    isA,
    partOf,
    classifiedWith,
  ];

  /// Returns the enum value with an element attached
  CodeSystemHierarchyMeaningBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return CodeSystemHierarchyMeaningBuilder._(
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
