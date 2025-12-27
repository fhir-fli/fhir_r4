part of '../primitive_types.dart';

/// Actual enum for StrandType
enum StrandTypeBuilderEnum {
  /// watson
  watson,

  /// crick
  crick,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case StrandTypeBuilderEnum.watson:
        return 'watson';
      case StrandTypeBuilderEnum.crick:
        return 'crick';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static StrandTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return StrandTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static StrandTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'watson':
        return StrandTypeBuilderEnum.watson;
      case 'crick':
        return StrandTypeBuilderEnum.crick;
    }
    return null;
  }
}

/// Type for strand.
class StrandTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  StrandTypeBuilder._({
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
  factory StrandTypeBuilder(
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
    final valueEnum = StrandTypeBuilderEnum.fromString(
      valueString,
    );
    return StrandTypeBuilder._(
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

  /// Create empty [StrandTypeBuilder]
  /// with element only
  factory StrandTypeBuilder.empty() => StrandTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [StrandTypeBuilder] from JSON.
  factory StrandTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return StrandTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'StrandTypeBuilder cannot be constructed from JSON.',
      );
    }
    return StrandTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for StrandTypeBuilder
  final StrandTypeBuilderEnum? valueEnum;

  /// watson
  static StrandTypeBuilder watson = StrandTypeBuilder._(
    valueString: 'watson',
    valueEnum: StrandTypeBuilderEnum.watson,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/strand-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Watson strand of referenceSeq',
    ),
  );

  /// crick
  static StrandTypeBuilder crick = StrandTypeBuilder._(
    valueString: 'crick',
    valueEnum: StrandTypeBuilderEnum.crick,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/strand-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Crick strand of referenceSeq',
    ),
  );

  /// For instances where an Element is present but not value
  static StrandTypeBuilder elementOnly = StrandTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<StrandTypeBuilder> values = [
    watson,
    crick,
  ];

  /// Returns the enum value with an element attached
  StrandTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return StrandTypeBuilder._(
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
