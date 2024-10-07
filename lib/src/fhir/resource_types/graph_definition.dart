import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:objectbox/objectbox.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
@Entity()
class GraphDefinition extends DomainResource {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
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
  @override
  GraphDefinition clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class GraphDefinitionLink extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
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
  @override
  GraphDefinitionLink clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class GraphDefinitionTarget extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
  final FhirCode type;
  final Element? typeElement;
  final FhirString? params;
  final Element? paramsElement;
  final FhirCanonical? profile;
  final Element? profileElement;
  final List<GraphDefinitionCompartment>? compartment;
  final List<GraphDefinitionLink>? link;
  @override
  GraphDefinitionTarget clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
@Entity()
class GraphDefinitionCompartment extends BackboneElement {
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

  @Id()
  @JsonKey(ignore: true)
  int dbId = 0;
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
  @override
  GraphDefinitionCompartment clone() => throw UnimplementedError();
}
