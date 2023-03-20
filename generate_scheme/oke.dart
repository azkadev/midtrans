import 'dart:io';

import 'package:galaxeus_lib/galaxeus_lib.dart';
import 'package:path/path.dart' as path;

void main(List<String> args) async {
  List<Map> scripts_origin = [
    {
      "@type": "Error",
      "message": "",
      "description": "",
    },
    {
      "@type": "ok",

    },
    {
      "@type":"invoice",
    }
  ];
  await jsonToScripts(scripts_origin, directory: Directory(path.join(Directory.current.path, "lib", "scheme")));
}
