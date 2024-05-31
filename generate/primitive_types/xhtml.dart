// Package imports:
import 'package:xml/xml.dart';

// FhirXhtml : Boolean
///
/// When invoked on a single xhtml element returns true if the rules around
/// HTML usage are met, and false if they are not. The return value is empty
/// on any other kind of element, or a collection of xhtml elements.
class FhirXhtml {
  FhirXhtml();

  List<dynamic> execute(List<dynamic> results, Map<String, dynamic> passed) {
    if (results.length != 1) {
      return <dynamic>[];
    } else if (results.first is String) {
      final String result = results.first.toString();
      return <dynamic>[validateXhtml(result)];
    } else {
      return <dynamic>[];
    }
  }

  String verbosePrint(int indent) => '${"  " * indent}HtmlCheckerParser';

  String prettyPrint([int indent = 2]) => '.htmlChecks()';

  final List<String> allowedElements = <String>[
    'div',
    'p',
    'b',
    'i',
    'em',
    'strong',
    'ul',
    'ol',
    'li',
    'span',
    'br',
    'a',
    'img',
    'h1',
    'h2',
    'h3',
    'h4',
    'h5',
    'h6',
    'table',
    'thead',
    'tbody',
    'tr',
    'th',
    'td'
  ];

  final List<String> prohibitedElements = <String>[
    'head',
    'body',
    'script',
    'form',
    'base',
    'link',
    'frame',
    'iframe',
    'object',
    'frameset',
    'meta',
    'input',
    'textarea',
    'button',
    'select',
    'option',
    'style'
  ];

  bool validateXhtml(String xhtml) {
    try {
      final XmlDocument document = XmlDocument.parse(xhtml);

      final XmlElement rootElement = document.rootElement;
      if (rootElement.name.local != 'div') {
        return false;
      }

      if (rootElement.getAttribute('xmlns') != 'http://www.w3.org/1999/xhtml') {
        return false;
      }

      return _validateElement(rootElement, isRoot: true);
    } catch (e) {
      print('Error parsing XHTML: $e');
      return false;
    }
  }

  bool _validateElement(XmlElement element, {bool isRoot = false}) {
    if (!allowedElements.contains(element.name.local) &&
        prohibitedElements.contains(element.name.local)) {
      return false;
    }

    for (final XmlAttribute attribute in element.attributes) {
      if (attribute.name.local == 'style' || attribute.name.local == 'class') {
        continue;
      } else if (attribute.name.local == 'src' &&
          attribute.value.startsWith('#')) {
        continue;
      } else if (attribute.name.local == 'xml:id' ||
          attribute.name.local == 'lang') {
        continue;
      } else if (isRoot &&
          attribute.name.local == 'xmlns' &&
          attribute.value == 'http://www.w3.org/1999/xhtml') {
        continue;
      } else if (element.name.local == 'a' && attribute.name.local == 'href') {
        continue;
      } else {
        return false;
      }
    }

    for (final XmlNode child in element.children) {
      if (child is XmlElement && !_validateElement(child)) {
        return false;
      }
    }

    if (element.name.local == 'div' && element.innerText.trim().isEmpty) {
      return false;
    }

    return true;
  }
}
