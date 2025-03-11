// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Used to distinguish different roles a resource can play within a set of
/// linked resources.
class LinkageType extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  LinkageType._({
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
  factory LinkageType(
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
    return LinkageType._(
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

  /// Create empty [LinkageType] with element only
  factory LinkageType.empty() => LinkageType._(validatedValue: '');

  /// Factory constructor to create [LinkageType] from JSON.
  factory LinkageType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return LinkageType.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError('LinkageType cannot be constructed from JSON.');
    }
    return LinkageType._(validatedValue: value, element: element);
  }

  /// source
  static final LinkageType source = LinkageType._(
    validatedValue: 'source',
    system: 'http://hl7.org/fhir/ValueSet/linkage-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Source of Truth'.toFhirString,
  );

  /// alternate
  static final LinkageType alternate = LinkageType._(
    validatedValue: 'alternate',
    system: 'http://hl7.org/fhir/ValueSet/linkage-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Alternate Record'.toFhirString,
  );

  /// historical
  static final LinkageType historical = LinkageType._(
    validatedValue: 'historical',
    system: 'http://hl7.org/fhir/ValueSet/linkage-type'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Historical/Obsolete Record'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final LinkageType elementOnly = LinkageType._(validatedValue: '');

  /// List of all enum-like values
  static final List<LinkageType> values = [
    source,
    alternate,
    historical,
  ];

  /// Clones the current instance
  @override
  LinkageType clone() => LinkageType._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  LinkageType withElement(Element? newElement) {
    return LinkageType._(validatedValue: value, element: newElement);
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
  LinkageType copyWith({
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
    return LinkageType._(
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
