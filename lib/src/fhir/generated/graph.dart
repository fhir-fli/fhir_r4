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
  final FhirCode start;
  final PrimitiveElement Start;
  final FhirCanonical profile;
  final List<GraphDefinitionLink> link;
}

@Data()
@JsonCodable()
class GraphDefinitionLink {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String path;
  final PrimitiveElement Path;
  final String sliceName;
  final PrimitiveElement SliceName;
  final FhirInteger min;
  final PrimitiveElement Min;
  final String max;
  final PrimitiveElement Max;
  final String description;
  final PrimitiveElement Description;
  final List<GraphDefinitionTarget> target;
}

@Data()
@JsonCodable()
class GraphDefinitionTarget {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode type;
  final PrimitiveElement Type;
  final String params;
  final PrimitiveElement Params;
  final FhirCanonical profile;
  final List<GraphDefinitionCompartment> compartment;
  final List<GraphDefinitionLink> link;
}

@Data()
@JsonCodable()
class GraphDefinitionCompartment {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode use;
  final PrimitiveElement Use;
  final FhirCode code;
  final PrimitiveElement Code;
  final FhirCode rule;
  final PrimitiveElement Rule;
  final String expression;
  final PrimitiveElement Expression;
  final String description;
  final PrimitiveElement Description;
}


