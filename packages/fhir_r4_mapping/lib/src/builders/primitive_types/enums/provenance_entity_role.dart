// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Actual enum for ProvenanceEntityRole
enum ProvenanceEntityRoleBuilderEnum {
  /// derivation
  derivation,

  /// revision
  revision,

  /// quotation
  quotation,

  /// source
  source,

  /// removal
  removal,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ProvenanceEntityRoleBuilderEnum.derivation:
        return 'derivation';
      case ProvenanceEntityRoleBuilderEnum.revision:
        return 'revision';
      case ProvenanceEntityRoleBuilderEnum.quotation:
        return 'quotation';
      case ProvenanceEntityRoleBuilderEnum.source:
        return 'source';
      case ProvenanceEntityRoleBuilderEnum.removal:
        return 'removal';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ProvenanceEntityRoleBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ProvenanceEntityRoleBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ProvenanceEntityRoleBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'derivation':
        return ProvenanceEntityRoleBuilderEnum.derivation;
      case 'revision':
        return ProvenanceEntityRoleBuilderEnum.revision;
      case 'quotation':
        return ProvenanceEntityRoleBuilderEnum.quotation;
      case 'source':
        return ProvenanceEntityRoleBuilderEnum.source;
      case 'removal':
        return ProvenanceEntityRoleBuilderEnum.removal;
    }
    return null;
  }
}

/// How an entity was used in an activity.
class ProvenanceEntityRoleBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ProvenanceEntityRoleBuilder._({
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
  factory ProvenanceEntityRoleBuilder(
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
    final valueEnum = ProvenanceEntityRoleBuilderEnum.fromString(
      valueString,
    );
    return ProvenanceEntityRoleBuilder._(
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

  /// Create empty [ProvenanceEntityRoleBuilder]
  /// with element only
  factory ProvenanceEntityRoleBuilder.empty() =>
      ProvenanceEntityRoleBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ProvenanceEntityRoleBuilder] from JSON.
  factory ProvenanceEntityRoleBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProvenanceEntityRoleBuilder._(
        valueString: null,
        element: element,
      );
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ProvenanceEntityRoleBuilder cannot be constructed from JSON.',
      );
    }
    return ProvenanceEntityRoleBuilder._(
      valueString: value,
      element: element,
    );
  }

  ///  An actual enum that can be used for ProvenanceEntityRoleBuilder
  final ProvenanceEntityRoleBuilderEnum? valueEnum;

  /// derivation
  static ProvenanceEntityRoleBuilder derivation = ProvenanceEntityRoleBuilder._(
    valueString: 'derivation',
    valueEnum: ProvenanceEntityRoleBuilderEnum.derivation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/provenance-entity-role',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Derivation',
    ),
  );

  /// revision
  static ProvenanceEntityRoleBuilder revision = ProvenanceEntityRoleBuilder._(
    valueString: 'revision',
    valueEnum: ProvenanceEntityRoleBuilderEnum.revision,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/provenance-entity-role',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Revision',
    ),
  );

  /// quotation
  static ProvenanceEntityRoleBuilder quotation = ProvenanceEntityRoleBuilder._(
    valueString: 'quotation',
    valueEnum: ProvenanceEntityRoleBuilderEnum.quotation,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/provenance-entity-role',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Quotation',
    ),
  );

  /// source
  static ProvenanceEntityRoleBuilder source = ProvenanceEntityRoleBuilder._(
    valueString: 'source',
    valueEnum: ProvenanceEntityRoleBuilderEnum.source,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/provenance-entity-role',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Source',
    ),
  );

  /// removal
  static ProvenanceEntityRoleBuilder removal = ProvenanceEntityRoleBuilder._(
    valueString: 'removal',
    valueEnum: ProvenanceEntityRoleBuilderEnum.removal,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/provenance-entity-role',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Removal',
    ),
  );

  /// For instances where an Element is present but not value
  static ProvenanceEntityRoleBuilder elementOnly =
      ProvenanceEntityRoleBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

  /// List of all enum-like values
  static List<ProvenanceEntityRoleBuilder> values = [
    derivation,
    revision,
    quotation,
    source,
    removal,
  ];

  /// Returns the enum value with an element attached
  ProvenanceEntityRoleBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ProvenanceEntityRoleBuilder._(
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
