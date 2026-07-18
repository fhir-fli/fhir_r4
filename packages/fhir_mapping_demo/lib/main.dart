import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
import 'package:fhir_r4_mapping/fhir_r4_mapping.dart';
import 'package:fhir_r4_path/fhir_r4_path.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FHIR Mapping R4 Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late TextEditingController _mapController;
  late TextEditingController _sourceController;
  String _result = '';
  String _renderedMap = '';
  StructureMapParser? _parser;
  FhirMapEngine? _engine;

  /// Canonical resources (StructureDefinitions, ConceptMaps, imported maps)
  /// are fetched on demand; plain FHIR-to-FHIR maps need none.
  final OnlineResourceCache _cache = OnlineResourceCache();

  @override
  void initState() {
    super.initState();
    _mapController = TextEditingController(text: _initialMap);
    _sourceController = TextEditingController(text: _initialSource);
  }

  @override
  void dispose() {
    _mapController.dispose();
    _sourceController.dispose();
    super.dispose();
  }

  Future<void> _transform() async {
    try {
      // 1) lazy-init the FML parser and transform engine
      _parser ??= await StructureMapParser.create();
      _engine ??= await FhirMapEngine.create(_cache);

      // 2) parse the FHIR Mapping Language text into a StructureMap
      final structureMap = _parser!.parse(_mapController.text, 'demo-map');

      // 3) parse the JSON text into an R4 Resource
      final jsonMap =
          json.decode(_sourceController.text) as Map<String, dynamic>;
      final source = Resource.fromJson(jsonMap);

      // 4) run the transform (the engine creates the target from the map's
      //    declared target type)
      final target = await _engine!.transformFromFhir(
        source,
        structureMap,
        null,
      );

      setState(() {
        _renderedMap = const JsonEncoder.withIndent(
          '  ',
        ).convert(structureMap.toJson());
        _result = const JsonEncoder.withIndent('  ').convert(target.toJson());
      });
    } catch (e) {
      setState(() {
        _result = 'Error: $e';
      });
    }
  }

  static final Uri _link = Uri.parse('https://fhirpath-lab.com/FhirMapper2');

  Future<void> _launchLink() async {
    if (!await launchUrl(_link, mode: LaunchMode.externalApplication)) {
      throw 'Could not launch $_link';
    }
  }

  Future<void> _showStructureMap() async {
    if (_renderedMap.isEmpty) {
      return;
    }
    await showDialog<void>(
      context: context,
      builder:
          (context) => AlertDialog(
            title: const Text('Parsed StructureMap (JSON)'),
            content: SizedBox(
              width: 600,
              child: SingleChildScrollView(
                child: SelectableText(
                  _renderedMap,
                  style: const TextStyle(fontFamily: 'monospace', fontSize: 12),
                ),
              ),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('Close'),
              ),
            ],
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('FHIR Mapping Language R4 Demo'),
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.bodyMedium,
                children: [
                  const TextSpan(text: 'Inspired by the fhirpath-lab mapper: '),
                  TextSpan(
                    text: _link.toString(),
                    style: const TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                    recognizer: TapGestureRecognizer()..onTap = _launchLink,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Row(
        children: [
          // Left panel: FML map + source resource
          Expanded(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    'StructureMap (FHIR Mapping Language)',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: TextField(
                      controller: _mapController,
                      expands: true,
                      maxLines: null,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Write your FHIR Mapping Language map here',
                      ),
                      style: const TextStyle(fontFamily: 'monospace'),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    'Source Resource (FHIR R4 JSON)',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: TextField(
                      controller: _sourceController,
                      expands: true,
                      maxLines: null,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Paste the source FHIR R4 resource here',
                      ),
                      style: const TextStyle(fontFamily: 'monospace'),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),
          const VerticalDivider(width: 1),
          // Right panel: actions & output
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: _transform,
                        child: const Text('Transform'),
                      ),
                      const SizedBox(width: 8),
                      OutlinedButton(
                        onPressed: _showStructureMap,
                        child: const Text('View parsed StructureMap'),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    'Output Resource',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: SingleChildScrollView(
                      child: SelectableText(
                        _result,
                        style: const TextStyle(fontFamily: 'monospace'),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

const _initialMap = '''
map "http://example.org/StructureMap/QrToPatient" = "QrToPatient"

// Extracts a Patient from a completed QuestionnaireResponse —
// the classic SDC "definition-less" extraction, written in the
// FHIR Mapping Language.

uses "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse" alias QR as source
uses "http://hl7.org/fhir/StructureDefinition/Patient" alias Patient as target

group QrToPatient(source src : QR, target tgt : Patient) {
  src -> tgt.name = create('HumanName') as name then {
    src.item as item where linkId = 'family' then {
      item.answer as a then {
        a.value as v -> name.family = v "set_family";
      } "answer_family";
    } "item_family";
    src.item as item where linkId = 'given' then {
      item.answer as a then {
        a.value as v -> name.given = v "set_given";
      } "answer_given";
    } "item_given";
  } "make_name";
  src.item as item where linkId = 'birthDate' then {
    item.answer as a then {
      a.value as v -> tgt.birthDate = v "set_dob";
    } "answer_dob";
  } "item_dob";
}
''';

const _initialSource = '''
{
  "resourceType": "QuestionnaireResponse",
  "status": "completed",
  "item": [
    {
      "linkId": "family",
      "text": "Family name",
      "answer": [{"valueString": "Zhang"}]
    },
    {
      "linkId": "given",
      "text": "Given name",
      "answer": [{"valueString": "Wei"}]
    },
    {
      "linkId": "birthDate",
      "text": "Date of birth",
      "answer": [{"valueDate": "1984-03-07"}]
    }
  ]
}
''';
