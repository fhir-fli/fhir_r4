// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Telecommunications form for contact point.
class ContactPointSystem extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  ContactPointSystem._({
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
  factory ContactPointSystem(
    String? rawValue, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCode._validateCode(rawValue) : null;
    return ContactPointSystem._(
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

  /// Create empty [ContactPointSystem] with element only
  factory ContactPointSystem.empty() => ContactPointSystem._(valueString: '');

  /// Factory constructor to create [ContactPointSystem] from JSON.
  factory ContactPointSystem.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ContactPointSystem.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ContactPointSystem cannot be constructed from JSON.',
      );
    }
    return ContactPointSystem._(
      valueString: value,
      element: element,
    );
  }

  /// phone
  static final ContactPointSystem phone = ContactPointSystem._(
    valueString: 'phone',
    system: 'http://hl7.org/fhir/ValueSet/contact-point-system'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Phone'.toFhirString,
  );

  /// fax
  static final ContactPointSystem fax = ContactPointSystem._(
    valueString: 'fax',
    system: 'http://hl7.org/fhir/ValueSet/contact-point-system'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Fax'.toFhirString,
  );

  /// email
  static final ContactPointSystem email = ContactPointSystem._(
    valueString: 'email',
    system: 'http://hl7.org/fhir/ValueSet/contact-point-system'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Email'.toFhirString,
  );

  /// pager
  static final ContactPointSystem pager = ContactPointSystem._(
    valueString: 'pager',
    system: 'http://hl7.org/fhir/ValueSet/contact-point-system'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Pager'.toFhirString,
  );

  /// url
  static final ContactPointSystem url = ContactPointSystem._(
    valueString: 'url',
    system: 'http://hl7.org/fhir/ValueSet/contact-point-system'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'URL'.toFhirString,
  );

  /// sms
  static final ContactPointSystem sms = ContactPointSystem._(
    valueString: 'sms',
    system: 'http://hl7.org/fhir/ValueSet/contact-point-system'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SMS'.toFhirString,
  );

  /// other
  static final ContactPointSystem other = ContactPointSystem._(
    valueString: 'other',
    system: 'http://hl7.org/fhir/ValueSet/contact-point-system'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Other'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final ContactPointSystem elementOnly =
      ContactPointSystem._(valueString: '');

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

  /// Clones the current instance
  @override
  ContactPointSystem clone() => ContactPointSystem._(
        valueString: valueString,
        element: element?.clone() as Element?,
      );

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

  /// Creates a modified copy with updated properties.
  @override
  ContactPointSystem copyWith({
    dynamic newValue,
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
    if (newValue is! String?) {
      throw ArgumentError('Invalid input for ContactPointSystem: $newValue');
    }
    return ContactPointSystem._(
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
