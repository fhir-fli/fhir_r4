part of '../primitive_types.dart';

/// Actual enum for ContactPointSystem
enum ContactPointSystemEnum {
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
      case ContactPointSystemEnum.phone:
        return 'phone';
      case ContactPointSystemEnum.fax:
        return 'fax';
      case ContactPointSystemEnum.email:
        return 'email';
      case ContactPointSystemEnum.pager:
        return 'pager';
      case ContactPointSystemEnum.url:
        return 'url';
      case ContactPointSystemEnum.sms:
        return 'sms';
      case ContactPointSystemEnum.other:
        return 'other';
    }
  }

  /// Converts a string/JSON value to the corresponding enum value.
  static ContactPointSystemEnum? fromJson(dynamic json) {
    if (json == null || json is! String) {
      return null;
    }
    return ContactPointSystemEnum.fromString(json);
  }

  /// Converts a string to the corresponding enum value.
  static ContactPointSystemEnum? fromString(String? value) {
    if (value == null) {
      return null;
    }
    switch (value) {
      case 'phone':
        return ContactPointSystemEnum.phone;
      case 'fax':
        return ContactPointSystemEnum.fax;
      case 'email':
        return ContactPointSystemEnum.email;
      case 'pager':
        return ContactPointSystemEnum.pager;
      case 'url':
        return ContactPointSystemEnum.url;
      case 'sms':
        return ContactPointSystemEnum.sms;
      case 'other':
        return ContactPointSystemEnum.other;
    }
    return null;
  }
}

/// Telecommunications form for contact point.
class ContactPointSystem extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  const ContactPointSystem._({
    required super.valueString,
    this.valueEnum,
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
  }) : super._();

  /// Public factory if you want a fallback approach or custom creation.
  // ignore: sort_unnamed_constructors_first
  factory ContactPointSystem(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    final valueEnum = ContactPointSystemEnum.fromString(valueString);
    return ContactPointSystem._(
      valueString: valueString,
      valueEnum: valueEnum,
      system: system,
      version: version,
      display: display,
      element: element,
      id: id,
      extension_: extension_,
      disallowExtensions: disallowExtensions,
    );
  }

  /// Factory constructor to create [ContactPointSystem]
  /// from JSON.
  factory ContactPointSystem.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final valueEnum = ContactPointSystemEnum.fromString(value);
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContactPointSystem._(valueString: null, element: element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ContactPointSystem cannot be constructed from JSON.',
      );
    }
    return ContactPointSystem._(
      valueString: value,
      valueEnum: valueEnum,
      element: element,
    );
  }

  /// An actual enum that can be used for ContactPointSystem
  final ContactPointSystemEnum? valueEnum;

  /// phone
  static const ContactPointSystem phone = ContactPointSystem._(
    valueString: 'phone',
    valueEnum: ContactPointSystemEnum.phone,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/contact-point-system',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Phone',
    ),
  );

  /// fax
  static const ContactPointSystem fax = ContactPointSystem._(
    valueString: 'fax',
    valueEnum: ContactPointSystemEnum.fax,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/contact-point-system',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Fax',
    ),
  );

  /// email
  static const ContactPointSystem email = ContactPointSystem._(
    valueString: 'email',
    valueEnum: ContactPointSystemEnum.email,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/contact-point-system',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Email',
    ),
  );

  /// pager
  static const ContactPointSystem pager = ContactPointSystem._(
    valueString: 'pager',
    valueEnum: ContactPointSystemEnum.pager,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/contact-point-system',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Pager',
    ),
  );

  /// url
  static const ContactPointSystem url = ContactPointSystem._(
    valueString: 'url',
    valueEnum: ContactPointSystemEnum.url,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/contact-point-system',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'URL',
    ),
  );

  /// sms
  static const ContactPointSystem sms = ContactPointSystem._(
    valueString: 'sms',
    valueEnum: ContactPointSystemEnum.sms,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/contact-point-system',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'SMS',
    ),
  );

  /// other
  static const ContactPointSystem other = ContactPointSystem._(
    valueString: 'other',
    valueEnum: ContactPointSystemEnum.other,
    system: FhirUri._(
      valueString: 'http://hl7.org/fhir/ValueSet/contact-point-system',
    ),
    version: FhirString._(valueString: '4.3.0'),
    display: FhirString._(
      valueString: 'Other',
    ),
  );

  /// List of all enum-like values
  static final List<ContactPointSystem> values = [
    phone,
    fax,
    email,
    pager,
    url,
    sms,
    other,
  ];

  /// Returns the enum value with an element attached
  ContactPointSystem withElement(Element? newElement) {
    return ContactPointSystem._(
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

  @override
  ContactPointSystem clone() => copyWith();

  /// Creates a new instance with the specified fields replaced.
  @override
  ContactPointSystemCopyWithImpl<ContactPointSystem> get copyWith =>
      ContactPointSystemCopyWithImpl<ContactPointSystem>(
        this,
        (v) => v as ContactPointSystem,
      );
}

/// The generated implementation of the copyWith helper for Element.
/// The call method uses parameters of type Object? with a default value of
/// [fhirSentinel] so that omitted parameters retain the sentinel value while
/// explicit nulls do not.
class ContactPointSystemCopyWithImpl<T> extends $FhirCodeCopyWithImpl<T> {
  /// Constructor for the copyWith implementation.
  ContactPointSystemCopyWithImpl(super._value, super._then);

  @override
  T call({
    Object? newValue = fhirSentinel,
    Object? element = fhirSentinel,
    Object? id = fhirSentinel,
    Object? extension_ = fhirSentinel,
    Object? disallowExtensions = fhirSentinel,
  }) {
    if (!identical(newValue, fhirSentinel) && newValue is! String?) {
      throw ArgumentError(
        'newValue must be a String or null, but found ${newValue.runtimeType}',
        'newValue',
      );
    }
    return _then(
      ContactPointSystem(
        identical(newValue, fhirSentinel)
            ? _value.valueString
            : newValue as String?,
        element: identical(element, fhirSentinel)
            ? _value.element
            : element as Element?,
        id: identical(id, fhirSentinel) ? _value.id : id as FhirString?,
        extension_: identical(extension_, fhirSentinel)
            ? _value.extension_
            : extension_ as List<FhirExtension>?,
        disallowExtensions: identical(disallowExtensions, fhirSentinel)
            ? _value.disallowExtensions
            : disallowExtensions as bool?,
      ),
    );
  }
}
