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
}


