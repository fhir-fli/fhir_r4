import 'package:dataclass/dataclass.dart';
import 'package:json/json.dart';

import '../../../fhir_r4.dart';

@JsonCodable()
@Data()
class CompartmentDefinition extends DomainResource {
  CompartmentDefinition({
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
    required this.url,
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
    this.purpose,
    this.purposeElement,
    required this.code,
    this.codeElement,
    required this.search,
    this.searchElement,
    this.resource,
  }) : super(resourceType: R4ResourceType.CompartmentDefinition);

  final FhirUri url;
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
  final FhirMarkdown? purpose;
  final Element? purposeElement;
  final FhirCode code;
  final Element? codeElement;
  final FhirBoolean search;
  final Element? searchElement;
  final List<CompartmentDefinitionResource>? resource;
  @override
  CompartmentDefinition clone() => throw UnimplementedError();
}

@JsonCodable()
@Data()
class CompartmentDefinitionResource extends BackboneElement {
  CompartmentDefinitionResource({
    super.id,
    super.extension_,
    super.modifierExtension,
    required this.code,
    this.codeElement,
    this.param,
    this.paramElement,
    this.documentation,
    this.documentationElement,
  });

  final FhirCode code;
  final Element? codeElement;
  final List<FhirString>? param;
  final List<Element>? paramElement;
  final FhirString? documentation;
  final Element? documentationElement;
  @override
  CompartmentDefinitionResource clone() => throw UnimplementedError();
}
