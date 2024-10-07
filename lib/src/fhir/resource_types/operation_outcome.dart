import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()

/// [OperationOutcome] /// A collection of error, warning, or information messages that result from a
/// system action.
class OperationOutcome extends DomainResource {
  OperationOutcome({
    super.id,
    super.meta,
    super.implicitRules,
    super.implicitRulesElement,
    super.language,
    super.languageElement,
    super.text,
    super.contained,
    super.extension_,
    super.modifierExtension,
    required this.issue,
  }) : super(resourceType: R4ResourceType.OperationOutcome);

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [issue] /// An error, warning, or information message that results from a system
  /// action.
  final List<OperationOutcomeIssue> issue;
  @override
  OperationOutcome clone() => throw UnimplementedError();
  OperationOutcome copy({
    FhirString? id,
    FhirMeta? meta,
    FhirUri? implicitRules,
    Element? implicitRulesElement,
    FhirCode? language,
    Element? languageElement,
    Narrative? text,
    List<Resource>? contained,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    List<OperationOutcomeIssue>? issue,
  }) {
    return OperationOutcome(
      id: id ?? this.id,
      meta: meta ?? this.meta,
      implicitRules: implicitRules ?? this.implicitRules,
      implicitRulesElement: implicitRulesElement ?? this.implicitRulesElement,
      language: language ?? this.language,
      languageElement: languageElement ?? this.languageElement,
      text: text ?? this.text,
      contained: contained ?? this.contained,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      issue: issue ?? this.issue,
    );
  }
}

@JsonCodable()
@Data()
@Entity()

/// [OperationOutcomeIssue] /// An error, warning, or information message that results from a system
/// action.
class OperationOutcomeIssue extends BackboneElement {
  OperationOutcomeIssue({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.severity,
    this.severityElement,
    required this.code,
    this.codeElement,
    this.details,
    this.diagnostics,
    this.diagnosticsElement,
    this.location,
    this.locationElement,
    this.expression,
    this.expressionElement,
  });

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;

  /// [severity] /// Indicates whether the issue indicates a variation from successful
  /// processing.
  final FhirCode severity;
  final Element? severityElement;

  /// [code] /// Describes the type of the issue. The system that creates an
  /// OperationOutcome SHALL choose the most applicable code from the IssueType
  /// value set, and may additional provide its own code for the error in the
  /// details element.
  final FhirCode code;
  final Element? codeElement;

  /// [details] /// Additional details about the error. This may be a text description of the
  /// error or a system code that identifies the error.
  final CodeableConcept? details;

  /// [diagnostics] /// Additional diagnostic information about the issue.
  final FhirString? diagnostics;
  final Element? diagnosticsElement;

  /// [location] /// This element is deprecated because it is XML specific. It is replaced by
  /// issue.expression, which is format independent, and simpler to parse.
  ///
  /// For resource issues, this will be a simple XPath limited to element names,
  /// repetition indicators and the default child accessor that identifies one of
  /// the elements in the resource that caused this issue to be raised. For HTTP
  /// errors, will be "http." + the parameter name.
  final List<FhirString>? location;
  final List<Element>? locationElement;

  /// [expression] /// A [simple subset of FHIRPath](fhirpath.html#simple) limited to element
  /// names, repetition indicators and the default child accessor that identifies
  /// one of the elements in the resource that caused this issue to be raised.
  final List<FhirString>? expression;
  final List<Element>? expressionElement;
  @override
  OperationOutcomeIssue clone() => throw UnimplementedError();
  OperationOutcomeIssue copy({
    FhirString? id,
    List<FhirExtension>? extension_,
    List<FhirExtension>? modifierExtension,
    FhirCode? severity,
    Element? severityElement,
    FhirCode? code,
    Element? codeElement,
    CodeableConcept? details,
    FhirString? diagnostics,
    Element? diagnosticsElement,
    List<FhirString>? location,
    List<Element>? locationElement,
    List<FhirString>? expression,
    List<Element>? expressionElement,
  }) {
    return OperationOutcomeIssue(
      id: id ?? this.id,
      extension_: extension_ ?? this.extension_,
      modifierExtension: modifierExtension ?? this.modifierExtension,
      severity: severity ?? this.severity,
      severityElement: severityElement ?? this.severityElement,
      code: code ?? this.code,
      codeElement: codeElement ?? this.codeElement,
      details: details ?? this.details,
      diagnostics: diagnostics ?? this.diagnostics,
      diagnosticsElement: diagnosticsElement ?? this.diagnosticsElement,
      location: location ?? this.location,
      locationElement: locationElement ?? this.locationElement,
      expression: expression ?? this.expression,
      expressionElement: expressionElement ?? this.expressionElement,
    );
  }
}
