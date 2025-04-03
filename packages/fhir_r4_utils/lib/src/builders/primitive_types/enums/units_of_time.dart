// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// A unit of time (units from UCUM).
class UnitsOfTimeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  UnitsOfTimeBuilder._({
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
  factory UnitsOfTimeBuilder(
    String? rawValue, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final valueString =
        rawValue != null ? FhirCodeBuilder._validateCode(rawValue) : null;
    return UnitsOfTimeBuilder._(
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

  /// Create empty [UnitsOfTimeBuilder] with element only
  factory UnitsOfTimeBuilder.empty() => UnitsOfTimeBuilder._(valueString: '');

  /// Factory constructor to create [UnitsOfTimeBuilder]
  /// from JSON.
  factory UnitsOfTimeBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return UnitsOfTimeBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'UnitsOfTimeBuilder cannot be constructed from JSON.',
      );
    }
    return UnitsOfTimeBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// s
  static UnitsOfTimeBuilder s = UnitsOfTimeBuilder._(
    valueString: 's',
    system: 'http://hl7.org/fhir/ValueSet/units-of-time'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'second'.toFhirStringBuilder,
  );

  /// min
  static UnitsOfTimeBuilder min = UnitsOfTimeBuilder._(
    valueString: 'min',
    system: 'http://hl7.org/fhir/ValueSet/units-of-time'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'minute'.toFhirStringBuilder,
  );

  /// h
  static UnitsOfTimeBuilder h = UnitsOfTimeBuilder._(
    valueString: 'h',
    system: 'http://hl7.org/fhir/ValueSet/units-of-time'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'hour'.toFhirStringBuilder,
  );

  /// d
  static UnitsOfTimeBuilder d = UnitsOfTimeBuilder._(
    valueString: 'd',
    system: 'http://hl7.org/fhir/ValueSet/units-of-time'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'day'.toFhirStringBuilder,
  );

  /// wk
  static UnitsOfTimeBuilder wk = UnitsOfTimeBuilder._(
    valueString: 'wk',
    system: 'http://hl7.org/fhir/ValueSet/units-of-time'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'week'.toFhirStringBuilder,
  );

  /// mo
  static UnitsOfTimeBuilder mo = UnitsOfTimeBuilder._(
    valueString: 'mo',
    system: 'http://hl7.org/fhir/ValueSet/units-of-time'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'month'.toFhirStringBuilder,
  );

  /// a
  static UnitsOfTimeBuilder a = UnitsOfTimeBuilder._(
    valueString: 'a',
    system: 'http://hl7.org/fhir/ValueSet/units-of-time'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'year'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static UnitsOfTimeBuilder elementOnly = UnitsOfTimeBuilder._(valueString: '');

  /// List of all enum-like values
  static List<UnitsOfTimeBuilder> values = [
    s,
    min,
    h,
    d,
    wk,
    mo,
    a,
  ];

  /// Clones the current instance
  @override
  UnitsOfTimeBuilder clone() => UnitsOfTimeBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  UnitsOfTimeBuilder withElement(ElementBuilder? newElement) {
    return UnitsOfTimeBuilder._(valueString: valueString, element: newElement);
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
  UnitsOfTimeBuilder copyWith({
    dynamic newValue,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    Map<String, dynamic>? userData,
    List<String>? formatCommentsPre,
    List<String>? formatCommentsPost,
    List<dynamic>? annotations,
    bool? disallowExtensions,
    String? objectPath,
  }) {
    if (newValue is! String?) {
      throw ArgumentError('Invalid input for UnitsOfTime: $newValue');
    }
    return UnitsOfTimeBuilder._(
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
