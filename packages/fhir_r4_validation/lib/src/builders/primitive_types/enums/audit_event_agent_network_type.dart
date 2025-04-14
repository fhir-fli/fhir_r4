// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for AuditEventAgentNetworkType
enum AuditEventAgentNetworkTypeBuilderEnum {
  /// 1
  value1,

  /// 2
  value2,

  /// 3
  value3,

  /// 4
  value4,

  /// 5
  value5,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case AuditEventAgentNetworkTypeBuilderEnum.value1:
        return '1';
      case AuditEventAgentNetworkTypeBuilderEnum.value2:
        return '2';
      case AuditEventAgentNetworkTypeBuilderEnum.value3:
        return '3';
      case AuditEventAgentNetworkTypeBuilderEnum.value4:
        return '4';
      case AuditEventAgentNetworkTypeBuilderEnum.value5:
        return '5';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static AuditEventAgentNetworkTypeBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return AuditEventAgentNetworkTypeBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static AuditEventAgentNetworkTypeBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case '1':
        return AuditEventAgentNetworkTypeBuilderEnum.value1;
      case '2':
        return AuditEventAgentNetworkTypeBuilderEnum.value2;
      case '3':
        return AuditEventAgentNetworkTypeBuilderEnum.value3;
      case '4':
        return AuditEventAgentNetworkTypeBuilderEnum.value4;
      case '5':
        return AuditEventAgentNetworkTypeBuilderEnum.value5;
    }
    return null;
  }
}

/// The type of network access point of this agent in the audit event.
class AuditEventAgentNetworkTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  AuditEventAgentNetworkTypeBuilder._({
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
  factory AuditEventAgentNetworkTypeBuilder(
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
    final valueEnum = AuditEventAgentNetworkTypeBuilderEnum.fromString(
      valueString,
    );
    return AuditEventAgentNetworkTypeBuilder._(
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

  /// Create empty [AuditEventAgentNetworkTypeBuilder]
  /// with element only
  factory AuditEventAgentNetworkTypeBuilder.empty() =>
      AuditEventAgentNetworkTypeBuilder._(valueString: null);

  /// Factory constructor to create
  /// [AuditEventAgentNetworkTypeBuilder] from JSON.
  factory AuditEventAgentNetworkTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return AuditEventAgentNetworkTypeBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'AuditEventAgentNetworkTypeBuilder cannot be constructed from JSON.',
      );
    }
    return AuditEventAgentNetworkTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for AuditEventAgentNetworkTypeBuilder
  final AuditEventAgentNetworkTypeBuilderEnum? valueEnum;

  /// value1
  static AuditEventAgentNetworkTypeBuilder value1 =
      AuditEventAgentNetworkTypeBuilder._(
    valueString: '1',
    valueEnum: AuditEventAgentNetworkTypeBuilderEnum.value1,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/network-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Machine Name',
    ),
  );

  /// value2
  static AuditEventAgentNetworkTypeBuilder value2 =
      AuditEventAgentNetworkTypeBuilder._(
    valueString: '2',
    valueEnum: AuditEventAgentNetworkTypeBuilderEnum.value2,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/network-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'IP Address',
    ),
  );

  /// value3
  static AuditEventAgentNetworkTypeBuilder value3 =
      AuditEventAgentNetworkTypeBuilder._(
    valueString: '3',
    valueEnum: AuditEventAgentNetworkTypeBuilderEnum.value3,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/network-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Telephone Number',
    ),
  );

  /// value4
  static AuditEventAgentNetworkTypeBuilder value4 =
      AuditEventAgentNetworkTypeBuilder._(
    valueString: '4',
    valueEnum: AuditEventAgentNetworkTypeBuilderEnum.value4,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/network-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Email address',
    ),
  );

  /// value5
  static AuditEventAgentNetworkTypeBuilder value5 =
      AuditEventAgentNetworkTypeBuilder._(
    valueString: '5',
    valueEnum: AuditEventAgentNetworkTypeBuilderEnum.value5,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/network-type',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'URI',
    ),
  );

  /// For instances where an Element is present but not value
  static AuditEventAgentNetworkTypeBuilder elementOnly =
      AuditEventAgentNetworkTypeBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<AuditEventAgentNetworkTypeBuilder> values = [
    value1,
    value2,
    value3,
    value4,
    value5,
  ];

  /// Returns the enum value with an element attached
  AuditEventAgentNetworkTypeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return AuditEventAgentNetworkTypeBuilder._(
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
