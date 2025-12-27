part of '../primitive_types.dart';

/// Actual enum for SortDirection
enum SortDirectionBuilderEnum {
  /// ascending
  ascending,

  /// descending
  descending,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case SortDirectionBuilderEnum.ascending:
        return 'ascending';
      case SortDirectionBuilderEnum.descending:
        return 'descending';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static SortDirectionBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return SortDirectionBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static SortDirectionBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'ascending':
        return SortDirectionBuilderEnum.ascending;
      case 'descending':
        return SortDirectionBuilderEnum.descending;
    }
    return null;
  }
}

/// The possible sort directions, ascending or descending.
class SortDirectionBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  SortDirectionBuilder._({
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
  factory SortDirectionBuilder(
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
    final valueEnum = SortDirectionBuilderEnum.fromString(
      valueString,
    );
    return SortDirectionBuilder._(
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

  /// Create empty [SortDirectionBuilder]
  /// with element only
  factory SortDirectionBuilder.empty() =>
      SortDirectionBuilder._(valueString: null);

  /// Factory constructor to create
  /// [SortDirectionBuilder] from JSON.
  factory SortDirectionBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SortDirectionBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SortDirectionBuilder cannot be constructed from JSON.',
      );
    }
    return SortDirectionBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for SortDirectionBuilder
  final SortDirectionBuilderEnum? valueEnum;

  /// ascending
  static SortDirectionBuilder ascending = SortDirectionBuilder._(
    valueString: 'ascending',
    valueEnum: SortDirectionBuilderEnum.ascending,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/sort-direction',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Ascending',
    ),
  );

  /// descending
  static SortDirectionBuilder descending = SortDirectionBuilder._(
    valueString: 'descending',
    valueEnum: SortDirectionBuilderEnum.descending,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/sort-direction',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Descending',
    ),
  );

  /// For instances where an Element is present but not value
  static SortDirectionBuilder elementOnly = SortDirectionBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<SortDirectionBuilder> values = [
    ascending,
    descending,
  ];

  /// Returns the enum value with an element attached
  SortDirectionBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return SortDirectionBuilder._(
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
