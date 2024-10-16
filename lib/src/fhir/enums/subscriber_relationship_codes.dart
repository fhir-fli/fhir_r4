import 'package:fhir_r4/fhir_r4.dart';

/// This value set includes codes for the relationship between the Subscriber and the Beneficiary (insured/covered party/patient).
enum SubscriberRelationshipCodes {
  /// Display: Child
  /// Definition: The Beneficiary is a child of the Subscriber
  child('child'),

  /// Display: Parent
  /// Definition: The Beneficiary is a parent of the Subscriber
  parent('parent'),

  /// Display: Spouse
  /// Definition: The Beneficiary is a spouse or equivalent of the Subscriber
  spouse('spouse'),

  /// Display: Common Law Spouse
  /// Definition: The Beneficiary is a common law spouse or equivalent of the Subscriber
  common('common'),

  /// Display: Other
  /// Definition: The Beneficiary has some other relationship the Subscriber
  other('other'),

  /// Display: Self
  /// Definition: The Beneficiary is the Subscriber
  self('self'),

  /// Display: Injured Party
  /// Definition: The Beneficiary is covered under insurance of the subscriber due to an injury.
  injured('injured'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const SubscriberRelationshipCodes(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static SubscriberRelationshipCodes fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return SubscriberRelationshipCodes.elementOnly.withElement(element);
    }
    return SubscriberRelationshipCodes.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  SubscriberRelationshipCodes withElement(Element? newElement) {
    return SubscriberRelationshipCodes.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
