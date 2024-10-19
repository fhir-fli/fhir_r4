// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// Types of security services used with FHIR.
@Entity()
class RestfulSecurityService extends FhirCode {
  /// Factory constructor to create [RestfulSecurityService] from JSON.
  factory RestfulSecurityService.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RestfulSecurityService.elementOnly(element);
    }
    if (values.contains(value)) {
      return RestfulSecurityService._(value, element);
    }
    throw ArgumentError(
      'RestfulSecurityService.fromJson: JSON value is not a valid value',
    );
  }

  /// OAuth
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RestfulSecurityService.OAuth([this.element])
      : dbValue = 'OAuth',
        super('OAuth', element);

  /// SMART_on_FHIR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RestfulSecurityService.SMART_on_FHIR([this.element])
      : dbValue = 'SMART-on-FHIR',
        super('SMART-on-FHIR', element);

  /// NTLM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RestfulSecurityService.NTLM([this.element])
      : dbValue = 'NTLM',
        super('NTLM', element);

  /// Basic
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RestfulSecurityService.Basic([this.element])
      : dbValue = 'Basic',
        super('Basic', element);

  /// Kerberos
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RestfulSecurityService.Kerberos([this.element])
      : dbValue = 'Kerberos',
        super('Kerberos', element);

  /// Certificates
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  RestfulSecurityService.Certificates([this.element])
      : dbValue = 'Certificates',
        super('Certificates', element);

  /// For instances where an Element is present but not value

  RestfulSecurityService.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  RestfulSecurityService._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  Element? element;

  /// List of all enum-like values
  @Transient()
  static final List<String> values = [
    'OAuth',
    'SMART-on-FHIR',
    'NTLM',
    'Basic',
    'Kerberos',
    'Certificates',
  ];

  /// Returns the enum value with an element attached
  RestfulSecurityService withElement(Element? newElement) {
    return RestfulSecurityService._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'RestfulSecurityService.$value';
}
