// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars, unused_element, flutter_style_todos

import 'package:fhir_r4/fhir_r4.dart';
import 'package:objectbox/objectbox.dart';

/// This value set includes sample Related Claim Relationship codes.
@Entity()
class ExampleRelatedClaimRelationshipCodes extends FhirCode {
  /// Factory constructor to create [ExampleRelatedClaimRelationshipCodes] from JSON.
  factory ExampleRelatedClaimRelationshipCodes.fromJson(
      Map<String, dynamic> json) {
    final value = json['value'] as String?;
    final elementJson = json['_value'] as Map<String, dynamic>?;
    final element = elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return ExampleRelatedClaimRelationshipCodes.elementOnly(element);
    }
    if (values.contains(value)) {
      return ExampleRelatedClaimRelationshipCodes._(value, element);
    }
    throw ArgumentError(
      'ExampleRelatedClaimRelationshipCodes.fromJson: JSON value is not a valid value',
    );
  }

  /// prior
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleRelatedClaimRelationshipCodes.prior([this.element])
      : dbValue = 'prior',
        super('prior', element);

  /// associated
  /// Instance of 'EnumValue'.display
  /// Instance of 'EnumValue'.definition
  ExampleRelatedClaimRelationshipCodes.associated([this.element])
      : dbValue = 'associated',
        super('associated', element);

  /// For instances where an Element is present but not value

  ExampleRelatedClaimRelationshipCodes.elementOnly(this.element)
      : dbValue = null,
        super(null, element);

  /// Private constructor for internal use (like enum)
  ExampleRelatedClaimRelationshipCodes._(super.input, [super.element])
      : dbValue = input,
        // ignore: prefer_initializing_formals
        element = element;

  @override
  @Id()
  // ignore: overridden_fields
  int dbId = 0;

  /// Value to store in ObjectBox
  @override
  // ignore: overridden_fields
  final String? dbValue;

  /// Element stored as a relation in ObjectBox
  @override
  // ignore: overridden_fields
  final Element? element;

  /// List of all enum-like values
  static final List<String> values = [
    'prior',
    'associated',
  ];

  /// Returns the enum value with an element attached
  ExampleRelatedClaimRelationshipCodes withElement(Element? newElement) {
    return ExampleRelatedClaimRelationshipCodes._(value, newElement);
  }

  /// Serializes the instance to JSON with standardized keys
  @override
  Map<String, dynamic> toJson() => {
        if (value != null && value!.isNotEmpty) 'value': value,
        if (element != null) '_value': element!.toJson(),
      };

  /// String representation (for debugging purposes)
  @override
  String toString() => 'ExampleRelatedClaimRelationshipCodes.$value';
}
