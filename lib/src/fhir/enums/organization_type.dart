// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// This example value set defines a set of codes that can be used to indicate a type of organization.
class OrganizationType extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  OrganizationType._(super.value, [super.element]);

  /// Factory constructor to create [OrganizationType] from JSON.
  factory OrganizationType.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return OrganizationType.elementOnly.withElement(element);
    }
    return OrganizationType._(value, element);
  }

  /// prov
  static final OrganizationType prov = OrganizationType._(
    'prov',
  );

  /// dept
  static final OrganizationType dept = OrganizationType._(
    'dept',
  );

  /// team
  static final OrganizationType team = OrganizationType._(
    'team',
  );

  /// govt
  static final OrganizationType govt = OrganizationType._(
    'govt',
  );

  /// ins
  static final OrganizationType ins = OrganizationType._(
    'ins',
  );

  /// pay
  static final OrganizationType pay = OrganizationType._(
    'pay',
  );

  /// edu
  static final OrganizationType edu = OrganizationType._(
    'edu',
  );

  /// reli
  static final OrganizationType reli = OrganizationType._(
    'reli',
  );

  /// crs
  static final OrganizationType crs = OrganizationType._(
    'crs',
  );

  /// cg
  static final OrganizationType cg = OrganizationType._(
    'cg',
  );

  /// bus
  static final OrganizationType bus = OrganizationType._(
    'bus',
  );

  /// other
  static final OrganizationType other = OrganizationType._(
    'other',
  );

  /// For instances where an Element is present but not value

  static final OrganizationType elementOnly = OrganizationType._('');

  /// List of all enum-like values
  static final List<OrganizationType> values = [
    prov,
    dept,
    team,
    govt,
    ins,
    pay,
    edu,
    reli,
    crs,
    cg,
    bus,
    other,
  ];

  /// Clones the current instance
  @override
  OrganizationType clone() =>
      OrganizationType._(value, element?.clone() as Element?);

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  OrganizationType setElement(String name, dynamic elementValue) {
    return OrganizationType._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  OrganizationType withElement(Element? newElement) {
    return OrganizationType._(value, newElement);
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
  OrganizationType copyWith({
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
    return OrganizationType._(
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
