// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ContributorType
enum ContributorTypeBuilderEnum {
  /// author
  author,

  /// editor
  editor,

  /// reviewer
  reviewer,

  /// endorser
  endorser,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ContributorTypeBuilderEnum.author:
        return 'author';
      case ContributorTypeBuilderEnum.editor:
        return 'editor';
      case ContributorTypeBuilderEnum.reviewer:
        return 'reviewer';
      case ContributorTypeBuilderEnum.endorser:
        return 'endorser';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ContributorTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ContributorTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ContributorTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'author':
        return ContributorTypeBuilderEnum.author;
      case 'editor':
        return ContributorTypeBuilderEnum.editor;
      case 'reviewer':
        return ContributorTypeBuilderEnum.reviewer;
      case 'endorser':
        return ContributorTypeBuilderEnum.endorser;
    }
    return null;
  }
}

/// The type of contributor.
class ContributorTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ContributorTypeBuilder._({
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
  factory ContributorTypeBuilder(
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
    final valueEnum = ContributorTypeBuilderEnum.fromString(
      valueString,
    );
    return ContributorTypeBuilder._(
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

  /// Create empty [ContributorTypeBuilder]
  /// with element only
  factory ContributorTypeBuilder.empty() =>
      ContributorTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ContributorTypeBuilder] from JSON.
  factory ContributorTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContributorTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ContributorTypeBuilder cannot be constructed from JSON.',
      );
    }
    return ContributorTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ContributorTypeBuilder
  final ContributorTypeBuilderEnum? valueEnum;

  /// author
  static ContributorTypeBuilder author = ContributorTypeBuilder._(
    valueString: 'author',
    valueEnum: ContributorTypeBuilderEnum.author,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/contributor-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Author',
    ),
  );

  /// editor
  static ContributorTypeBuilder editor = ContributorTypeBuilder._(
    valueString: 'editor',
    valueEnum: ContributorTypeBuilderEnum.editor,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/contributor-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Editor',
    ),
  );

  /// reviewer
  static ContributorTypeBuilder reviewer = ContributorTypeBuilder._(
    valueString: 'reviewer',
    valueEnum: ContributorTypeBuilderEnum.reviewer,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/contributor-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Reviewer',
    ),
  );

  /// endorser
  static ContributorTypeBuilder endorser = ContributorTypeBuilder._(
    valueString: 'endorser',
    valueEnum: ContributorTypeBuilderEnum.endorser,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/contributor-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Endorser',
    ),
  );

  /// For instances where an Element is present but not value
  static ContributorTypeBuilder elementOnly = ContributorTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ContributorTypeBuilder> values = [
    author,
    editor,
    reviewer,
    endorser,
  ];

  /// Returns the enum value with an element attached
  ContributorTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ContributorTypeBuilder._(
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
