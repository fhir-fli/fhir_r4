import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class CompartmentDefinition {
  final dynamic resourceType;
  final String id;
  final FhirMeta meta;
  final FhirUri implicitRules;
  final PrimitiveElement implicitRulesElement;
  final FhirCode language;
  final PrimitiveElement languageElement;
  final Narrative text;
  final List<Resource> contained;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirUri url;
  final PrimitiveElement urlElement;
  final String version;
  final PrimitiveElement versionElement;
  final String name;
  final PrimitiveElement nameElement;
  final FhirCode status;
  final PrimitiveElement statusElement;
  final FhirBoolean experimental;
  final PrimitiveElement experimentalElement;
  final FhirDateTime date;
  final PrimitiveElement dateElement;
  final String publisher;
  final PrimitiveElement publisherElement;
  final List<ContactDetail> contact;
  final FhirMarkdown description;
  final PrimitiveElement descriptionElement;
  final List<UsageContext> useContext;
  final FhirMarkdown purpose;
  final PrimitiveElement purposeElement;
  final FhirCode code;
  final PrimitiveElement codeElement;
  final FhirBoolean search;
  final PrimitiveElement searchElement;
  final List<CompartmentDefinitionResource> resource;
  const CompartmentDefinition({
    required this.resourceType,
    required this.id,
    required this.meta,
    required this.implicitRules,
    required this.implicitRulesElement,
    required this.language,
    required this.languageElement,
    required this.text,
    required this.contained,
    required this.extension_,
    required this.modifierExtension,
    required this.url,
    required this.urlElement,
    required this.version,
    required this.versionElement,
    required this.name,
    required this.nameElement,
    required this.status,
    required this.statusElement,
    required this.experimental,
    required this.experimentalElement,
    required this.date,
    required this.dateElement,
    required this.publisher,
    required this.publisherElement,
    required this.contact,
    required this.description,
    required this.descriptionElement,
    required this.useContext,
    required this.purpose,
    required this.purposeElement,
    required this.code,
    required this.codeElement,
    required this.search,
    required this.searchElement,
    required this.resource,
  });
}

@Data()
@JsonCodable()
class CompartmentDefinitionResource {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode code;
  final PrimitiveElement codeElement;
  final List<String> param;
  final List<PrimitiveElement> paramElement;
  final String documentation;
  final PrimitiveElement documentationElement;
  const CompartmentDefinitionResource({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.code,
    required this.codeElement,
    required this.param,
    required this.paramElement,
    required this.documentation,
    required this.documentationElement,
  });
}


