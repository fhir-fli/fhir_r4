import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class SearchParameter {
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
  final FhirCanonical derivedFrom;
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
  final FhirCode code;
  final PrimitiveElement codeElement;
  final List<FhirCode> base;
  final List<PrimitiveElement> baseElement;
  final FhirCode type;
  final PrimitiveElement typeElement;
  final String expression;
  final PrimitiveElement expressionElement;
  final String xpath;
  final PrimitiveElement xpathElement;
  final FhirCode xpathUsage;
  final PrimitiveElement xpathUsageElement;
  final List<FhirCode> target;
  final List<PrimitiveElement> targetElement;
  final FhirBoolean multipleOr;
  final PrimitiveElement multipleOrElement;
  final FhirBoolean multipleAnd;
  final PrimitiveElement multipleAndElement;
  final List<FhirCode> comparator;
  final List<PrimitiveElement> comparatorElement;
  final List<FhirCode> modifier;
  final List<PrimitiveElement> modifierElement;
  final List<String> chain;
  final List<PrimitiveElement> chainElement;
  final List<SearchParameterComponent> component;
  const SearchParameter({
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
    required this.derivedFrom,
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
    required this.code,
    required this.codeElement,
    required this.base,
    required this.baseElement,
    required this.type,
    required this.typeElement,
    required this.expression,
    required this.expressionElement,
    required this.xpath,
    required this.xpathElement,
    required this.xpathUsage,
    required this.xpathUsageElement,
    required this.target,
    required this.targetElement,
    required this.multipleOr,
    required this.multipleOrElement,
    required this.multipleAnd,
    required this.multipleAndElement,
    required this.comparator,
    required this.comparatorElement,
    required this.modifier,
    required this.modifierElement,
    required this.chain,
    required this.chainElement,
    required this.component,
  });
}

@Data()
@JsonCodable()
class SearchParameterComponent {
  final String id;
  final List<FhirExtension> extension_;
  final List<FhirExtension> modifierExtension;
  final FhirCanonical definition;
  final String expression;
  final PrimitiveElement expressionElement;
  const SearchParameterComponent({
    required this.id,
    required this.extension_,
    required this.modifierExtension,
    required this.definition,
    required this.expression,
    required this.expressionElement,
  });
}


