// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// The code(s) that detail the conditions under which the healthcare service is available/offered.
class ServiceProvisionConditions extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ServiceProvisionConditions._(super.value, [super.element]);

  /// Factory constructor to create [ServiceProvisionConditions] from JSON.
  factory ServiceProvisionConditions.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ServiceProvisionConditions.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ServiceProvisionConditions cannot be constructed from JSON.',
      );
    }
    return ServiceProvisionConditions._(value, element);
  }

  /// free
  static final ServiceProvisionConditions free = ServiceProvisionConditions._(
    'free',
  );

  /// disc
  static final ServiceProvisionConditions disc = ServiceProvisionConditions._(
    'disc',
  );

  /// cost
  static final ServiceProvisionConditions cost = ServiceProvisionConditions._(
    'cost',
  );

  /// For instances where an Element is present but not value

  static final ServiceProvisionConditions elementOnly =
      ServiceProvisionConditions._('');

  /// List of all enum-like values
  static final List<ServiceProvisionConditions> values = [
    free,
    disc,
    cost,
  ];

  /// Clones the current instance
  @override
  ServiceProvisionConditions clone() => ServiceProvisionConditions._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ServiceProvisionConditions setElement(
    String name,
    dynamic elementValue,
  ) {
    return ServiceProvisionConditions._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ServiceProvisionConditions withElement(Element? newElement) {
    return ServiceProvisionConditions._(value, newElement);
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
  ServiceProvisionConditions copyWith({
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
    return ServiceProvisionConditions._(
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
