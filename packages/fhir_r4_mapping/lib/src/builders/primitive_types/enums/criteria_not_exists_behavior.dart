part of '../primitive_types.dart';

/// Actual enum for CriteriaNotExistsBehavior
enum CriteriaNotExistsBehaviorBuilderEnum {
  /// test-passes
  testPasses,

  /// test-fails
  testFails,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case CriteriaNotExistsBehaviorBuilderEnum.testPasses:
        return 'test-passes';
      case CriteriaNotExistsBehaviorBuilderEnum.testFails:
        return 'test-fails';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static CriteriaNotExistsBehaviorBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return CriteriaNotExistsBehaviorBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static CriteriaNotExistsBehaviorBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'test-passes':
        return CriteriaNotExistsBehaviorBuilderEnum.testPasses;
      case 'test-fails':
        return CriteriaNotExistsBehaviorBuilderEnum.testFails;
    }
    return null;
  }
}

/// Behavior a server can exhibit when a criteria state does not exist
/// (e.g., state prior to a create or after a delete).
class CriteriaNotExistsBehaviorBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  CriteriaNotExistsBehaviorBuilder._({
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
  factory CriteriaNotExistsBehaviorBuilder(
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
    final valueEnum = CriteriaNotExistsBehaviorBuilderEnum.fromString(
      valueString,
    );
    return CriteriaNotExistsBehaviorBuilder._(
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

  /// Create empty [CriteriaNotExistsBehaviorBuilder]
  /// with element only
  factory CriteriaNotExistsBehaviorBuilder.empty() =>
      CriteriaNotExistsBehaviorBuilder._(valueString: null);

  /// Factory constructor to create
  /// [CriteriaNotExistsBehaviorBuilder] from JSON.
  factory CriteriaNotExistsBehaviorBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CriteriaNotExistsBehaviorBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'CriteriaNotExistsBehaviorBuilder cannot be constructed from JSON.',
      );
    }
    return CriteriaNotExistsBehaviorBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for CriteriaNotExistsBehaviorBuilder
  final CriteriaNotExistsBehaviorBuilderEnum? valueEnum;

  /// test_passes
  static CriteriaNotExistsBehaviorBuilder testPasses =
      CriteriaNotExistsBehaviorBuilder._(
    valueString: 'test-passes',
    valueEnum: CriteriaNotExistsBehaviorBuilderEnum.testPasses,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscriptiontopic-cr-behavior',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'test passes',
    ),
  );

  /// test_fails
  static CriteriaNotExistsBehaviorBuilder testFails =
      CriteriaNotExistsBehaviorBuilder._(
    valueString: 'test-fails',
    valueEnum: CriteriaNotExistsBehaviorBuilderEnum.testFails,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscriptiontopic-cr-behavior',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'test fails',
    ),
  );

  /// For instances where an Element is present but not value
  static CriteriaNotExistsBehaviorBuilder elementOnly =
      CriteriaNotExistsBehaviorBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<CriteriaNotExistsBehaviorBuilder> values = [
    testPasses,
    testFails,
  ];

  /// Returns the enum value with an element attached
  CriteriaNotExistsBehaviorBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return CriteriaNotExistsBehaviorBuilder._(
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
