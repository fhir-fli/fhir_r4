// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// Types of security services used with FHIR.
class RestfulSecurityService extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  RestfulSecurityService._(super.value, [super.element]);

  /// Factory constructor to create [RestfulSecurityService] from JSON.
  factory RestfulSecurityService.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return RestfulSecurityService.elementOnly.withElement(element);
    }
    return RestfulSecurityService._(value, element);
  }

  /// OAuth
  static final RestfulSecurityService OAuth = RestfulSecurityService._(
    'OAuth',
  );

  /// SMART_on_FHIR
  static final RestfulSecurityService SMART_on_FHIR = RestfulSecurityService._(
    'SMART-on-FHIR',
  );

  /// NTLM
  static final RestfulSecurityService NTLM = RestfulSecurityService._(
    'NTLM',
  );

  /// Basic
  static final RestfulSecurityService Basic = RestfulSecurityService._(
    'Basic',
  );

  /// Kerberos
  static final RestfulSecurityService Kerberos = RestfulSecurityService._(
    'Kerberos',
  );

  /// Certificates
  static final RestfulSecurityService Certificates = RestfulSecurityService._(
    'Certificates',
  );

  /// For instances where an Element is present but not value

  static final RestfulSecurityService elementOnly =
      RestfulSecurityService._('');

  /// List of all enum-like values
  static final List<RestfulSecurityService> values = [
    OAuth,
    SMART_on_FHIR,
    NTLM,
    Basic,
    Kerberos,
    Certificates,
  ];

  /// Clones the current instance
  @override
  RestfulSecurityService clone() => RestfulSecurityService._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  RestfulSecurityService setElement(
    String name,
    dynamic elementValue,
  ) {
    return RestfulSecurityService._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  RestfulSecurityService withElement(Element? newElement) {
    return RestfulSecurityService._(value, newElement);
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
  RestfulSecurityService copyWith({
    String? newValue,
    Element? element,
    Map<String, Object?>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    Map<String, List<void Function()>>? propertyChanged,
    List<dynamic>? annotations,
    List<FhirBase>? children,
    Map<String, FhirBase>? namedChildren,
  }) {
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return RestfulSecurityService._(
      newValue ?? value,
      (element ?? this.element)?.copyWith(
        userData: userData ?? this.element?.userData,
        formatCommentsPre: formatCommentsPre ?? this.element?.formatCommentsPre,
        formatCommentsPost:
            formatCommentsPost ?? this.element?.formatCommentsPost,
        annotations: annotations ?? this.element?.annotations,
        children: children ?? this.element?.children,
        namedChildren: namedChildren ?? this.element?.namedChildren,
      ),
    );
  }
}
