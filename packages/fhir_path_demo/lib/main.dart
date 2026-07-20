import 'dart:convert';

import 'package:fhir_r4/fhir_r4.dart';
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
      title: 'FHIRPath R4 Demo',
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
  late TextEditingController _resourceController;
  late TextEditingController _variablesController;
  late TextEditingController _expressionController;
  String _result = '';
  FHIRPathEngine? _fhirPathEngine;
  final WorkerContext _context = WorkerContext(
    resourceCache: OnlineResourceCache(),
  );

  @override
  void initState() {
    super.initState();
    _resourceController = TextEditingController(text: _initialText);
    _variablesController = TextEditingController();
    _expressionController = TextEditingController(text: _initialPath);
  }

  @override
  void dispose() {
    _resourceController.dispose();
    _variablesController.dispose();
    _expressionController.dispose();
    super.dispose();
  }

  /// Converts a decoded JSON value into the `List<FhirBase>` form the
  /// engine expects for %-variable lookups. Objects must be FHIR resources.
  static List<FhirBase> _toFhirValues(dynamic value) {
    if (value == null) return <FhirBase>[];
    if (value is List) {
      return value.expand(_toFhirValues).toList();
    }
    if (value is bool) return <FhirBase>[FhirBoolean(value)];
    if (value is int) return <FhirBase>[FhirInteger(value)];
    if (value is double) return <FhirBase>[FhirDecimal(value)];
    if (value is String) return <FhirBase>[FhirString(value)];
    if (value is Map<String, dynamic> && value.containsKey('resourceType')) {
      return <FhirBase>[Resource.fromJson(value)];
    }
    throw FormatException(
      'Unsupported variable value (use JSON scalars, lists of scalars, or '
      'FHIR resources with a "resourceType"): $value',
    );
  }

  Future<void> _evaluate() async {
    try {
      // 1) lazy‑init engine
      _fhirPathEngine ??= await FHIRPathEngine.create(_context);

      // 2) parse the JSON text into an R4 Resource
      final jsonMap =
          json.decode(_resourceController.text) as Map<String, dynamic>;
      final resource = Resource.fromJson(jsonMap);

      // 3) if the user supplied a variables map, convert each entry into
      //    the List<FhirBase> form the engine's %-variable lookup expects
      //    (raw JSON values would silently resolve to empty)
      Map<String, dynamic>? environment;
      if (_variablesController.text.trim().isNotEmpty) {
        final rawVars =
            json.decode(_variablesController.text) as Map<String, dynamic>;
        environment = <String, dynamic>{
          for (final entry in rawVars.entries)
            (entry.key.startsWith('%')
                ? entry.key.substring(1)
                : entry.key): _toFhirValues(entry.value),
        };
      }

      // 4) parse the expression, then evaluate with context, root & base all = `resource`
      final node = _fhirPathEngine!.parse(_expressionController.text);
      final results = await _fhirPathEngine!.evaluateWithContext(
        /* appContext  */ null,
        /* focusRes    */ resource,
        /* rootRes     */ resource,
        /* baseContext */ resource,
        /* expr node   */ node,
        environment: environment,
      );

      final values =
          results
              .map(
                (e) =>
                    e is PrimitiveType
                        ? e.toString()
                        : e is FhirBase
                        ? e.toJson()
                        : e.toString(),
              )
              .toList();

      setState(() {
        _result = const JsonEncoder.withIndent('  ').convert(values);
      });
    } catch (e) {
      setState(() {
        _result = 'Error: $e';
      });
    }
  }

  static final Uri _link = Uri.parse('https://hl7.github.io/fhirpath.js/');

  Future<void> _launchLink() async {
    if (!await launchUrl(_link, mode: LaunchMode.externalApplication)) {
      // handle error
      throw 'Could not launch $_link';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('FHIRPath R4 Demo'),
            RichText(
              text: TextSpan(
                style: Theme.of(context).textTheme.bodyMedium,
                children: [
                  const TextSpan(text: 'Full Credit to '),
                  TextSpan(
                    text: _link.toString(),
                    style: const TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                    recognizer: TapGestureRecognizer()..onTap = _launchLink,
                  ),
                  const TextSpan(
                    text: ' who did this first, and I copied their idea',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Row(
        children: [
          // Left panel: Context & Variables
          Expanded(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    'Context Resource (FHIR R4 JSON)',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: TextField(
                      controller: _resourceController,
                      expands: true,
                      maxLines: null,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Paste your FHIR R4 resource here',
                      ),
                      style: const TextStyle(fontFamily: 'monospace'),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    'Variables (optional JSON map)',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: TextField(
                      controller: _variablesController,
                      maxLines: null,
                      expands: true,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: '{ "minAge": 18 }  (use as %minAge)',
                      ),
                      style: const TextStyle(fontFamily: 'monospace'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const VerticalDivider(width: 1),
          // Right panel: Expression & Results
          Expanded(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    'FHIRPath Expression',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: TextField(
                    controller: _expressionController,
                    onSubmitted: (_) => _evaluate(),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Enter FHIRPath expression',
                    ),
                    style: const TextStyle(fontFamily: 'monospace'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: ElevatedButton(
                    onPressed: _evaluate,
                    child: const Text('Evaluate'),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    'Results',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: SingleChildScrollView(
                      child: Text(
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

const _initialPath =
    "QuestionnaireResponse.item.descendants().where(linkId='vitaminKDose2').answer.value";

const _initialText = '''
{
    "resourceType": "QuestionnaireResponse",
    "id": "bb",
    "status": "completed",
    "subject": {
        "reference": "http://hl7.org/fhir/Patient/1",
        "type": "Patient"
    },
    "authored": "2013-02-19T14:15:00+10:00",
    "author": {
        "reference": "http://hl7.org/fhir/Practitioner/example",
        "type": "Practitioner"
    },
    "item": [
        {
            "linkId": "birthDetails",
            "text": "Birth details - To be completed by health professional",
            "item": [
                {
                    "linkId": "group",
                    "item": [
                        {
                            "linkId": "nameOfChild",
                            "text": "Name of child",
                            "answer": [
                                {
                                    "valueString": "Cathy Jones"
                                }
                            ]
                        },
                        {
                            "linkId": "sex",
                            "text": "Sex",
                            "answer": [
                                {
                                    "valueCoding": {
                                        "code": "f"
                                    }
                                }
                            ]
                        }
                    ]
                },
                {
                    "linkId": "neonatalInformation",
                    "text": "Neonatal Information",
                    "item": [
                        {
                            "linkId": "birthWeight",
                            "text": "Birth weight (kg)",
                            "answer": [
                                {
                                    "valueDecimal": 3.25
                                }
                            ]
                        },
                        {
                            "linkId": "birthLength",
                            "text": "Birth length (cm)",
                            "answer": [
                                {
                                    "valueDecimal": 44.3
                                }
                            ]
                        },
                        {
                            "linkId": "vitaminKgiven",
                            "text": "Vitamin K given",
                            "answer": [
                                {
                                    "valueCoding": {
                                        "code": "INJECTION"
                                    },
                                    "item": [
                                        {
                                            "linkId": "vitaminKgivenDoses",
                                            "item": [
                                                {
                                                    "linkId": "vitaminKDose1",
                                                    "text": "1st dose",
                                                    "answer": [
                                                        {
                                                            "valueDate": "1972-11-30"
                                                        }
                                                    ]
                                                },
                                                {
                                                    "linkId": "vitaminKDose2",
                                                    "text": "2nd dose",
                                                    "answer": [
                                                        {
                                                            "valueDate": "1972-12-11"
                                                        }
                                                    ]
                                                }
                                            ]
                                        }
                                    ]
                                }
                            ]
                        },
                        {
                            "linkId": "hepBgiven",
                            "text": "Hep B given y / n",
                            "answer": [
                                {
                                    "valueBoolean": true,
                                    "item": [
                                        {
                                            "linkId": "hepBgivenDate",
                                            "text": "Date given",
                                            "answer": [
                                                {
                                                    "valueDate": "1972-12-04"
                                                }
                                            ]
                                        }
                                    ]
                                }
                            ]
                        },
                        {
                            "linkId": "abnormalitiesAtBirth",
                            "text": "Abnormalities noted at birth",
                            "answer": [
                                {
                                    "valueString": "Already able to speak Chinese"
                                }
                            ]
                        }
                    ]
                }
            ]
        }
    ]
}
''';
