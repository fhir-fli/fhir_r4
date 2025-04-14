// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for StructureMapSourceListMode
enum StructureMapSourceListModeBuilderEnum {
  /// first
  first,

  /// not_first
  notFirst,

  /// last
  last,

  /// not_last
  notLast,

  /// only_one
  onlyOne,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case StructureMapSourceListModeBuilderEnum.first:
        return 'first';
      case StructureMapSourceListModeBuilderEnum.notFirst:
        return 'not_first';
      case StructureMapSourceListModeBuilderEnum.last:
        return 'last';
      case StructureMapSourceListModeBuilderEnum.notLast:
        return 'not_last';
      case StructureMapSourceListModeBuilderEnum.onlyOne:
        return 'only_one';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static StructureMapSourceListModeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return StructureMapSourceListModeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static StructureMapSourceListModeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'first':
        return StructureMapSourceListModeBuilderEnum.first;
      case 'not_first':
        return StructureMapSourceListModeBuilderEnum.notFirst;
      case 'last':
        return StructureMapSourceListModeBuilderEnum.last;
      case 'not_last':
        return StructureMapSourceListModeBuilderEnum.notLast;
      case 'only_one':
        return StructureMapSourceListModeBuilderEnum.onlyOne;
    }
    return null;
  }
}

/// If field is a list, how to manage the source.
class StructureMapSourceListModeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  StructureMapSourceListModeBuilder._({
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
  factory StructureMapSourceListModeBuilder(
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
    final valueEnum = StructureMapSourceListModeBuilderEnum.fromString(
      valueString,
    );
    return StructureMapSourceListModeBuilder._(
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

  /// Create empty [StructureMapSourceListModeBuilder]
  /// with element only
  factory StructureMapSourceListModeBuilder.empty() =>
      StructureMapSourceListModeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [StructureMapSourceListModeBuilder] from JSON.
  factory StructureMapSourceListModeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapSourceListModeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'StructureMapSourceListModeBuilder cannot be constructed from JSON.',
      );
    }
    return StructureMapSourceListModeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for StructureMapSourceListModeBuilder
  final StructureMapSourceListModeBuilderEnum? valueEnum;

  /// first
  static StructureMapSourceListModeBuilder first =
      StructureMapSourceListModeBuilder._(
    valueString: 'first',
    valueEnum: StructureMapSourceListModeBuilderEnum.first,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-source-list-mode',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'First',
    ),
  );

  /// not_first
  static StructureMapSourceListModeBuilder notFirst =
      StructureMapSourceListModeBuilder._(
    valueString: 'not_first',
    valueEnum: StructureMapSourceListModeBuilderEnum.notFirst,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-source-list-mode',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'All but the first',
    ),
  );

  /// last
  static StructureMapSourceListModeBuilder last =
      StructureMapSourceListModeBuilder._(
    valueString: 'last',
    valueEnum: StructureMapSourceListModeBuilderEnum.last,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-source-list-mode',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Last',
    ),
  );

  /// not_last
  static StructureMapSourceListModeBuilder notLast =
      StructureMapSourceListModeBuilder._(
    valueString: 'not_last',
    valueEnum: StructureMapSourceListModeBuilderEnum.notLast,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-source-list-mode',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'All but the last',
    ),
  );

  /// only_one
  static StructureMapSourceListModeBuilder onlyOne =
      StructureMapSourceListModeBuilder._(
    valueString: 'only_one',
    valueEnum: StructureMapSourceListModeBuilderEnum.onlyOne,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-source-list-mode',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Enforce only one',
    ),
  );

  /// For instances where an Element is present but not value
  static StructureMapSourceListModeBuilder elementOnly =
      StructureMapSourceListModeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<StructureMapSourceListModeBuilder> values = [
    first,
    notFirst,
    last,
    notLast,
    onlyOne,
  ];

  /// Returns the enum value with an element attached
  StructureMapSourceListModeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return StructureMapSourceListModeBuilder._(
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
