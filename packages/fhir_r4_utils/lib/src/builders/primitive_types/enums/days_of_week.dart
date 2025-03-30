// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The days of the week.
class DaysOfWeekBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  DaysOfWeekBuilder._({
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
  factory DaysOfWeekBuilder(
    String? raw, {
    FhirUriBuilder? system,
    FhirStringBuilder? version,
    FhirStringBuilder? display,
    ElementBuilder? element,
    FhirStringBuilder? id,
    List<FhirExtensionBuilder>? extension_,
    bool? disallowExtensions,
    String objectPath = 'Code',
  }) {
    final validated = raw != null ? FhirCodeBuilder._validateCode(raw) : null;
    return DaysOfWeekBuilder._(
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

  /// Create empty [DaysOfWeekBuilder] with element only
  factory DaysOfWeekBuilder.empty() => DaysOfWeekBuilder._(validatedValue: '');

  /// Factory constructor to create [DaysOfWeekBuilder]
  /// from JSON.
  factory DaysOfWeekBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return DaysOfWeekBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'DaysOfWeekBuilder cannot be constructed from JSON.',
      );
    }
    return DaysOfWeekBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// mon
  static DaysOfWeekBuilder mon = DaysOfWeekBuilder._(
    validatedValue: 'mon',
    system: 'http://hl7.org/fhir/ValueSet/days-of-week'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Monday'.toFhirStringBuilder,
  );

  /// tue
  static DaysOfWeekBuilder tue = DaysOfWeekBuilder._(
    validatedValue: 'tue',
    system: 'http://hl7.org/fhir/ValueSet/days-of-week'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Tuesday'.toFhirStringBuilder,
  );

  /// wed
  static DaysOfWeekBuilder wed = DaysOfWeekBuilder._(
    validatedValue: 'wed',
    system: 'http://hl7.org/fhir/ValueSet/days-of-week'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Wednesday'.toFhirStringBuilder,
  );

  /// thu
  static DaysOfWeekBuilder thu = DaysOfWeekBuilder._(
    validatedValue: 'thu',
    system: 'http://hl7.org/fhir/ValueSet/days-of-week'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Thursday'.toFhirStringBuilder,
  );

  /// fri
  static DaysOfWeekBuilder fri = DaysOfWeekBuilder._(
    validatedValue: 'fri',
    system: 'http://hl7.org/fhir/ValueSet/days-of-week'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Friday'.toFhirStringBuilder,
  );

  /// sat
  static DaysOfWeekBuilder sat = DaysOfWeekBuilder._(
    validatedValue: 'sat',
    system: 'http://hl7.org/fhir/ValueSet/days-of-week'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Saturday'.toFhirStringBuilder,
  );

  /// sun
  static DaysOfWeekBuilder sun = DaysOfWeekBuilder._(
    validatedValue: 'sun',
    system: 'http://hl7.org/fhir/ValueSet/days-of-week'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Sunday'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static DaysOfWeekBuilder elementOnly =
      DaysOfWeekBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<DaysOfWeekBuilder> values = [
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
  DaysOfWeekBuilder clone() => DaysOfWeekBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  DaysOfWeekBuilder withElement(ElementBuilder? newElement) {
    return DaysOfWeekBuilder._(validatedValue: value, element: newElement);
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
  DaysOfWeekBuilder copyWith({
    String? newValue,
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
    if ((newValue ?? value) is! int) {
      throw ArgumentError('Invalid input for FhirInteger: $newValue');
    }
    return DaysOfWeekBuilder._(
      validatedValue: newValue ?? value,
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
