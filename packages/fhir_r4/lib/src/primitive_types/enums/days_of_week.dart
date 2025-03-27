// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The days of the week.
class DaysOfWeek extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  DaysOfWeek._({
    required super.validatedValue,
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
  factory DaysOfWeek(
    String? raw, {
    FhirUri? system,
    FhirString? version,
    FhirString? display,
    Element? element,
    FhirString? id,
    List<FhirExtension>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCode._validateCode(raw) : null;
    return DaysOfWeek._(
      validatedValue: validated,
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

  /// Create empty [DaysOfWeek] with element only
  factory DaysOfWeek.empty() => DaysOfWeek._(validatedValue: '');

  /// Factory constructor to create [DaysOfWeek] from JSON.
  factory DaysOfWeek.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DaysOfWeek.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DaysOfWeek cannot be constructed from JSON.',
      );
    }
    return DaysOfWeek._(
      validatedValue: value,
      element: element,
    );
  }

  /// mon
  static final DaysOfWeek mon = DaysOfWeek._(
    validatedValue: 'mon',
    system: 'http://hl7.org/fhir/ValueSet/days-of-week'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Monday'.toFhirString,
  );

  /// tue
  static final DaysOfWeek tue = DaysOfWeek._(
    validatedValue: 'tue',
    system: 'http://hl7.org/fhir/ValueSet/days-of-week'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Tuesday'.toFhirString,
  );

  /// wed
  static final DaysOfWeek wed = DaysOfWeek._(
    validatedValue: 'wed',
    system: 'http://hl7.org/fhir/ValueSet/days-of-week'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Wednesday'.toFhirString,
  );

  /// thu
  static final DaysOfWeek thu = DaysOfWeek._(
    validatedValue: 'thu',
    system: 'http://hl7.org/fhir/ValueSet/days-of-week'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Thursday'.toFhirString,
  );

  /// fri
  static final DaysOfWeek fri = DaysOfWeek._(
    validatedValue: 'fri',
    system: 'http://hl7.org/fhir/ValueSet/days-of-week'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Friday'.toFhirString,
  );

  /// sat
  static final DaysOfWeek sat = DaysOfWeek._(
    validatedValue: 'sat',
    system: 'http://hl7.org/fhir/ValueSet/days-of-week'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Saturday'.toFhirString,
  );

  /// sun
  static final DaysOfWeek sun = DaysOfWeek._(
    validatedValue: 'sun',
    system: 'http://hl7.org/fhir/ValueSet/days-of-week'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Sunday'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final DaysOfWeek elementOnly = DaysOfWeek._(validatedValue: '');

  /// List of all enum-like values
  static final List<DaysOfWeek> values = [
    mon,
    tue,
    wed,
    thu,
    fri,
    sat,
    sun,
  ];

  /// Clones the current instance
  @override
  DaysOfWeek clone() => DaysOfWeek._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  DaysOfWeek withElement(Element? newElement) {
    return DaysOfWeek._(validatedValue: value, element: newElement);
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
  DaysOfWeek copyWith({
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
    return DaysOfWeek._(
      validatedValue: newValue ?? value,
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
