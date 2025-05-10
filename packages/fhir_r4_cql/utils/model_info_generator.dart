import 'dart:convert';
import 'dart:io';
import 'package:fhir_r4_cql/fhir_r4_cql.dart';
import 'package:xml/xml.dart';

Future<void> main() async {
  final modelInfoProvider = StandardModelInfoProvider();
  final modelInfo =
      modelInfoProvider.load(ModelIdentifier(id: 'QDM', version: '5.6'));

  if (modelInfo != null) {
    File('qdm/temp1.json')
        .writeAsStringSync(jsonPrettyPrint(modelInfo.toJson()));
  } else {
    print('ModelInfo is null');
  }
}

const jsonEncoder = JsonEncoder.withIndent('    ');

String jsonPrettyPrint(Map<String, dynamic> map) => jsonEncoder.convert(map);

class XsdToModelInfoConverter {
  Future<ModelInfo> convert(String filePath) async {
    final fileContent = await File(filePath).readAsString();
    final document = XmlDocument.parse(fileContent);
    final rootElement = document.rootElement;

    // Extract the target namespace and model name
    final modelName = filePath.split('/').last.replaceAll('.qdm', '');
    final targetNamespace = rootElement.attributes
        .firstWhere((p0) => p0.name.toString() == 'xmlns');

    final modelInfo = ModelInfo(
      name: modelName,
      url: Uri.parse(targetNamespace.value),
      contextInfo: [],
    );

    // Process complex types within the XSD
    for (final complexType in rootElement.findAllElements('complexType')) {
      final name = complexType.attributes
          .firstWhere((p0) => p0.name.toString() == 'name')
          .value;
      if (name == 'CodeableConcept' || name == 'Quantity') {
        // Add these basic types directly to contextInfo
        modelInfo.contextInfo.add(ContextInfo(
          name: name,
          contextType: NamedTypeSpecifier(
            namespace: QName(
              namespaceURI: targetNamespace.value,
              localPart: name,
            ),
          ),
        ));
      } else {
        // Handle complex types
        final contextType = NamedTypeSpecifier(
          namespace: QName(
            namespaceURI: targetNamespace.value,
            localPart: name,
          ),
        );

        // Iterate through elements within the complex type
        for (final element in complexType.findAllElements('*')) {
          final elementName = element.getAttribute('name');
          final elementType = element.getAttribute('type');

          // Skip elements without a name or type attribute
          if (elementName == null || elementType == null) {
            continue;
          }

          // Create ContextInfo for each element and add it to contextInfo
          modelInfo.contextInfo.add(ContextInfo(
            name: elementName,
            contextType: contextType,
          ));
        }
      }
    }

    return modelInfo;
  }
}
