// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_forms/src/widgets/inherited_streamer.dart';
import 'package:example/helpers.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'dart:core';
import 'array.dart';

class ReactiveArrayNullableFormConsumer extends StatelessWidget {
  ReactiveArrayNullableFormConsumer(
      {Key? key, required this.builder, this.child})
      : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, ArrayNullableForm formGroup, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final form = ReactiveArrayNullableForm.of(context);

    if (form is! ArrayNullableForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, form, child);
  }
}

class ArrayNullableFormInheritedStreamer extends InheritedStreamer<dynamic> {
  ArrayNullableFormInheritedStreamer(
      {Key? key,
      required this.form,
      required Stream<dynamic> stream,
      required Widget child})
      : super(stream, child, key: key);

  final ArrayNullableForm form;
}

class ReactiveArrayNullableForm extends StatelessWidget {
  ReactiveArrayNullableForm(
      {Key? key, required this.form, required this.child, this.onWillPop})
      : super(key: key);

  final Widget child;

  final ArrayNullableForm form;

  final WillPopCallback? onWillPop;

  static ArrayNullableForm? of(BuildContext context, {bool listen = true}) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<
              ArrayNullableFormInheritedStreamer>()
          ?.form;
    }

    final element = context.getElementForInheritedWidgetOfExactType<
        ArrayNullableFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as ArrayNullableFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return ArrayNullableFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class ArrayNullableFormBuilder extends StatefulWidget {
  ArrayNullableFormBuilder(
      {Key? key,
      required this.model,
      this.child,
      this.onWillPop,
      required this.builder})
      : super(key: key);

  final ArrayNullable model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, ArrayNullableForm formModel, Widget? child) builder;

  @override
  _ArrayNullableFormBuilderState createState() =>
      _ArrayNullableFormBuilderState();
}

class _ArrayNullableFormBuilderState extends State<ArrayNullableFormBuilder> {
  late FormGroup _form;

  late ArrayNullableForm _formModel;

  @override
  void initState() {
    _form = FormGroup({});
    _formModel = ArrayNullableForm(widget.model, _form, null);

    _form.addAll(_formModel.formElements().controls);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveArrayNullableForm(
      form: _formModel,
      onWillPop: widget.onWillPop,
      child: ReactiveForm(
        formGroup: _form,
        onWillPop: widget.onWillPop,
        child: widget.builder(context, _formModel, widget.child),
      ),
    );
  }
}

class ArrayNullableForm {
  ArrayNullableForm(this.arrayNullable, this.form, this.path) {}

  String emailList = "emailList";

  String fruitList = "fruitList";

  String vegetablesList = "vegetablesList";

  String someList = "someList";

  static String emailListControlName = "emailList";

  static String fruitListControlName = "fruitList";

  static String vegetablesListControlName = "vegetablesList";

  static String someListControlName = "someList";

  final ArrayNullable arrayNullable;

  final FormGroup form;

  final String? path;

  String someListControlPath() =>
      [path, "someList"].whereType<String>().join(".");
  String emailListControlPath() =>
      [path, "emailList"].whereType<String>().join(".");
  String fruitListControlPath() =>
      [path, "fruitList"].whereType<String>().join(".");
  String vegetablesListControlPath() =>
      [path, "vegetablesList"].whereType<String>().join(".");
  List<String?>? get someListValue => someListControl.value;
  List<String> get emailListValue =>
      emailListControl.value?.whereType<String>().toList() ?? [];
  List<bool?> get fruitListValue =>
      fruitListControl.value?.whereType<bool?>().toList() ?? [];
  List<String?>? get vegetablesListValue =>
      vegetablesListControl.value?.whereType<String?>().toList() ?? [];
  bool get containsSomeList => form.contains(someListControlPath());
  bool get containsEmailList => form.contains(emailListControlPath());
  bool get containsFruitList => form.contains(fruitListControlPath());
  bool get containsVegetablesList => form.contains(vegetablesListControlPath());
  Object? get someListErrors => someListControl.errors;
  Object? get emailListErrors => emailListControl.errors;
  Object? get fruitListErrors => fruitListControl.errors;
  Object? get vegetablesListErrors => vegetablesListControl.errors;
  void get someListFocus => form.focus(someListControlPath());
  void get emailListFocus => form.focus(emailListControlPath());
  void get fruitListFocus => form.focus(fruitListControlPath());
  void get vegetablesListFocus => form.focus(vegetablesListControlPath());
  FormControl<List<String?>> get someListControl =>
      form.control(someListControlPath()) as FormControl<List<String?>>;
  FormArray<String> get emailListControl =>
      form.control(emailListControlPath()) as FormArray<String>;
  FormArray<bool> get fruitListControl =>
      form.control(fruitListControlPath()) as FormArray<bool>;
  FormArray<String> get vegetablesListControl =>
      form.control(vegetablesListControlPath()) as FormArray<String>;
  ArrayNullable get model => ArrayNullable(
      someList: someListValue,
      emailList: emailListValue,
      fruitList: fruitListValue,
      vegetablesList: vegetablesListValue);
  FormGroup formElements() => FormGroup({
        emailList: FormArray<String>(
            arrayNullable.emailList
                .map((e) => FormControl<String>(value: e))
                .toList(),
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false),
        fruitList: FormArray<bool>(
            arrayNullable.fruitList
                .map((e) => FormControl<bool>(value: e))
                .toList(),
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false),
        vegetablesList: FormArray<String>(
            arrayNullable.vegetablesList
                    ?.map((e) => FormControl<String>(value: e))
                    .toList() ??
                [],
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false),
        someList: FormControl<List<String?>>(
            value: arrayNullable.someList,
            validators: [],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false)
      },
          validators: [],
          asyncValidators: [],
          asyncValidatorsDebounceTime: 250,
          disabled: false);
}