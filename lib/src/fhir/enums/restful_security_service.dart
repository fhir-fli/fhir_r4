// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:isar/isar.dart';

/// Types of security services used with FHIR.
@collection
class RestfulSecurityService {
  /// Constructor for internal use (like enum)
  RestfulSecurityService({this.fhirCode, this.element})
      : assert(
          fhirCode != null || element != null,
          'Either fhirCode or element should be provided',
        );

  /// The ID of the object in the database.
  Id dbId = Isar.autoIncrement;

  /// The String value of this enum (FHIR code)
  final String? fhirCode;

  /// The Element value of this enum
  final Element? element;

  /// RestfulSecurityService values
  /// OAuth
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RestfulSecurityService OAuth = RestfulSecurityService(
    fhirCode: 'OAuth',
  );

  /// SMART_on_FHIR
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RestfulSecurityService SMART_on_FHIR = RestfulSecurityService(
    fhirCode: 'SMART-on-FHIR',
  );

  /// NTLM
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RestfulSecurityService NTLM = RestfulSecurityService(
    fhirCode: 'NTLM',
  );

  /// Basic
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RestfulSecurityService Basic = RestfulSecurityService(
    fhirCode: 'Basic',
  );

  /// Kerberos
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RestfulSecurityService Kerberos = RestfulSecurityService(
    fhirCode: 'Kerberos',
  );

  /// Certificates
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  static final RestfulSecurityService Certificates = RestfulSecurityService(
    fhirCode: 'Certificates',
  );

  /// For instances where an Element is present but not value

  static final RestfulSecurityService elementOnly = RestfulSecurityService();

  /// List of all enum-like values
  static final List<RestfulSecurityService> values = [
    OAuth,
    SMART_on_FHIR,
    NTLM,
    Basic,
    Kerberos,
    Certificates,
  ];

  /// Returns the enum value with an element attached
  RestfulSecurityService withElement(Element? newElement) {
    return RestfulSecurityService(
      fhirCode: fhirCode,
      element: newElement,
    );
  }

  /// Serializes the instance to JSON with standardized keys
  Map<String, dynamic> toJson() => {
        if (fhirCode != null) 'value': fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  /// Factory constructor to create [RestfulSecurityService] from JSON.
  static RestfulSecurityService fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RestfulSecurityService.elementOnly.withElement(element);
    }
    return RestfulSecurityService.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  /// String representation (for debugging purposes)
  @override
  String toString() => 'RestfulSecurityService.$fhirCode';
}
