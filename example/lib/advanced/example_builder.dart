import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:folly_fields/crud/abstract_ui_builder.dart';
import 'package:folly_fields_example/example_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

///
///
///
class ExampleBuilder extends AbstractUIBuilder<int, ExampleModel> {
  ///
  ///
  ///
  ExampleBuilder([String prefix = '']) : super(prefix);

  ///
  ///
  ///
  @override
  String getInternalSingle() => 'Exemplo';

  ///
  ///
  ///
  @override
  String getInternalPlural() => 'Exemplos';

  ///
  ///
  ///
  @override
  Widget getLeading(ExampleModel model) => Icon(
        FontAwesomeIcons.solidCircle,
        color: (model.integer ?? 0).isEven ? Colors.red : Colors.green,
      );

  ///
  ///
  ///
  @override
  Widget getTitle(ExampleModel model) => Text(model.text ?? 'Sem Texto');

  ///
  ///
  ///
  @override
  Widget getSubtitle(ExampleModel model) => Text(model.email ?? 'Sem E-mail');
}
