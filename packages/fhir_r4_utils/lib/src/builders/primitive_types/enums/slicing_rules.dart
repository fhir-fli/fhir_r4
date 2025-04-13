// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for SlicingRules
enum SlicingRulesBuilderEnum {
  /// closed
  closed,

  /// open
  open,

  /// openAtEnd
  openAtEnd,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case SlicingRulesBuilderEnum.closed:
        return 'closed';
      case SlicingRulesBuilderEnum.open:
        return 'open';
      case SlicingRulesBuilderEnum.openAtEnd:
        return 'openAtEnd';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static SlicingRulesBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return SlicingRulesBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static SlicingRulesBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'closed':
        return SlicingRulesBuilderEnum.closed;
      case 'open':
        return SlicingRulesBuilderEnum.open;
      case 'openAtEnd':
        return SlicingRulesBuilderEnum.openAtEnd;
    }
    return null;
  }
}

/// How slices are interpreted when evaluating an instance.
class SlicingRulesBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  SlicingRulesBuilder._({
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
  factory SlicingRulesBuilder(
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
    final valueEnum = SlicingRulesBuilderEnum.fromString(
      valueString,
    );
    return SlicingRulesBuilder._(
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

  /// Create empty [SlicingRulesBuilder]
  /// with element only
  factory SlicingRulesBuilder.empty() =>
      SlicingRulesBuilder._(valueString: null);

  /// Factory constructor to create
  /// [SlicingRulesBuilder] from JSON.
  factory SlicingRulesBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SlicingRulesBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SlicingRulesBuilder cannot be constructed from JSON.',
      );
    }
    return SlicingRulesBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for SlicingRulesBuilder
  final SlicingRulesBuilderEnum? valueEnum;

  /// closed
  static SlicingRulesBuilder closed = SlicingRulesBuilder._(
    valueString: 'closed',
    valueEnum: SlicingRulesBuilderEnum.closed,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/resource-slicing-rules',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Closed',
    ),
  );

  /// open
  static SlicingRulesBuilder open = SlicingRulesBuilder._(
    valueString: 'open',
    valueEnum: SlicingRulesBuilderEnum.open,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/resource-slicing-rules',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Open',
    ),
  );

  /// openAtEnd
  static SlicingRulesBuilder openAtEnd = SlicingRulesBuilder._(
    valueString: 'openAtEnd',
    valueEnum: SlicingRulesBuilderEnum.openAtEnd,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/resource-slicing-rules',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Open at End',
    ),
  );

  /// For instances where an Element is present but not value
  static SlicingRulesBuilder elementOnly = SlicingRulesBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<SlicingRulesBuilder> values = [
    closed,
    open,
    openAtEnd,
  ];

  /// Returns the enum value with an element attached
  SlicingRulesBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return SlicingRulesBuilder._(
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
