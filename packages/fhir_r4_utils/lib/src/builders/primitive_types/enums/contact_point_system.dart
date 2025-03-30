// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Telecommunications form for contact point.
class ContactPointSystemBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ContactPointSystemBuilder._({
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
  factory ContactPointSystemBuilder(
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
    return ContactPointSystemBuilder._(
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

  /// Create empty [ContactPointSystemBuilder] with element only
  factory ContactPointSystemBuilder.empty() =>
      ContactPointSystemBuilder._(validatedValue: '');

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
      validatedValue: value,
      element: element,
    );
  }

  /// phone
  static ContactPointSystemBuilder phone = ContactPointSystemBuilder._(
    validatedValue: 'phone',
    system:
        'http://hl7.org/fhir/ValueSet/contact-point-system'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Phone'.toFhirStringBuilder,
  );

  /// fax
  static ContactPointSystemBuilder fax = ContactPointSystemBuilder._(
    validatedValue: 'fax',
    system:
        'http://hl7.org/fhir/ValueSet/contact-point-system'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Fax'.toFhirStringBuilder,
  );

  /// email
  static ContactPointSystemBuilder email = ContactPointSystemBuilder._(
    validatedValue: 'email',
    system:
        'http://hl7.org/fhir/ValueSet/contact-point-system'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Email'.toFhirStringBuilder,
  );

  /// pager
  static ContactPointSystemBuilder pager = ContactPointSystemBuilder._(
    validatedValue: 'pager',
    system:
        'http://hl7.org/fhir/ValueSet/contact-point-system'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Pager'.toFhirStringBuilder,
  );

  /// url
  static ContactPointSystemBuilder url = ContactPointSystemBuilder._(
    validatedValue: 'url',
    system:
        'http://hl7.org/fhir/ValueSet/contact-point-system'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'URL'.toFhirStringBuilder,
  );

  /// sms
  static ContactPointSystemBuilder sms = ContactPointSystemBuilder._(
    validatedValue: 'sms',
    system:
        'http://hl7.org/fhir/ValueSet/contact-point-system'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'SMS'.toFhirStringBuilder,
  );

  /// other
  static ContactPointSystemBuilder other = ContactPointSystemBuilder._(
    validatedValue: 'other',
    system:
        'http://hl7.org/fhir/ValueSet/contact-point-system'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Other'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static ContactPointSystemBuilder elementOnly =
      ContactPointSystemBuilder._(validatedValue: '');

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
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  ContactPointSystemBuilder withElement(ElementBuilder? newElement) {
    return ContactPointSystemBuilder._(
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
  ContactPointSystemBuilder copyWith({
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
    return ContactPointSystemBuilder._(
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
