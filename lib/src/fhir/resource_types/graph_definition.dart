import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@Data()
@JsonCodable()
class GraphDefinition extends DomainResource {
  final FhirUri? url;
  final Element? urlElement;
  final FhirString? version;
  final Element? versionElement;
  final FhirString name;
  final Element? nameElement;
  final FhirCode status;
  final Element? statusElement;
  final FhirBoolean? experimental;
  final Element? experimentalElement;
  final FhirDateTime? date;
  final Element? dateElement;
  final FhirString? publisher;
  final Element? publisherElement;
  final List<ContactDetail>? contact;
  final FhirMarkdown? description;
  final Element? descriptionElement;
  final List<UsageContext>? useContext;
  final List<CodeableConcept>? jurisdiction;
  final FhirMarkdown? purpose;
  final Element? purposeElement;
  final FhirCode start;
  final Element? startElement;
  final FhirCanonical? profile;
  final Element? profileElement;
  final List<GraphDefinitionLink>? link;

  GraphDefinition({
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
    this.url,
    this.urlElement,
    this.version,
    this.versionElement,
    required this.name,
    this.nameElement,
    required this.status,
    this.statusElement,
    this.experimental,
    this.experimentalElement,
    this.date,
    this.dateElement,
    this.publisher,
    this.publisherElement,
    this.contact,
    this.description,
    this.descriptionElement,
    this.useContext,
    this.jurisdiction,
    this.purpose,
    this.purposeElement,
    required this.start,
    this.startElement,
    this.profile,
    this.profileElement,
    this.link,
  }) : super(resourceType: R4ResourceType.GraphDefinition);

  @override
  GraphDefinition clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class GraphDefinitionLink extends BackboneElement {
  final FhirString? path;
  final Element? pathElement;
  final FhirString? sliceName;
  final Element? sliceNameElement;
  final FhirInteger? min;
  final Element? minElement;
  final FhirString? max;
  final Element? maxElement;
  final FhirString? description;
  final Element? descriptionElement;
  final List<GraphDefinitionTarget>? target;

  GraphDefinitionLink({
    super.id,
    super.extension_,
    super.modifierExtension,
    this.path,
    this.pathElement,
    this.sliceName,
    this.sliceNameElement,
    this.min,
    this.minElement,
    this.max,
    this.maxElement,
    this.description,
    this.descriptionElement,
    this.target,
  });

  @override
  GraphDefinitionLink clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class GraphDefinitionTarget extends BackboneElement {
  final FhirCode type;
  final Element? typeElement;
  final FhirString? params;
  final Element? paramsElement;
  final FhirCanonical? profile;
  final Element? profileElement;
  final List<GraphDefinitionCompartment>? compartment;
  final List<GraphDefinitionLink>? link;

  GraphDefinitionTarget({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.type,
    this.typeElement,
    this.params,
    this.paramsElement,
    this.profile,
    this.profileElement,
    this.compartment,
    this.link,
  });

  @override
  GraphDefinitionTarget clone() => throw UnimplementedError();
}

@Data()
@JsonCodable()
class GraphDefinitionCompartment extends BackboneElement {
  final FhirCode use;
  final Element? useElement;
  final FhirCode code;
  final Element? codeElement;
  final FhirCode rule;
  final Element? ruleElement;
  final FhirString? expression;
  final Element? expressionElement;
  final FhirString? description;
  final Element? descriptionElement;

  GraphDefinitionCompartment({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.use,
    this.useElement,
    required this.code,
    this.codeElement,
    required this.rule,
    this.ruleElement,
    this.expression,
    this.expressionElement,
    this.description,
    this.descriptionElement,
  });

  @override
  GraphDefinitionCompartment clone() => throw UnimplementedError();
}
