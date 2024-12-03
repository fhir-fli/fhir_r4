// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';

/// An example value set of SNOMED CT concepts that can classify a requested service
class ServiceRequestCategoryCodes extends PrimitiveType<String> {
  // Private constructor for internal use (like enum)
  ServiceRequestCategoryCodes._(super.value, [super.element]);

  /// Factory constructor to create [ServiceRequestCategoryCodes] from JSON.
  factory ServiceRequestCategoryCodes.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ServiceRequestCategoryCodes.elementOnly.withElement(element);
    }
    return ServiceRequestCategoryCodes._(value, element);
  }

  /// value108252007
  static final ServiceRequestCategoryCodes value108252007 =
      ServiceRequestCategoryCodes._(
    '108252007',
  );

  /// value363679005
  static final ServiceRequestCategoryCodes value363679005 =
      ServiceRequestCategoryCodes._(
    '363679005',
  );

  /// value409063005
  static final ServiceRequestCategoryCodes value409063005 =
      ServiceRequestCategoryCodes._(
    '409063005',
  );

  /// value409073007
  static final ServiceRequestCategoryCodes value409073007 =
      ServiceRequestCategoryCodes._(
    '409073007',
  );

  /// value387713003
  static final ServiceRequestCategoryCodes value387713003 =
      ServiceRequestCategoryCodes._(
    '387713003',
  );

  /// For instances where an Element is present but not value

  static final ServiceRequestCategoryCodes elementOnly =
      ServiceRequestCategoryCodes._('');

  /// List of all enum-like values
  static final List<ServiceRequestCategoryCodes> values = [
    value108252007,
    value363679005,
    value409063005,
    value409073007,
    value387713003,
  ];

  /// Clones the current instance
  @override
  ServiceRequestCategoryCodes clone() => ServiceRequestCategoryCodes._(
        value,
        element?.clone() as Element?,
      );

  /// Sets a property on the associated [Element], returning a new instance.
  @override
  ServiceRequestCategoryCodes setElement(
    String name,
    dynamic elementValue,
  ) {
    return ServiceRequestCategoryCodes._(
      value,
      element?.setProperty(name, elementValue),
    );
  }

  /// Returns the enum value with an element attached
  ServiceRequestCategoryCodes withElement(Element? newElement) {
    return ServiceRequestCategoryCodes._(value, newElement);
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
  ServiceRequestCategoryCodes copyWith({
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
    return ServiceRequestCategoryCodes._(
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
