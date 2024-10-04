import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class GraphDefinition {
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
  final List<CodeableConcept> jurisdiction;
  final FhirMarkdown purpose;
  final PrimitiveElement purposeElement;
  final FhirCode start;
  final PrimitiveElement startElement;
  final FhirCanonical profile;
  final List<GraphDefinitionLink> link;
  const GraphDefinition({
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
    required this.jurisdiction,
    required this.purpose,
    required this.purposeElement,
    required this.start,
    required this.startElement,
    required this.profile,
    required this.link,
  });
}

@Data()
@JsonCodable()
class GraphDefinitionLink {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final String path;
  final PrimitiveElement pathElement;
  final String sliceName;
  final PrimitiveElement sliceNameElement;
  final FhirInteger min;
  final PrimitiveElement minElement;
  final String max;
  final PrimitiveElement maxElement;
  final String description;
  final PrimitiveElement descriptionElement;
  final List<GraphDefinitionTarget> target;
  const GraphDefinitionLink({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.path,
    required this.pathElement,
    required this.sliceName,
    required this.sliceNameElement,
    required this.min,
    required this.minElement,
    required this.max,
    required this.maxElement,
    required this.description,
    required this.descriptionElement,
    required this.target,
  });
}

@Data()
@JsonCodable()
class GraphDefinitionTarget {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode type;
  final PrimitiveElement typeElement;
  final String params;
  final PrimitiveElement paramsElement;
  final FhirCanonical profile;
  final List<GraphDefinitionCompartment> compartment;
  final List<GraphDefinitionLink> link;
  const GraphDefinitionTarget({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.type,
    required this.typeElement,
    required this.params,
    required this.paramsElement,
    required this.profile,
    required this.compartment,
    required this.link,
  });
}

@Data()
@JsonCodable()
class GraphDefinitionCompartment {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCode use;
  final PrimitiveElement useElement;
  final FhirCode code;
  final PrimitiveElement codeElement;
  final FhirCode rule;
  final PrimitiveElement ruleElement;
  final String expression;
  final PrimitiveElement expressionElement;
  final String description;
  final PrimitiveElement descriptionElement;
  const GraphDefinitionCompartment({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.use,
    required this.useElement,
    required this.code,
    required this.codeElement,
    required this.rule,
    required this.ruleElement,
    required this.expression,
    required this.expressionElement,
    required this.description,
    required this.descriptionElement,
  });
}


