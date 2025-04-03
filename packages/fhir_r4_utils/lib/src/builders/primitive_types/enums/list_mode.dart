// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The processing mode that applies to this list.
class ListModeBuilder extends FhirCodeEnumBuilder {
  // Private underscore constructor for internal use.
  ListModeBuilder._({
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
  factory ListModeBuilder(
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
    return ListModeBuilder._(
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

  /// Create empty [ListModeBuilder] with element only
  factory ListModeBuilder.empty() => ListModeBuilder._(valueString: '');

  /// Factory constructor to create [ListModeBuilder]
  /// from JSON.
  factory ListModeBuilder.fromJson(
    Map<String, dynamic> json,
  ) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element =
        elementJson != null ? ElementBuilder.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ListModeBuilder.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
        'ListModeBuilder cannot be constructed from JSON.',
      );
    }
    return ListModeBuilder._(
      valueString: value,
      element: element,
    );
  }

  /// working
  static ListModeBuilder working = ListModeBuilder._(
    valueString: 'working',
    system: 'http://hl7.org/fhir/ValueSet/list-mode'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Working List'.toFhirStringBuilder,
  );

  /// snapshot
  static ListModeBuilder snapshot = ListModeBuilder._(
    valueString: 'snapshot',
    system: 'http://hl7.org/fhir/ValueSet/list-mode'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Snapshot List'.toFhirStringBuilder,
  );

  /// changes
  static ListModeBuilder changes = ListModeBuilder._(
    valueString: 'changes',
    system: 'http://hl7.org/fhir/ValueSet/list-mode'.toFhirUriBuilder,
    version: '4.3.0'.toFhirStringBuilder,
    display: 'Change List'.toFhirStringBuilder,
  );

  /// For instances where an Element is present but not value
  static ListModeBuilder elementOnly = ListModeBuilder._(valueString: '');

  /// List of all enum-like values
  static List<ListModeBuilder> values = [
    working,
    snapshot,
    changes,
  ];

  /// Clones the current instance
  @override
  ListModeBuilder clone() => ListModeBuilder._(
        valueString: valueString,
        element: element?.clone() as ElementBuilder?,
      );

  /// Returns the enum value with an element attached
  ListModeBuilder withElement(
    ElementBuilder? newElement,
  ) {
    return ListModeBuilder._(
      valueString: valueString,
      element: newElement,
    );
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
  ListModeBuilder copyWith({
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
      throw ArgumentError(
        'Invalid input for ListMode: $newValue',
      );
    }
    return ListModeBuilder._(
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
