// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// Possible group measure aggregates (E.g. Mean, Median).
class GroupMeasureBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  GroupMeasureBuilder._({
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
  factory GroupMeasureBuilder(
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
    return GroupMeasureBuilder._(
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

  /// Create empty [GroupMeasureBuilder] with element only
  factory GroupMeasureBuilder.empty() =>
      GroupMeasureBuilder._(validatedValue: '');

  /// Factory constructor to create [GroupMeasureBuilder] from JSON.
  factory GroupMeasureBuilder.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return GroupMeasureBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'GroupMeasureBuilder cannot be constructed from JSON.',
      );
    }
    return GroupMeasureBuilder._(
      validatedValue: value,
      element: element,
    );
  }

  /// mean
  static GroupMeasureBuilder mean = GroupMeasureBuilder._(
    validatedValue: 'mean',
    system: 'http://hl7.org/fhir/ValueSet/group-measure'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Mean'.toFhirStringBuilder,
  );

  /// median
  static GroupMeasureBuilder median = GroupMeasureBuilder._(
    validatedValue: 'median',
    system: 'http://hl7.org/fhir/ValueSet/group-measure'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Median'.toFhirStringBuilder,
  );

  /// mean_of_mean
  static GroupMeasureBuilder mean_of_mean = GroupMeasureBuilder._(
    validatedValue: 'mean-of-mean',
    system: 'http://hl7.org/fhir/ValueSet/group-measure'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Mean of Study Means'.toFhirStringBuilder,
  );

  /// mean_of_median
  static GroupMeasureBuilder mean_of_median = GroupMeasureBuilder._(
    validatedValue: 'mean-of-median',
    system: 'http://hl7.org/fhir/ValueSet/group-measure'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Mean of Study Medins'.toFhirStringBuilder,
  );

  /// median_of_mean
  static GroupMeasureBuilder median_of_mean = GroupMeasureBuilder._(
    validatedValue: 'median-of-mean',
    system: 'http://hl7.org/fhir/ValueSet/group-measure'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Median of Study Means'.toFhirStringBuilder,
  );

  /// median_of_median
  static GroupMeasureBuilder median_of_median = GroupMeasureBuilder._(
    validatedValue: 'median-of-median',
    system: 'http://hl7.org/fhir/ValueSet/group-measure'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Median of Study Medians'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static GroupMeasureBuilder elementOnly =
      GroupMeasureBuilder._(validatedValue: '');

  /// List of all enum-like values
  static List<GroupMeasureBuilder> values = [
    mean,
    median,
    mean_of_mean,
    mean_of_median,
    median_of_mean,
    median_of_median,
  ];

  /// Clones the current instance
  @override
  GroupMeasureBuilder clone() => GroupMeasureBuilder._(
        validatedValue: value,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  GroupMeasureBuilder withElement(ElementBuilder? newElement) {
    return GroupMeasureBuilder._(validatedValue: value, element: newElement);
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
  GroupMeasureBuilder copyWith({
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
    return GroupMeasureBuilder._(
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
