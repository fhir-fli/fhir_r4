import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class TestScriptOperation {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final Coding type;
  final FhirCode resource;
  final PrimitiveElement Resource;
  final String label;
  final PrimitiveElement Label;
  final String description;
  final PrimitiveElement Description;
  final FhirCode accept;
  final PrimitiveElement Accept;
  final FhirCode contentType;
  final PrimitiveElement ContentType;
  final FhirInteger destination;
  final PrimitiveElement Destination;
  final FhirBoolean encodeRequestUrl;
  final PrimitiveElement EncodeRequestUrl;
  final FhirCode method;
  final PrimitiveElement Method;
  final FhirInteger origin;
  final PrimitiveElement Origin;
  final String params;
  final PrimitiveElement Params;
  final List<TestScriptRequestHeader> requestHeader;
  final FhirId requestId;
  final PrimitiveElement RequestId;
  final FhirId responseId;
  final PrimitiveElement ResponseId;
  final FhirId sourceId;
  final PrimitiveElement SourceId;
  final FhirId targetId;
  final PrimitiveElement TargetId;
  final String url;
  final PrimitiveElement Url;
  const TestScriptOperation({
    this.id,
    this.extension,
    this.modifierExtension,
    this.type,
    this.resource,
    this.Resource,
    this.label,
    this.Label,
    this.description,
    this.Description,
    this.accept,
    this.Accept,
    this.contentType,
    this.ContentType,
    this.destination,
    this.Destination,
    this.encodeRequestUrl,
    this.EncodeRequestUrl,
    this.method,
    this.Method,
    this.origin,
    this.Origin,
    this.params,
    this.Params,
    this.requestHeader,
    this.requestId,
    this.RequestId,
    this.responseId,
    this.ResponseId,
    this.sourceId,
    this.SourceId,
    this.targetId,
    this.TargetId,
    this.url,
    this.Url,
  });
}
