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
  final PrimitiveElement ImplicitRules;
  final FhirCode language;
  final PrimitiveElement Language;
  final Narrative text;
  final List<ResourceList> contained;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirUri url;
  final PrimitiveElement Url;
  final String version;
  final PrimitiveElement Version;
  final String name;
  final PrimitiveElement Name;
  final FhirCanonical derivedFrom;
  final FhirCode status;
  final PrimitiveElement Status;
  final FhirBoolean experimental;
  final PrimitiveElement Experimental;
  final FhirDateTime date;
  final PrimitiveElement Date;
  final String publisher;
  final PrimitiveElement Publisher;
  final List<ContactDetail> contact;
  final FhirMarkdown description;
  final PrimitiveElement Description;
  final List<UsageContext> useContext;
  final List<CodeableConcept> jurisdiction;
  final FhirMarkdown purpose;
  final PrimitiveElement Purpose;
  final FhirCode code;
  final PrimitiveElement Code;
  final List<FhirCode> base;
  final List<PrimitiveElement> Base;
  final FhirCode type;
  final PrimitiveElement Type;
  final String expression;
  final PrimitiveElement Expression;
  final String xpath;
  final PrimitiveElement Xpath;
  final FhirCode xpathUsage;
  final PrimitiveElement XpathUsage;
  final List<FhirCode> target;
  final List<PrimitiveElement> Target;
  final FhirBoolean multipleOr;
  final PrimitiveElement MultipleOr;
  final FhirBoolean multipleAnd;
  final PrimitiveElement MultipleAnd;
  final List<FhirCode> comparator;
  final List<PrimitiveElement> Comparator;
  final List<FhirCode> modifier;
  final List<PrimitiveElement> Modifier;
  final List<String> chain;
  final List<PrimitiveElement> Chain;
  final List<SearchParameterComponent> component;
}

@Data()
@JsonCodable()
class SearchParameterComponent {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCanonical definition;
  final String expression;
  final PrimitiveElement Expression;
}


