part of '../primitive_types.dart';

/// Actual enum for ConditionalReadStatus
enum ConditionalReadStatusBuilderEnum {
  /// not-supported
  notSupported,

  /// modified-since
  modifiedSince,

  /// not-match
  notMatch,

  /// full-support
  fullSupport,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ConditionalReadStatusBuilderEnum.notSupported:
        return 'not-supported';
      case ConditionalReadStatusBuilderEnum.modifiedSince:
        return 'modified-since';
      case ConditionalReadStatusBuilderEnum.notMatch:
        return 'not-match';
      case ConditionalReadStatusBuilderEnum.fullSupport:
        return 'full-support';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ConditionalReadStatusBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ConditionalReadStatusBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ConditionalReadStatusBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'not-supported':
        return ConditionalReadStatusBuilderEnum.notSupported;
      case 'modified-since':
        return ConditionalReadStatusBuilderEnum.modifiedSince;
      case 'not-match':
        return ConditionalReadStatusBuilderEnum.notMatch;
      case 'full-support':
        return ConditionalReadStatusBuilderEnum.fullSupport;
    }
    return null;
  }
}

/// A code that indicates how the server supports conditional read.
class ConditionalReadStatusBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ConditionalReadStatusBuilder._({
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
  factory ConditionalReadStatusBuilder(
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
    final valueEnum = ConditionalReadStatusBuilderEnum.fromString(
      valueString,
    );
    return ConditionalReadStatusBuilder._(
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

  /// Create empty [ConditionalReadStatusBuilder]
  /// with element only
  factory ConditionalReadStatusBuilder.empty() =>
      ConditionalReadStatusBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ConditionalReadStatusBuilder] from JSON.
  factory ConditionalReadStatusBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ConditionalReadStatusBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ConditionalReadStatusBuilder cannot be constructed from JSON.',
      );
    }
    return ConditionalReadStatusBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ConditionalReadStatusBuilder
  final ConditionalReadStatusBuilderEnum? valueEnum;

  /// not_supported
  static ConditionalReadStatusBuilder notSupported =
      ConditionalReadStatusBuilder._(
    valueString: 'not-supported',
    valueEnum: ConditionalReadStatusBuilderEnum.notSupported,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/conditional-read-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Not Supported',
    ),
  );

  /// modified_since
  static ConditionalReadStatusBuilder modifiedSince =
      ConditionalReadStatusBuilder._(
    valueString: 'modified-since',
    valueEnum: ConditionalReadStatusBuilderEnum.modifiedSince,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/conditional-read-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'If-Modified-Since',
    ),
  );

  /// not_match
  static ConditionalReadStatusBuilder notMatch = ConditionalReadStatusBuilder._(
    valueString: 'not-match',
    valueEnum: ConditionalReadStatusBuilderEnum.notMatch,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/conditional-read-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'If-None-Match',
    ),
  );

  /// full_support
  static ConditionalReadStatusBuilder fullSupport =
      ConditionalReadStatusBuilder._(
    valueString: 'full-support',
    valueEnum: ConditionalReadStatusBuilderEnum.fullSupport,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/conditional-read-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Full Support',
    ),
  );

  /// For instances where an Element is present but not value
  static ConditionalReadStatusBuilder elementOnly =
      ConditionalReadStatusBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ConditionalReadStatusBuilder> values = [
    notSupported,
    modifiedSince,
    notMatch,
    fullSupport,
  ];

  /// Returns the enum value with an element attached
  ConditionalReadStatusBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ConditionalReadStatusBuilder._(
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
