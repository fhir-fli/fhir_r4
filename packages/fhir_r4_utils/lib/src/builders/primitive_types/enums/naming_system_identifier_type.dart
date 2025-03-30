// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Identifies the style of unique identifier used to identify a namespace.
class NamingSystemIdentifierTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  NamingSystemIdentifierTypeBuilder._({
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
  factory NamingSystemIdentifierTypeBuilder(
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
    return NamingSystemIdentifierTypeBuilder._(
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

  /// Create empty [NamingSystemIdentifierTypeBuilder] with element only
  factory NamingSystemIdentifierTypeBuilder.empty() =>
      NamingSystemIdentifierTypeBuilder._(validatedValue: '');

  /// Factory constructor to create [NamingSystemIdentifierTypeBuilder]
  /// from JSON.
  factory NamingSystemIdentifierTypeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NamingSystemIdentifierTypeBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'NamingSystemIdentifierTypeBuilder cannot be constructed from JSON.',
      );
    }
    return NamingSystemIdentifierTypeBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// oid
  static NamingSystemIdentifierTypeBuilder oid =
      NamingSystemIdentifierTypeBuilder._(
    validatedValue: 'oid',
    system: 'http://hl7.org/fhir/ValueSet/namingsystem-identifier-type'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'OID'.toFhirStringBuilder,
  );

  /// uuid
  static NamingSystemIdentifierTypeBuilder uuid =
      NamingSystemIdentifierTypeBuilder._(
    validatedValue: 'uuid',
    system: 'http://hl7.org/fhir/ValueSet/namingsystem-identifier-type'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'UUID'.toFhirStringBuilder,
  );

  /// uri
  static NamingSystemIdentifierTypeBuilder uri =
      NamingSystemIdentifierTypeBuilder._(
    validatedValue: 'uri',
    system: 'http://hl7.org/fhir/ValueSet/namingsystem-identifier-type'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'URI'.toFhirStringBuilder,
  );

  /// other
  static NamingSystemIdentifierTypeBuilder other =
      NamingSystemIdentifierTypeBuilder._(
    validatedValue: 'other',
    system: 'http://hl7.org/fhir/ValueSet/namingsystem-identifier-type'
        .toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Other'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static NamingSystemIdentifierTypeBuilder elementOnly =
      NamingSystemIdentifierTypeBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<NamingSystemIdentifierTypeBuilder> values = [
    oid,
    uuid,
    uri,
    other,
  ];

  /// Clones the current instance
  @override
  NamingSystemIdentifierTypeBuilder clone() =>
      NamingSystemIdentifierTypeBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  NamingSystemIdentifierTypeBuilder withElement(ElementBuilder? newElement) {
    return NamingSystemIdentifierTypeBuilder._(
      validatedValue: value,
      element: newElement,
    );
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
  NamingSystemIdentifierTypeBuilder copyWith({
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
    return NamingSystemIdentifierTypeBuilder._(
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
