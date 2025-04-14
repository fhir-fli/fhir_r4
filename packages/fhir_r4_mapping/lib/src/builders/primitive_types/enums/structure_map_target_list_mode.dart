// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for StructureMapTargetListMode
enum StructureMapTargetListModeBuilderEnum {
  /// first
  first,

  /// share
  share,

  /// last
  last,

  /// collate
  collate,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case StructureMapTargetListModeBuilderEnum.first:
        return 'first';
      case StructureMapTargetListModeBuilderEnum.share:
        return 'share';
      case StructureMapTargetListModeBuilderEnum.last:
        return 'last';
      case StructureMapTargetListModeBuilderEnum.collate:
        return 'collate';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static StructureMapTargetListModeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return StructureMapTargetListModeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static StructureMapTargetListModeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'first':
        return StructureMapTargetListModeBuilderEnum.first;
      case 'share':
        return StructureMapTargetListModeBuilderEnum.share;
      case 'last':
        return StructureMapTargetListModeBuilderEnum.last;
      case 'collate':
        return StructureMapTargetListModeBuilderEnum.collate;
    }
    return null;
  }
}

/// If field is a list, how to manage the production.
class StructureMapTargetListModeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  StructureMapTargetListModeBuilder._({
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
  factory StructureMapTargetListModeBuilder(
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
    final valueEnum = StructureMapTargetListModeBuilderEnum.fromString(
      valueString,
    );
    return StructureMapTargetListModeBuilder._(
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

  /// Create empty [StructureMapTargetListModeBuilder]
  /// with element only
  factory StructureMapTargetListModeBuilder.empty() =>
      StructureMapTargetListModeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [StructureMapTargetListModeBuilder] from JSON.
  factory StructureMapTargetListModeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StructureMapTargetListModeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'StructureMapTargetListModeBuilder cannot be constructed from JSON.',
      );
    }
    return StructureMapTargetListModeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for StructureMapTargetListModeBuilder
  final StructureMapTargetListModeBuilderEnum? valueEnum;

  /// first
  static StructureMapTargetListModeBuilder first =
      StructureMapTargetListModeBuilder._(
    valueString: 'first',
    valueEnum: StructureMapTargetListModeBuilderEnum.first,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-target-list-mode',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'First',
    ),
  );

  /// share
  static StructureMapTargetListModeBuilder share =
      StructureMapTargetListModeBuilder._(
    valueString: 'share',
    valueEnum: StructureMapTargetListModeBuilderEnum.share,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-target-list-mode',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Share',
    ),
  );

  /// last
  static StructureMapTargetListModeBuilder last =
      StructureMapTargetListModeBuilder._(
    valueString: 'last',
    valueEnum: StructureMapTargetListModeBuilderEnum.last,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-target-list-mode',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Last',
    ),
  );

  /// collate
  static StructureMapTargetListModeBuilder collate =
      StructureMapTargetListModeBuilder._(
    valueString: 'collate',
    valueEnum: StructureMapTargetListModeBuilderEnum.collate,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/map-target-list-mode',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Collate',
    ),
  );

  /// For instances where an Element is present but not value
  static StructureMapTargetListModeBuilder elementOnly =
      StructureMapTargetListModeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<StructureMapTargetListModeBuilder> values = [
    first,
    share,
    last,
    collate,
  ];

  /// Returns the enum value with an element attached
  StructureMapTargetListModeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return StructureMapTargetListModeBuilder._(
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
