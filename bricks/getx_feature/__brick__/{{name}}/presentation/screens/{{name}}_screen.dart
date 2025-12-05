import 'package:get/get.dart';
import 'package:dev_fest/features/{{name}}/presentation/controllers/{{name.snakeCase()}}_controller.dart';
import 'package:flutter/material.dart';

class {{name.pascalCase()}}Screen extends {{#isStateless}} StatelessWidget {{/isStateless}} {{^isStateless}} StatefulWidget {{/isStateless}}{
   {{name.pascalCase()}}Screen({super.key});
  {{^isStateless}}
  @override
  State<{{name.pascalCase()}}Screen> createState()=>_{{name.pascalCase()}}ScreenState();
  }


class _{{name.pascalCase()}}ScreenState extends State<{{name.pascalCase()}}Screen>{
    {{/isStateless}}
    final controller=Get.find<{{name.pascalCase()}}Controller>();
  @override
  Widget build (BuildContext context){
    return Scaffold();
  }
}

