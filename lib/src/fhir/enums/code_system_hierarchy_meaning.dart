import 'package:fhir_r4/fhir_r4.dart';

/// The meaning of the hierarchy of concepts in a code system.
enum CodeSystemHierarchyMeaning {
  /// Display: Grouped By
  /// Definition: No particular relationship between the concepts can be assumed, except what can be determined by inspection of the definitions of the elements (possible reasons to use this: importing from a source where this is not defined, or where various parts of the hierarchy have different meanings).
  grouped_by('grouped-by'),

  /// Display: Is-A
  /// Definition: A hierarchy where the child concepts have an IS-A relationship with the parents - that is, all the properties of the parent are also true for its child concepts. Not that is-a is a property of the concepts, so additional subsumption relationships may be defined using properties or the [subsumes](extension-codesystem-subsumes.html) extension.
  is_a('is-a'),

  /// Display: Part Of
  /// Definition: Child elements list the individual parts of a composite whole (e.g. body site).
  part_of('part-of'),

  /// Display: Classified With
  /// Definition: Child concepts in the hierarchy may have only one parent, and there is a presumption that the code system is a "closed world" meaning all things must be in the hierarchy. This results in concepts such as "not otherwise classified.".
  classified_with('classified-with'),
  elementOnly('', null),
  ;

  final String fhirCode;
  final Element? element;

  const CodeSystemHierarchyMeaning(this.fhirCode, [this.element]);

  Map<String, dynamic> toJson() => {
        'value': fhirCode.isEmpty ? null : fhirCode,
        if (element != null) '_value': element!.toJson(),
      };

  static CodeSystemHierarchyMeaning fromJson(Map<String, dynamic> json) {
    final String? value = json['value'] as String?;
    final Map<String, dynamic>? elementJson =
        json['_value'] as Map<String, dynamic>?;
    final Element? element =
        elementJson != null ? Element.fromJson(elementJson) : null;
    if (value == null && element != null) {
      return CodeSystemHierarchyMeaning.elementOnly.withElement(element);
    }
    return CodeSystemHierarchyMeaning.values.firstWhere(
      (e) => e.fhirCode == value,
    );
  }

  CodeSystemHierarchyMeaning withElement(Element? newElement) {
    return CodeSystemHierarchyMeaning.fromJson({
      'value': fhirCode,
      '_value': newElement?.toJson(),
    });
  }
}
