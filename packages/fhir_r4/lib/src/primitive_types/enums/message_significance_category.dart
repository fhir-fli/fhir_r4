// ignore_for_file: unused_element_parameter, non_constant_identifier_names
part of '../primitive_types.dart';

/// The impact of the content of a message.
class MessageSignificanceCategory extends FhirCodeEnum {
  // Private underscore constructor for internal use.
  MessageSignificanceCategory._({
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
  factory MessageSignificanceCategory(
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
    return MessageSignificanceCategory._(
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

  /// Create empty [MessageSignificanceCategory] with element only
  factory MessageSignificanceCategory.empty() =>
      MessageSignificanceCategory._(validatedValue: '');

  /// Factory constructor to create [MessageSignificanceCategory] from JSON.
  factory MessageSignificanceCategory.fromJson(Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return MessageSignificanceCategory.elementOnly.withElement(element);
    } else if (value == null && element == null) {
      throw ArgumentError(
          'MessageSignificanceCategory cannot be constructed from JSON.',);
    }
    return MessageSignificanceCategory._(
        validatedValue: value, element: element,);
  }

  /// consequence
  static final MessageSignificanceCategory consequence =
      MessageSignificanceCategory._(
    validatedValue: 'consequence',
    system:
        'http://hl7.org/fhir/ValueSet/message-significance-category'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Consequence'.toFhirString,
  );

  /// currency
  static final MessageSignificanceCategory currency =
      MessageSignificanceCategory._(
    validatedValue: 'currency',
    system:
        'http://hl7.org/fhir/ValueSet/message-significance-category'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Currency'.toFhirString,
  );

  /// notification
  static final MessageSignificanceCategory notification =
      MessageSignificanceCategory._(
    validatedValue: 'notification',
    system:
        'http://hl7.org/fhir/ValueSet/message-significance-category'.toFhirUri,
    version: '4.3.0'.toFhirString,
    display: 'Notification'.toFhirString,
  );

  /// For instances where an Element is present but not value
  static final MessageSignificanceCategory elementOnly =
      MessageSignificanceCategory._(validatedValue: '');

  /// List of all enum-like values
  static final List<MessageSignificanceCategory> values = [
    consequence,
    currency,
    notification,
  ];

  /// Clones the current instance
  @override
  MessageSignificanceCategory clone() => MessageSignificanceCategory._(
        validatedValue: value,
        element: element?.clone() as Element?,
      );

  /// Returns the enum value with an element attached
  MessageSignificanceCategory withElement(Element? newElement) {
    return MessageSignificanceCategory._(
        validatedValue: value, element: newElement,);
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
  MessageSignificanceCategory copyWith({
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
    return MessageSignificanceCategory._(
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
