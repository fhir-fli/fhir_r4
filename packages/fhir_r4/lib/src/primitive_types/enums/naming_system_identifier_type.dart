// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Identifies the style of unique identifier used to identify a namespace.
class NamingSystemIdentifierType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  NamingSystemIdentifierType._({
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
  factory NamingSystemIdentifierType(
    String? raw, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCode._validateCode(raw) : null;
    return NamingSystemIdentifierType._(
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

  /// Create empty [NamingSystemIdentifierType] with element only
  factory NamingSystemIdentifierType.empty() =>
      NamingSystemIdentifierType._(validatedValue: '');

  /// Factory constructor to create [NamingSystemIdentifierType] from JSON.
  factory NamingSystemIdentifierType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return NamingSystemIdentifierType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
          'NamingSystemIdentifierType cannot be constructed from JSON.',);
    }
    return NamingSystemIdentifierType._(
        validatedValue: value, element: element,);
  }

  /// oid
  static final NamingSystemIdentifierType oid = NamingSystemIdentifierType._(
    validatedValue: 'oid',
    system:
        'http://hl7.org/fhir/ValueSet/namingsystem-identifier-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'OID'.toFhirString,
  );

  /// uuid
  static final NamingSystemIdentifierType uuid = NamingSystemIdentifierType._(
    validatedValue: 'uuid',
    system:
        'http://hl7.org/fhir/ValueSet/namingsystem-identifier-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'UUID'.toFhirString,
  );

  /// uri
  static final NamingSystemIdentifierType uri = NamingSystemIdentifierType._(
    validatedValue: 'uri',
    system:
        'http://hl7.org/fhir/ValueSet/namingsystem-identifier-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'URI'.toFhirString,
  );

  /// other
  static final NamingSystemIdentifierType other = NamingSystemIdentifierType._(
    validatedValue: 'other',
    system:
        'http://hl7.org/fhir/ValueSet/namingsystem-identifier-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Other'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final NamingSystemIdentifierType elementOnly =
      NamingSystemIdentifierType._(validatedValue: '');

  /// List of all enum-like values
  static final List<NamingSystemIdentifierType> values = [
    oid,
    uuid,
    uri,
    other,
  ];

  /// Clones the current instance
  @override
  NamingSystemIdentifierType clone() => NamingSystemIdentifierType._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  NamingSystemIdentifierType withElement(Element? newElement) {
    return NamingSystemIdentifierType._(
        validatedValue: value, element: newElement,);
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
  NamingSystemIdentifierType copyWith({
    String? newValue,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
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
    return NamingSystemIdentifierType._(
      validatedValue: newValue ?? value,
      element: (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
      ),
      disallowExtensions: disallowExtensions ?? this.disallowExtensions,
      objectPath: objectPath ?? this.objectPath!,
    );
  }
}
