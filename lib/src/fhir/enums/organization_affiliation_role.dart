// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This example value set defines a set of codes that can be used to indicate the role of one Organization in relation to another.
class OrganizationAffiliationRole extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  OrganizationAffiliationRole._(super.value, [super.element]);

  /// Factory constructor to create [OrganizationAffiliationRole] from JSON.
  factory OrganizationAffiliationRole.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return OrganizationAffiliationRole.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'OrganizationAffiliationRole cannot be constructed from JSON.',
      );
    }
    return OrganizationAffiliationRole._(value, element);
  }

  /// provider
  static final OrganizationAffiliationRole provider =
      OrganizationAffiliationRole._(
    'provider',
  );

  /// agency
  static final OrganizationAffiliationRole agency =
      OrganizationAffiliationRole._(
    'agency',
  );

  /// research
  static final OrganizationAffiliationRole research =
      OrganizationAffiliationRole._(
    'research',
  );

  /// payer
  static final OrganizationAffiliationRole payer =
      OrganizationAffiliationRole._(
    'payer',
  );

  /// diagnostics
  static final OrganizationAffiliationRole diagnostics =
      OrganizationAffiliationRole._(
    'diagnostics',
  );

  /// supplier
  static final OrganizationAffiliationRole supplier =
      OrganizationAffiliationRole._(
    'supplier',
  );

  /// HIE_HIO
  static final OrganizationAffiliationRole HIE_HIO =
      OrganizationAffiliationRole._(
    'HIE/HIO',
  );

  /// member
  static final OrganizationAffiliationRole member =
      OrganizationAffiliationRole._(
    'member',
  );

  /// For instances where an Element is present but not value

  static final OrganizationAffiliationRole elementOnly =
      OrganizationAffiliationRole._('');

  /// List of all enum-like values
  static final List<OrganizationAffiliationRole> values = [
    provider,
    agency,
    research,
    payer,
    diagnostics,
    supplier,
    HIE_HIO,
    member,
  ];

  /// Clones the current instance
  @override
  OrganizationAffiliationRole clone() => OrganizationAffiliationRole._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  OrganizationAffiliationRole setElement(
    String name,
    dynamic elementValue,
  ) {
    return OrganizationAffiliationRole._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  OrganizationAffiliationRole withElement(Element? newElement) {
    return OrganizationAffiliationRole._(value, newElement);
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
  OrganizationAffiliationRole copyWith({
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
    return OrganizationAffiliationRole._(
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
