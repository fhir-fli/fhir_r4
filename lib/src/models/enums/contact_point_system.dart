// ignore_for_file: unused_element_parameter, non_constant_identifier_names

import 'package:fhir_r4/fhir_r4.dart';

/// Telecommunications form for contact point.
class ContactPointSystem extends FhirCodeEnum {
  // Private constructor for internal use (like enum)
  ContactPointSystem._(
    super.value, {
    super.system,
    super.version,
    super.display,
    super.element,
    super.id,
    super.extension_,
    super.disallowExtensions,
    super.objectPath = 'Code',
  });

  /// Create empty [ContactPointSystem] with element only
  factory ContactPointSystem.empty() => ContactPointSystem._('');

  /// Factory constructor to create [ContactPointSystem] from JSON.
  factory ContactPointSystem.fromJson(
    Map<String, dynamic> json,
  ) {
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
      value,
      element: element,
    );
  }

  /// phone
  static final ContactPointSystem phone = ContactPointSystem._(
    'phone',
    system: 'http://hl7.org/fhir/ValueSet/contact-point-system'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Phone'.toFhirString,
  );

  /// fax
  static final ContactPointSystem fax = ContactPointSystem._(
    'fax',
    system: 'http://hl7.org/fhir/ValueSet/contact-point-system'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Fax'.toFhirString,
  );

  /// email
  static final ContactPointSystem email = ContactPointSystem._(
    'email',
    system: 'http://hl7.org/fhir/ValueSet/contact-point-system'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Email'.toFhirString,
  );

  /// pager
  static final ContactPointSystem pager = ContactPointSystem._(
    'pager',
    system: 'http://hl7.org/fhir/ValueSet/contact-point-system'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Pager'.toFhirString,
  );

  /// url
  static final ContactPointSystem url = ContactPointSystem._(
    'url',
    system: 'http://hl7.org/fhir/ValueSet/contact-point-system'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'URL'.toFhirString,
  );

  /// sms
  static final ContactPointSystem sms = ContactPointSystem._(
    'sms',
    system: 'http://hl7.org/fhir/ValueSet/contact-point-system'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'SMS'.toFhirString,
  );

  /// other
  static final ContactPointSystem other = ContactPointSystem._(
    'other',
    system: 'http://hl7.org/fhir/ValueSet/contact-point-system'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Other'.toFhirString,
  );

  /// For instances where an Element is present but not value

  static final ContactPointSystem elementOnly = ContactPointSystem._('');

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
        value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  ContactPointSystem withElement(Element? newElement) {
    return ContactPointSystem._(
      value,
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
  ContactPointSystem copyWith({
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
    return ContactPointSystem._(
      newValue ?? value,
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
