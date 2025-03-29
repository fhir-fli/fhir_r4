// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// How an entity was used in an activity.
class ProvenanceEntityRoleBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ProvenanceEntityRoleBuilder._({
    required super.validatedValue,
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
    String? raw, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCodeBuilder._validateCode(raw) : null;
    return ProvenanceEntityRoleBuilder._(
      validatedValue: validated,
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

  /// Create empty [ProvenanceEntityRoleBuilder] with element only
  factory ProvenanceEntityRoleBuilder.empty() =>
      ProvenanceEntityRoleBuilder._(validatedValue: '');

  /// Factory constructor to create [ProvenanceEntityRoleBuilder] from JSON.
  factory ProvenanceEntityRoleBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ProvenanceEntityRoleBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ProvenanceEntityRoleBuilder cannot be constructed from JSON.',
      );
    }
    return ProvenanceEntityRoleBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// derivation
  static ProvenanceEntityRoleBuilder derivation = ProvenanceEntityRoleBuilder._(
    validatedValue: 'derivation',
    system:
        'http://hl7.org/fhir/ValueSet/provenance-entity-role'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Derivation'.toFhirStringBuilder,
  );

  /// revision
  static ProvenanceEntityRoleBuilder revision = ProvenanceEntityRoleBuilder._(
    validatedValue: 'revision',
    system:
        'http://hl7.org/fhir/ValueSet/provenance-entity-role'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Revision'.toFhirStringBuilder,
  );

  /// quotation
  static ProvenanceEntityRoleBuilder quotation = ProvenanceEntityRoleBuilder._(
    validatedValue: 'quotation',
    system:
        'http://hl7.org/fhir/ValueSet/provenance-entity-role'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Quotation'.toFhirStringBuilder,
  );

  /// source
  static ProvenanceEntityRoleBuilder source = ProvenanceEntityRoleBuilder._(
    validatedValue: 'source',
    system:
        'http://hl7.org/fhir/ValueSet/provenance-entity-role'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Source'.toFhirStringBuilder,
  );

  /// removal
  static ProvenanceEntityRoleBuilder removal = ProvenanceEntityRoleBuilder._(
    validatedValue: 'removal',
    system:
        'http://hl7.org/fhir/ValueSet/provenance-entity-role'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Removal'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static ProvenanceEntityRoleBuilder elementOnly =
      ProvenanceEntityRoleBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<ProvenanceEntityRoleBuilder> values = [
    derivation,
    revision,
    quotation,
    source,
    removal,
  ];

  /// Clones the current instance
  @override
  ProvenanceEntityRoleBuilder clone() => ProvenanceEntityRoleBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  ProvenanceEntityRoleBuilder withElement(ElementBuilder? newElement) {
    return ProvenanceEntityRoleBuilder._(
        validatedValue: value, element: newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        'value': (value?.isEmpty ?? false) ? null : value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation
  @override
  String toString() => value ?? '';

  /// Creates a modified copy with updated properties.
  @override
  ProvenanceEntityRoleBuilder copyWith({
    String? newValue,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return ProvenanceEntityRoleBuilder._(
      validatedValue: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath,
    );
  }
}
