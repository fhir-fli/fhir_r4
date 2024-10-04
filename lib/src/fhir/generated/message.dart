import 'package:data_class/data_class.dart';
import 'package:fhir_primitives/fhir_primitives.dart';
import 'package:json/json.dart';

import 'export.dart';

@Data()
@JsonCodable()
class MessageDefinition {
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
  final List<Identifier> identifier;
  final String version;
  final PrimitiveElement Version;
  final String name;
  final PrimitiveElement Name;
  final String title;
  final PrimitiveElement Title;
  final List<FhirCanonical> replaces;
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
  final FhirMarkdown copyright;
  final PrimitiveElement Copyright;
  final FhirCanonical base;
  final List<FhirCanonical> parent;
  final Coding eventCoding;
  final String eventUri;
  final PrimitiveElement EventUri;
  final FhirCode category;
  final PrimitiveElement Category;
  final List<MessageDefinitionFocus> focus;
  final FhirCode responseRequired;
  final PrimitiveElement ResponseRequired;
  final List<MessageDefinitionAllowedResponse> allowedResponse;
  final List<FhirCanonical> graph;
}

@Data()
@JsonCodable()
class MessageDefinitionFocus {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCode code;
  final PrimitiveElement Code;
  final FhirCanonical profile;
  final FhirUnsignedInt min;
  final PrimitiveElement Min;
  final String max;
  final PrimitiveElement Max;
}

@Data()
@JsonCodable()
class MessageDefinitionAllowedResponse {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirCanonical message;
  final FhirMarkdown situation;
  final PrimitiveElement Situation;
}

@Data()
@JsonCodable()
class MessageHeader {
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
  final Coding eventCoding;
  final String eventUri;
  final PrimitiveElement EventUri;
  final List<MessageHeaderDestination> destination;
  final Reference sender;
  final Reference enterer;
  final Reference author;
  final MessageHeaderSource source;
  final Reference responsible;
  final CodeableConcept reason;
  final MessageHeaderResponse response;
  final List<Reference> focus;
  final FhirCanonical definition;
}

@Data()
@JsonCodable()
class MessageHeaderDestination {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String name;
  final PrimitiveElement Name;
  final Reference target;
  final FhirUrl endpoint;
  final PrimitiveElement Endpoint;
  final Reference receiver;
}

@Data()
@JsonCodable()
class MessageHeaderSource {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final String name;
  final PrimitiveElement Name;
  final String software;
  final PrimitiveElement Software;
  final String version;
  final PrimitiveElement Version;
  final ContactPoint contact;
  final FhirUrl endpoint;
  final PrimitiveElement Endpoint;
}

@Data()
@JsonCodable()
class MessageHeaderResponse {
  final String id;
  final List<FhirExtension> extension;
  final List<FhirExtension> modifierExtension;
  final FhirId identifier;
  final PrimitiveElement Identifier;
  final FhirCode code;
  final PrimitiveElement Code;
  final Reference details;
}


