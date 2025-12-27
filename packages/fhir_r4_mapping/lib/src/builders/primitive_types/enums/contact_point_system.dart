part of '../primitive_types.dart';

/// Actual enum for ContactPointSystem
enum ContactPointSystemBuilderEnum {
  /// phone
  phone,

  /// fax
  fax,

  /// email
  email,

  /// pager
  pager,

  /// url
  url,

  /// sms
  sms,

  /// other
  other,
  ;

  /// Converts the enum value to a string.
  String toJson() => toString();

  /// Returns the enum value as a string.
  @override
  String toString() {
    switch (this) {
      case ContactPointSystemBuilderEnum.phone:
        return 'phone';
      case ContactPointSystemBuilderEnum.fax:
        return 'fax';
      case ContactPointSystemBuilderEnum.email:
        return 'email';
      case ContactPointSystemBuilderEnum.pager:
        return 'pager';
      case ContactPointSystemBuilderEnum.url:
        return 'url';
      case ContactPointSystemBuilderEnum.sms:
        return 'sms';
      case ContactPointSystemBuilderEnum.other:
        return 'other';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ContactPointSystemBuilderEnum? fromJson(
    dynamic json,
  ) {
    if (json == null || json is! String) {
      return null;
    }
    return ContactPointSystemBuilderEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ContactPointSystemBuilderEnum? fromString(
    String? value,
  ) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'phone':
        return ContactPointSystemBuilderEnum.phone;
      case 'fax':
        return ContactPointSystemBuilderEnum.fax;
      case 'email':
        return ContactPointSystemBuilderEnum.email;
      case 'pager':
        return ContactPointSystemBuilderEnum.pager;
      case 'url':
        return ContactPointSystemBuilderEnum.url;
      case 'sms':
        return ContactPointSystemBuilderEnum.sms;
      case 'other':
        return ContactPointSystemBuilderEnum.other;
    }
    return null;
  }
}

/// Telecommunications form for contact point.
class ContactPointSystemBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ContactPointSystemBuilder._({
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
    final valueEnum = ContactPointSystemBuilderEnum.fromString(
      valueString,
    );
    return ContactPointSystemBuilder._(
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

  /// Create empty [ContactPointSystemBuilder]
  /// with element only
  factory ContactPointSystemBuilder.empty() =>
      ContactPointSystemBuilder._(valueString: null);

  /// Factory constructor to create
  /// [ContactPointSystemBuilder] from JSON.
  factory ContactPointSystemBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContactPointSystemBuilder._(
        valueString: null,
        element: element,
      );
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

  ///  An actual enum that can be used for ContactPointSystemBuilder
  final ContactPointSystemBuilderEnum? valueEnum;

  /// phone
  static ContactPointSystemBuilder phone = ContactPointSystemBuilder._(
    valueString: 'phone',
    valueEnum: ContactPointSystemBuilderEnum.phone,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/contact-point-system',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Phone',
    ),
  );

  /// fax
  static ContactPointSystemBuilder fax = ContactPointSystemBuilder._(
    valueString: 'fax',
    valueEnum: ContactPointSystemBuilderEnum.fax,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/contact-point-system',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Fax',
    ),
  );

  /// email
  static ContactPointSystemBuilder email = ContactPointSystemBuilder._(
    valueString: 'email',
    valueEnum: ContactPointSystemBuilderEnum.email,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/contact-point-system',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Email',
    ),
  );

  /// pager
  static ContactPointSystemBuilder pager = ContactPointSystemBuilder._(
    valueString: 'pager',
    valueEnum: ContactPointSystemBuilderEnum.pager,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/contact-point-system',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Pager',
    ),
  );

  /// url
  static ContactPointSystemBuilder url = ContactPointSystemBuilder._(
    valueString: 'url',
    valueEnum: ContactPointSystemBuilderEnum.url,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/contact-point-system',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'URL',
    ),
  );

  /// sms
  static ContactPointSystemBuilder sms = ContactPointSystemBuilder._(
    valueString: 'sms',
    valueEnum: ContactPointSystemBuilderEnum.sms,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/contact-point-system',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'SMS',
    ),
  );

  /// other
  static ContactPointSystemBuilder other = ContactPointSystemBuilder._(
    valueString: 'other',
    valueEnum: ContactPointSystemBuilderEnum.other,
    system: FhirUriBuilder._(
      valueString: 'http://hl7.org/fhir/ValueSet/contact-point-system',
    ),
    version: FhirStringBuilder._(valueString: '4.3.0'),
    display: FhirStringBuilder._(
      valueString: 'Other',
    ),
  );

  /// For instances where an Element is present but not value
  static ContactPointSystemBuilder elementOnly = ContactPointSystemBuilder._(
    valueString: null,
    element: ElementBuilder.empty(),
  );

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

  /// Returns the enum value with an element attached
  ContactPointSystemBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ContactPointSystemBuilder._(
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
