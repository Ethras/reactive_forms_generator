@Timeout(Duration(seconds: 145))

import 'package:test/test.dart';

import 'helpers.dart';

const fileName = 'login';

void main() {
  group('reactive_forms_generator', () {
    test(
      'Form with simple non-nullable types',
      () async {
        return testGenerator(
          fileName: fileName,
          model: '''
            import 'package:flutter/material.dart';
            import 'package:reactive_forms/reactive_forms.dart';
            import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
            
            part '$fileName.gform.dart';
          
            Map<String, dynamic>? requiredValidator(AbstractControl<dynamic> control) {
              return Validators.required(control);
            }
              
            enum UserMode { user, admin }
            
            @ReactiveFormAnnotation()
            class Login {
              final String email;
            
              final String password;
            
              final bool rememberMe;
            
              final String theme;
            
              final UserMode mode;
            
              final int timeout;
            
              final double height;
            
              final String? unAnnotated;
            
              Login({
                @FormControlAnnotation(
                  validators: const [
                    requiredValidator,
                  ],
                )
                    this.email = 'default@e.mail',
                @FormControlAnnotation(
                  validators: const [
                    requiredValidator,
                  ],
                )
                    required this.password,
                @FormControlAnnotation(
                  validators: const [
                    requiredValidator,
                  ],
                )
                    required this.rememberMe,
                @FormControlAnnotation(
                  validators: const [
                    requiredValidator,
                  ],
                )
                    required this.theme,
                @FormControlAnnotation(
                  validators: const [
                    requiredValidator,
                  ],
                )
                    required this.mode,
                @FormControlAnnotation(
                  validators: const [
                    requiredValidator,
                  ],
                )
                    required this.timeout,
                @FormControlAnnotation(
                  validators: const [
                    requiredValidator,
                  ],
                )
                    required this.height,
                this.unAnnotated,
              });
            }
          ''',
          generatedFile: generatedFile,
        );
      },
    );
  });
}

const generatedFile = r'''// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file:

part of 'login.dart';

// **************************************************************************
// ReactiveFormsGenerator
// **************************************************************************

class ReactiveLoginFormConsumer extends StatelessWidget {
  const ReactiveLoginFormConsumer({Key? key, required this.builder, this.child})
      : super(key: key);

  final Widget? child;

  final Widget Function(
      BuildContext context, LoginForm formModel, Widget? child) builder;

  @override
  Widget build(BuildContext context) {
    final formModel = ReactiveLoginForm.of(context);

    if (formModel is! LoginForm) {
      throw FormControlParentNotFoundException(this);
    }
    return builder(context, formModel, child);
  }
}

class LoginFormInheritedStreamer extends InheritedStreamer<dynamic> {
  const LoginFormInheritedStreamer(
      {Key? key,
      required this.form,
      required Stream<dynamic> stream,
      required Widget child})
      : super(stream, child, key: key);

  final LoginForm form;
}

class ReactiveLoginForm extends StatelessWidget {
  const ReactiveLoginForm(
      {Key? key, required this.form, required this.child, this.onWillPop})
      : super(key: key);

  final Widget child;

  final LoginForm form;

  final WillPopCallback? onWillPop;

  static LoginForm? of(BuildContext context, {bool listen = true}) {
    if (listen) {
      return context
          .dependOnInheritedWidgetOfExactType<LoginFormInheritedStreamer>()
          ?.form;
    }

    final element = context
        .getElementForInheritedWidgetOfExactType<LoginFormInheritedStreamer>();
    return element == null
        ? null
        : (element.widget as LoginFormInheritedStreamer).form;
  }

  @override
  Widget build(BuildContext context) {
    return LoginFormInheritedStreamer(
      form: form,
      stream: form.form.statusChanged,
      child: WillPopScope(
        onWillPop: onWillPop,
        child: child,
      ),
    );
  }
}

class LoginFormBuilder extends StatefulWidget {
  const LoginFormBuilder(
      {Key? key, this.model, this.child, this.onWillPop, required this.builder})
      : super(key: key);

  final Login? model;

  final Widget? child;

  final WillPopCallback? onWillPop;

  final Widget Function(
      BuildContext context, LoginForm formModel, Widget? child) builder;

  @override
  _LoginFormBuilderState createState() => _LoginFormBuilderState();
}

class _LoginFormBuilderState extends State<LoginFormBuilder> {
  late FormGroup _form;

  late LoginForm _formModel;

  @override
  void initState() {
    _form = FormGroup({});
    _formModel = LoginForm(widget.model, _form, null);

    _form.addAll(_formModel.formElements().controls);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ReactiveLoginForm(
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

class LoginForm implements FormModel<Login> {
  LoginForm(this.login, this.form, this.path) {}

  static String emailControlName = "email";

  static String passwordControlName = "password";

  static String rememberMeControlName = "rememberMe";

  static String themeControlName = "theme";

  static String modeControlName = "mode";

  static String timeoutControlName = "timeout";

  static String heightControlName = "height";

  final Login? login;

  final FormGroup form;

  final String? path;

  String emailControlPath() => pathBuilder(emailControlName);
  String passwordControlPath() => pathBuilder(passwordControlName);
  String rememberMeControlPath() => pathBuilder(rememberMeControlName);
  String themeControlPath() => pathBuilder(themeControlName);
  String modeControlPath() => pathBuilder(modeControlName);
  String timeoutControlPath() => pathBuilder(timeoutControlName);
  String heightControlPath() => pathBuilder(heightControlName);
  String get emailValue => emailControl.value as String;
  String get passwordValue => passwordControl.value as String;
  bool get rememberMeValue => rememberMeControl.value as bool;
  String get themeValue => themeControl.value as String;
  UserMode get modeValue => modeControl.value as UserMode;
  int get timeoutValue => timeoutControl.value as int;
  double get heightValue => heightControl.value as double;
  bool get containsEmail {
    try {
      form.control(emailControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsPassword {
    try {
      form.control(passwordControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsRememberMe {
    try {
      form.control(rememberMeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsTheme {
    try {
      form.control(themeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsMode {
    try {
      form.control(modeControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsTimeout {
    try {
      form.control(timeoutControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  bool get containsHeight {
    try {
      form.control(heightControlPath());
      return true;
    } catch (e) {
      return false;
    }
  }

  Object? get emailErrors => emailControl.errors;
  Object? get passwordErrors => passwordControl.errors;
  Object? get rememberMeErrors => rememberMeControl.errors;
  Object? get themeErrors => themeControl.errors;
  Object? get modeErrors => modeControl.errors;
  Object? get timeoutErrors => timeoutControl.errors;
  Object? get heightErrors => heightControl.errors;
  void get emailFocus => form.focus(emailControlPath());
  void get passwordFocus => form.focus(passwordControlPath());
  void get rememberMeFocus => form.focus(rememberMeControlPath());
  void get themeFocus => form.focus(themeControlPath());
  void get modeFocus => form.focus(modeControlPath());
  void get timeoutFocus => form.focus(timeoutControlPath());
  void get heightFocus => form.focus(heightControlPath());
  void emailValueUpdate(String value,
      {bool updateParent = true, bool emitEvent = true}) {
    emailControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void passwordValueUpdate(String value,
      {bool updateParent = true, bool emitEvent = true}) {
    passwordControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void rememberMeValueUpdate(bool value,
      {bool updateParent = true, bool emitEvent = true}) {
    rememberMeControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void themeValueUpdate(String value,
      {bool updateParent = true, bool emitEvent = true}) {
    themeControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void modeValueUpdate(UserMode value,
      {bool updateParent = true, bool emitEvent = true}) {
    modeControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void timeoutValueUpdate(int value,
      {bool updateParent = true, bool emitEvent = true}) {
    timeoutControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void heightValueUpdate(double value,
      {bool updateParent = true, bool emitEvent = true}) {
    heightControl.updateValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void emailValuePatch(String value,
      {bool updateParent = true, bool emitEvent = true}) {
    emailControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void passwordValuePatch(String value,
      {bool updateParent = true, bool emitEvent = true}) {
    passwordControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void rememberMeValuePatch(bool value,
      {bool updateParent = true, bool emitEvent = true}) {
    rememberMeControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void themeValuePatch(String value,
      {bool updateParent = true, bool emitEvent = true}) {
    themeControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void modeValuePatch(UserMode value,
      {bool updateParent = true, bool emitEvent = true}) {
    modeControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void timeoutValuePatch(int value,
      {bool updateParent = true, bool emitEvent = true}) {
    timeoutControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void heightValuePatch(double value,
      {bool updateParent = true, bool emitEvent = true}) {
    heightControl.patchValue(value,
        updateParent: updateParent, emitEvent: emitEvent);
  }

  void emailValueReset(String value,
          {bool updateParent = true,
          bool emitEvent = true,
          bool removeFocus = false,
          bool? disabled}) =>
      emailControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void passwordValueReset(String value,
          {bool updateParent = true,
          bool emitEvent = true,
          bool removeFocus = false,
          bool? disabled}) =>
      passwordControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void rememberMeValueReset(bool value,
          {bool updateParent = true,
          bool emitEvent = true,
          bool removeFocus = false,
          bool? disabled}) =>
      rememberMeControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void themeValueReset(String value,
          {bool updateParent = true,
          bool emitEvent = true,
          bool removeFocus = false,
          bool? disabled}) =>
      themeControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void modeValueReset(UserMode value,
          {bool updateParent = true,
          bool emitEvent = true,
          bool removeFocus = false,
          bool? disabled}) =>
      modeControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void timeoutValueReset(int value,
          {bool updateParent = true,
          bool emitEvent = true,
          bool removeFocus = false,
          bool? disabled}) =>
      timeoutControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  void heightValueReset(double value,
          {bool updateParent = true,
          bool emitEvent = true,
          bool removeFocus = false,
          bool? disabled}) =>
      heightControl.reset(
          value: value, updateParent: updateParent, emitEvent: emitEvent);
  FormControl<String> get emailControl =>
      form.control(emailControlPath()) as FormControl<String>;
  FormControl<String> get passwordControl =>
      form.control(passwordControlPath()) as FormControl<String>;
  FormControl<bool> get rememberMeControl =>
      form.control(rememberMeControlPath()) as FormControl<bool>;
  FormControl<String> get themeControl =>
      form.control(themeControlPath()) as FormControl<String>;
  FormControl<UserMode> get modeControl =>
      form.control(modeControlPath()) as FormControl<UserMode>;
  FormControl<int> get timeoutControl =>
      form.control(timeoutControlPath()) as FormControl<int>;
  FormControl<double> get heightControl =>
      form.control(heightControlPath()) as FormControl<double>;
  Login get model => Login(
      email: emailValue,
      password: passwordValue,
      rememberMe: rememberMeValue,
      theme: themeValue,
      mode: modeValue,
      timeout: timeoutValue,
      height: heightValue,
      unAnnotated: login?.unAnnotated);
  void updateValue(Login value,
          {bool updateParent = true, bool emitEvent = true}) =>
      form.updateValue(
          LoginForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void resetValue(Login value,
          {bool updateParent = true, bool emitEvent = true}) =>
      form.reset(
          value: LoginForm(value, FormGroup({}), null).formElements().rawValue,
          updateParent: updateParent,
          emitEvent: emitEvent);
  void reset({bool updateParent = true, bool emitEvent = true}) => form.reset(
      value: formElements().rawValue,
      updateParent: updateParent,
      emitEvent: emitEvent);
  String pathBuilder(String? pathItem) =>
      [path, pathItem].whereType<String>().join(".");
  FormGroup formElements() => FormGroup({
        emailControlName: FormControl<String>(
            value: login?.email,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        passwordControlName: FormControl<String>(
            value: login?.password,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        rememberMeControlName: FormControl<bool>(
            value: login?.rememberMe,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        themeControlName: FormControl<String>(
            value: login?.theme,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        modeControlName: FormControl<UserMode>(
            value: login?.mode,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        timeoutControlName: FormControl<int>(
            value: login?.timeout,
            validators: [requiredValidator],
            asyncValidators: [],
            asyncValidatorsDebounceTime: 250,
            disabled: false,
            touched: false),
        heightControlName: FormControl<double>(
            value: login?.height,
            validators: [requiredValidator],
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
''';
