// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Used to distinguish different roles a resource can play within a set of
/// linked resources.
class LinkageTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  LinkageTypeBuilder._({
    required super.valueString,
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
  factory LinkageTypeBuilder(
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
    return LinkageTypeBuilder._(
      valueString: valueString,
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

  /// Create empty [LinkageTypeBuilder] with element only
  factory LinkageTypeBuilder.empty() => LinkageTypeBuilder._(valueString: '');

  /// Factory constructor to create [LinkageTypeBuilder]
  /// from JSON.
  factory LinkageTypeBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return LinkageTypeBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'LinkageTypeBuilder cannot be constructed from JSON.',
      );
    }
    return LinkageTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// source
  static LinkageTypeBuilder source = LinkageTypeBuilder._(
    valueString: 'source',
    system: 'http://hl7.org/fhir/ValueSet/linkage-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Source of Truth'.toFhirStringBuilder,
  );

  /// alternate
  static LinkageTypeBuilder alternate = LinkageTypeBuilder._(
    valueString: 'alternate',
    system: 'http://hl7.org/fhir/ValueSet/linkage-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Alternate Record'.toFhirStringBuilder,
  );

  /// historical
  static LinkageTypeBuilder historical = LinkageTypeBuilder._(
    valueString: 'historical',
    system: 'http://hl7.org/fhir/ValueSet/linkage-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Historical/Obsolete Record'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static LinkageTypeBuilder elementOnly = LinkageTypeBuilder._(valueString: '');

  /// List of all enum-like values
  static List<LinkageTypeBuilder> values = [
    source,
    alternate,
    historical,
  ];

  /// Clones the current instance
  @override
  LinkageTypeBuilder clone() => LinkageTypeBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  LinkageTypeBuilder withElement(ElementBuilder? newElement) {
    return LinkageTypeBuilder._(valueString: valueString, element: newElement);
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

  /// Creates a modified copy with updated properties.
  @override
  LinkageTypeBuilder copyWith({
    dynamic newValue,
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
    if (newValue is! String?) {
      throw ArgumentError('Invalid input for LinkageType: $newValue');
    }
    return LinkageTypeBuilder._(
      valueString: newValue ?? valueString,
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
