// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Possible group measure aggregates (E.g. Mean, Median).
class GroupMeasure extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  GroupMeasure._({
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
  factory GroupMeasure(
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
    return GroupMeasure._(
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

  /// Create empty [GroupMeasure] with element only
  factory GroupMeasure.empty() => GroupMeasure._(validatedValue: '');

  /// Factory constructor to create [GroupMeasure] from JSON.
  factory GroupMeasure.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GroupMeasure.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'GroupMeasure cannot be constructed from JSON.',
      );
    }
    return GroupMeasure._(
      validatedValue: value,
      element: element,
    );
  }

  /// mean
  static final GroupMeasure mean = GroupMeasure._(
    validatedValue: 'mean',
    system: 'http://hl7.org/fhir/ValueSet/group-measure'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Mean'.toFhirString,
  );

  /// median
  static final GroupMeasure median = GroupMeasure._(
    validatedValue: 'median',
    system: 'http://hl7.org/fhir/ValueSet/group-measure'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Median'.toFhirString,
  );

  /// mean_of_mean
  static final GroupMeasure mean_of_mean = GroupMeasure._(
    validatedValue: 'mean-of-mean',
    system: 'http://hl7.org/fhir/ValueSet/group-measure'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Mean of Study Means'.toFhirString,
  );

  /// mean_of_median
  static final GroupMeasure mean_of_median = GroupMeasure._(
    validatedValue: 'mean-of-median',
    system: 'http://hl7.org/fhir/ValueSet/group-measure'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Mean of Study Medins'.toFhirString,
  );

  /// median_of_mean
  static final GroupMeasure median_of_mean = GroupMeasure._(
    validatedValue: 'median-of-mean',
    system: 'http://hl7.org/fhir/ValueSet/group-measure'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Median of Study Means'.toFhirString,
  );

  /// median_of_median
  static final GroupMeasure median_of_median = GroupMeasure._(
    validatedValue: 'median-of-median',
    system: 'http://hl7.org/fhir/ValueSet/group-measure'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Median of Study Medians'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final GroupMeasure elementOnly = GroupMeasure._(validatedValue: '');

  /// List of all enum-like values
  static final List<GroupMeasure> values = [
    mean,
    median,
    mean_of_mean,
    mean_of_median,
    median_of_mean,
    median_of_median,
  ];

  /// Clones the current instance
  @override
  GroupMeasure clone() => GroupMeasure._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  GroupMeasure withElement(Element? newElement) {
    return GroupMeasure._(
      validatedValue: value,
      element: newElement,
    );
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
  GroupMeasure copyWith({
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
    return GroupMeasure._(
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
