// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The type of link between this patient resource and another patient
/// resource.
class LinkTypeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  LinkTypeBuilder._({
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
  factory LinkTypeBuilder(
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
    return LinkTypeBuilder._(
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

  /// Create empty [LinkTypeBuilder] with element only
  factory LinkTypeBuilder.empty() => LinkTypeBuilder._(valueString: '');

  /// Factory constructor to create [LinkTypeBuilder]
  /// from JSON.
  factory LinkTypeBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return LinkTypeBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'LinkTypeBuilder cannot be constructed from JSON.',
      );
    }
    return LinkTypeBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// replaced_by
  static LinkTypeBuilder replaced_by = LinkTypeBuilder._(
    valueString: 'replaced-by',
    system: 'http://hl7.org/fhir/ValueSet/link-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Replaced-by'.toFhirStringBuilder,
  );

  /// replaces
  static LinkTypeBuilder replaces = LinkTypeBuilder._(
    valueString: 'replaces',
    system: 'http://hl7.org/fhir/ValueSet/link-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Replaces'.toFhirStringBuilder,
  );

  /// refer
  static LinkTypeBuilder refer = LinkTypeBuilder._(
    valueString: 'refer',
    system: 'http://hl7.org/fhir/ValueSet/link-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Refer'.toFhirStringBuilder,
  );

  /// seealso
  static LinkTypeBuilder seealso = LinkTypeBuilder._(
    valueString: 'seealso',
    system: 'http://hl7.org/fhir/ValueSet/link-type'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'See also'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static LinkTypeBuilder elementOnly = LinkTypeBuilder._(valueString: '');

  /// List of all enum-like values
  static List<LinkTypeBuilder> values = [
    replaced_by,
    replaces,
    refer,
    seealso,
  ];

  /// Clones the current instance
  @override
  LinkTypeBuilder clone() => LinkTypeBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  LinkTypeBuilder withElement(ElementBuilder? newElement) {
    return LinkTypeBuilder._(valueString: valueString, element: newElement);
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
  LinkTypeBuilder copyWith({
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
      throw ArgumentError('Invalid input for LinkType: $newValue');
    }
    return LinkTypeBuilder._(
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
