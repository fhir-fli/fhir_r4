import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class TestScriptAssert {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String label;
  final PrimitiveElement Label;
  final String description;
  final PrimitiveElement Description;
  final FhirCode direction;
  final PrimitiveElement Direction;
  final String compareToSourceId;
  final PrimitiveElement CompareToSourceId;
  final String compareToSourceExpression;
  final PrimitiveElement CompareToSourceExpression;
  final String compareToSourcePath;
  final PrimitiveElement CompareToSourcePath;
  final FhirCode contentType;
  final PrimitiveElement ContentType;
  final String expression;
  final PrimitiveElement Expression;
  final String headerField;
  final PrimitiveElement HeaderField;
  final String minimumId;
  final PrimitiveElement MinimumId;
  final FhirBoolean navigationLinks;
  final PrimitiveElement NavigationLinks;
  final FhirCode operator;
  final PrimitiveElement Operator;
  final String path;
  final PrimitiveElement Path;
  final FhirCode requestMethod;
  final PrimitiveElement RequestMethod;
  final String requestURL;
  final PrimitiveElement RequestURL;
  final FhirCode resource;
  final PrimitiveElement Resource;
  final FhirCode response;
  final PrimitiveElement Response;
  final String responseCode;
  final PrimitiveElement ResponseCode;
  final FhirId sourceId;
  final PrimitiveElement SourceId;
  final FhirId validateProfileId;
  final PrimitiveElement ValidateProfileId;
  final String value;
  final PrimitiveElement Value;
  final FhirBoolean warningOnly;
  final PrimitiveElement WarningOnly;
  const TestScriptAssert({
    this.id,
    this.extension,
    this.modifierExtension,
    this.label,
    this.Label,
    this.description,
    this.Description,
    this.direction,
    this.Direction,
    this.compareToSourceId,
    this.CompareToSourceId,
    this.compareToSourceExpression,
    this.CompareToSourceExpression,
    this.compareToSourcePath,
    this.CompareToSourcePath,
    this.contentType,
    this.ContentType,
    this.expression,
    this.Expression,
    this.headerField,
    this.HeaderField,
    this.minimumId,
    this.MinimumId,
    this.navigationLinks,
    this.NavigationLinks,
    this.operator,
    this.Operator,
    this.path,
    this.Path,
    this.requestMethod,
    this.RequestMethod,
    this.requestURL,
    this.RequestURL,
    this.resource,
    this.Resource,
    this.response,
    this.Response,
    this.responseCode,
    this.ResponseCode,
    this.sourceId,
    this.SourceId,
    this.validateProfileId,
    this.ValidateProfileId,
    this.value,
    this.Value,
    this.warningOnly,
    this.WarningOnly,
  });
}
