import 'package:data_class/data_class.dart';
import 'package:json/json.dart';

@Data()
@JsonCodable()
class ExampleScenarioOperation {
  final String id;
  final List<Extension> extension;
  final List<Extension> modifierExtension;
  final String number;
  final PrimitiveElement Number;
  final String type;
  final PrimitiveElement Type;
  final String name;
  final PrimitiveElement Name;
  final String initiator;
  final PrimitiveElement Initiator;
  final String receiver;
  final PrimitiveElement Receiver;
  final FhirMarkdown description;
  final PrimitiveElement Description;
  final FhirBoolean initiatorActive;
  final PrimitiveElement InitiatorActive;
  final FhirBoolean receiverActive;
  final PrimitiveElement ReceiverActive;
  final ExampleScenario_ContainedInstance request;
  final ExampleScenario_ContainedInstance response;
  const ExampleScenarioOperation({
    this.id,
    this.extension,
    this.modifierExtension,
    this.number,
    this.Number,
    this.type,
    this.Type,
    this.name,
    this.Name,
    this.initiator,
    this.Initiator,
    this.receiver,
    this.Receiver,
    this.description,
    this.Description,
    this.initiatorActive,
    this.InitiatorActive,
    this.receiverActive,
    this.ReceiverActive,
    this.request,
    this.response,
  });
}
