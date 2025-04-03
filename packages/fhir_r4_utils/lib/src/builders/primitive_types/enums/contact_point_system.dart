// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Telecommunications form for contact point.
class ContactPointSystemBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ContactPointSystemBuilder._({
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
  factory ContactPointSystemBuilder(
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
    return ContactPointSystemBuilder._(
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

  /// Create empty [ContactPointSystemBuilder] with element only
  factory ContactPointSystemBuilder.empty() =>
      ContactPointSystemBuilder._(valueString: '');

  /// Factory constructor to create [ContactPointSystemBuilder]
  /// from JSON.
  factory ContactPointSystemBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContactPointSystemBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ContactPointSystemBuilder cannot be constructed from JSON.',
      );
    }
    return ContactPointSystemBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// phone
  static ContactPointSystemBuilder phone = ContactPointSystemBuilder._(
    valueString: 'phone',
    system:
        'http://hl7.org/fhir/ValueSet/contact-point-system'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Phone'.toFhirStringBuilder,
  );

  /// fax
  static ContactPointSystemBuilder fax = ContactPointSystemBuilder._(
    valueString: 'fax',
    system:
        'http://hl7.org/fhir/ValueSet/contact-point-system'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Fax'.toFhirStringBuilder,
  );

  /// email
  static ContactPointSystemBuilder email = ContactPointSystemBuilder._(
    valueString: 'email',
    system:
        'http://hl7.org/fhir/ValueSet/contact-point-system'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Email'.toFhirStringBuilder,
  );

  /// pager
  static ContactPointSystemBuilder pager = ContactPointSystemBuilder._(
    valueString: 'pager',
    system:
        'http://hl7.org/fhir/ValueSet/contact-point-system'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Pager'.toFhirStringBuilder,
  );

  /// url
  static ContactPointSystemBuilder url = ContactPointSystemBuilder._(
    valueString: 'url',
    system:
        'http://hl7.org/fhir/ValueSet/contact-point-system'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'URL'.toFhirStringBuilder,
  );

  /// sms
  static ContactPointSystemBuilder sms = ContactPointSystemBuilder._(
    valueString: 'sms',
    system:
        'http://hl7.org/fhir/ValueSet/contact-point-system'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'SMS'.toFhirStringBuilder,
  );

  /// other
  static ContactPointSystemBuilder other = ContactPointSystemBuilder._(
    valueString: 'other',
    system:
        'http://hl7.org/fhir/ValueSet/contact-point-system'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Other'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static ContactPointSystemBuilder elementOnly =
      ContactPointSystemBuilder._(valueString: '');

  /// List of all enum-like values
  static List<ContactPointSystemBuilder> values = [
    phone,
    fax,
    email,
    pager,
    url,
    sms,
    other,
  ];

  /// Clones the current instance
  @override
  ContactPointSystemBuilder clone() => ContactPointSystemBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  ContactPointSystemBuilder withElement(ElementBuilder? newElement) {
    return ContactPointSystemBuilder._(
        valueString: valueString, element: newElement,);
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
  ContactPointSystemBuilder copyWith({
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
      throw ArgumentError('Invalid input for ContactPointSystem: $newValue');
    }
    return ContactPointSystemBuilder._(
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
