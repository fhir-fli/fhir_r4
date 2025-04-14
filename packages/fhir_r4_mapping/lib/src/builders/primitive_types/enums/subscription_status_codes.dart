// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for SubscriptionStatusCodes
enum SubscriptionStatusCodesBuilderEnum {
  /// requested
  requested,

  /// active
  active,

  /// error
  error,

  /// off
  off,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case SubscriptionStatusCodesBuilderEnum.requested:
        return 'requested';
      case SubscriptionStatusCodesBuilderEnum.active:
        return 'active';
      case SubscriptionStatusCodesBuilderEnum.error:
        return 'error';
      case SubscriptionStatusCodesBuilderEnum.off:
        return 'off';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static SubscriptionStatusCodesBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return SubscriptionStatusCodesBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static SubscriptionStatusCodesBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'requested':
        return SubscriptionStatusCodesBuilderEnum.requested;
      case 'active':
        return SubscriptionStatusCodesBuilderEnum.active;
      case 'error':
        return SubscriptionStatusCodesBuilderEnum.error;
      case 'off':
        return SubscriptionStatusCodesBuilderEnum.off;
    }
    return null;
  }
}

/// The status of a subscription.
class SubscriptionStatusCodesBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  SubscriptionStatusCodesBuilder._({
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
  factory SubscriptionStatusCodesBuilder(
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
    final valueEnum = SubscriptionStatusCodesBuilderEnum.fromString(
      valueString,
    );
    return SubscriptionStatusCodesBuilder._(
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

  /// Create empty [SubscriptionStatusCodesBuilder]
  /// with element only
  factory SubscriptionStatusCodesBuilder.empty() =>
      SubscriptionStatusCodesBuilder._(valueString: null);

  /// Factory constructor to create
  /// [SubscriptionStatusCodesBuilder] from JSON.
  factory SubscriptionStatusCodesBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubscriptionStatusCodesBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'SubscriptionStatusCodesBuilder cannot be constructed from JSON.',
      );
    }
    return SubscriptionStatusCodesBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for SubscriptionStatusCodesBuilder
  final SubscriptionStatusCodesBuilderEnum? valueEnum;

  /// requested
  static SubscriptionStatusCodesBuilder requested =
      SubscriptionStatusCodesBuilder._(
    valueString: 'requested',
    valueEnum: SubscriptionStatusCodesBuilderEnum.requested,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscription-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Requested',
    ),
  );

  /// active
  static SubscriptionStatusCodesBuilder active =
      SubscriptionStatusCodesBuilder._(
    valueString: 'active',
    valueEnum: SubscriptionStatusCodesBuilderEnum.active,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscription-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Active',
    ),
  );

  /// error
  static SubscriptionStatusCodesBuilder error =
      SubscriptionStatusCodesBuilder._(
    valueString: 'error',
    valueEnum: SubscriptionStatusCodesBuilderEnum.error,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscription-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Error',
    ),
  );

  /// off
  static SubscriptionStatusCodesBuilder off = SubscriptionStatusCodesBuilder._(
    valueString: 'off',
    valueEnum: SubscriptionStatusCodesBuilderEnum.off,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/subscription-status',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Off',
    ),
  );

  /// For instances where an Element is present but not value
  static SubscriptionStatusCodesBuilder elementOnly =
      SubscriptionStatusCodesBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<SubscriptionStatusCodesBuilder> values = [
    requested,
    active,
    error,
    off,
  ];

  /// Returns the enum value with an element attached
  SubscriptionStatusCodesBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return SubscriptionStatusCodesBuilder._(
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
