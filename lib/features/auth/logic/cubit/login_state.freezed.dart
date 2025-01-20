// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(AuthResponseModel loginResponse) loginSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) loginError,
    required TResult Function() registerLoading,
    required TResult Function(AuthResponseModel loginResponse) registerSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) registerError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(AuthResponseModel loginResponse)? loginSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? loginError,
    TResult? Function()? registerLoading,
    TResult? Function(AuthResponseModel loginResponse)? registerSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? registerError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(AuthResponseModel loginResponse)? loginSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? loginError,
    TResult Function()? registerLoading,
    TResult Function(AuthResponseModel loginResponse)? registerSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? registerError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoginLoading value) loginLoading,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(LoginError value) loginError,
    required TResult Function(RegisterLoading value) registerLoading,
    required TResult Function(RegisterSuccess value) registerSuccess,
    required TResult Function(RegisterError value) registerError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoginLoading value)? loginLoading,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(LoginError value)? loginError,
    TResult? Function(RegisterLoading value)? registerLoading,
    TResult? Function(RegisterSuccess value)? registerSuccess,
    TResult? Function(RegisterError value)? registerError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoginLoading value)? loginLoading,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(LoginError value)? loginError,
    TResult Function(RegisterLoading value)? registerLoading,
    TResult Function(RegisterSuccess value)? registerSuccess,
    TResult Function(RegisterError value)? registerError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginStateCopyWith<$Res> {
  factory $LoginStateCopyWith(
          LoginState value, $Res Function(LoginState) then) =
      _$LoginStateCopyWithImpl<$Res, LoginState>;
}

/// @nodoc
class _$LoginStateCopyWithImpl<$Res, $Val extends LoginState>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'LoginState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(AuthResponseModel loginResponse) loginSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) loginError,
    required TResult Function() registerLoading,
    required TResult Function(AuthResponseModel loginResponse) registerSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) registerError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(AuthResponseModel loginResponse)? loginSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? loginError,
    TResult? Function()? registerLoading,
    TResult? Function(AuthResponseModel loginResponse)? registerSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? registerError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(AuthResponseModel loginResponse)? loginSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? loginError,
    TResult Function()? registerLoading,
    TResult Function(AuthResponseModel loginResponse)? registerSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? registerError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoginLoading value) loginLoading,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(LoginError value) loginError,
    required TResult Function(RegisterLoading value) registerLoading,
    required TResult Function(RegisterSuccess value) registerSuccess,
    required TResult Function(RegisterError value) registerError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoginLoading value)? loginLoading,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(LoginError value)? loginError,
    TResult? Function(RegisterLoading value)? registerLoading,
    TResult? Function(RegisterSuccess value)? registerSuccess,
    TResult? Function(RegisterError value)? registerError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoginLoading value)? loginLoading,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(LoginError value)? loginError,
    TResult Function(RegisterLoading value)? registerLoading,
    TResult Function(RegisterSuccess value)? registerSuccess,
    TResult Function(RegisterError value)? registerError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LoginState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoginLoadingImplCopyWith<$Res> {
  factory _$$LoginLoadingImplCopyWith(
          _$LoginLoadingImpl value, $Res Function(_$LoginLoadingImpl) then) =
      __$$LoginLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoginLoadingImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginLoadingImpl>
    implements _$$LoginLoadingImplCopyWith<$Res> {
  __$$LoginLoadingImplCopyWithImpl(
      _$LoginLoadingImpl _value, $Res Function(_$LoginLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoginLoadingImpl implements LoginLoading {
  const _$LoginLoadingImpl();

  @override
  String toString() {
    return 'LoginState.loginLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoginLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(AuthResponseModel loginResponse) loginSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) loginError,
    required TResult Function() registerLoading,
    required TResult Function(AuthResponseModel loginResponse) registerSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) registerError,
  }) {
    return loginLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(AuthResponseModel loginResponse)? loginSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? loginError,
    TResult? Function()? registerLoading,
    TResult? Function(AuthResponseModel loginResponse)? registerSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? registerError,
  }) {
    return loginLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(AuthResponseModel loginResponse)? loginSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? loginError,
    TResult Function()? registerLoading,
    TResult Function(AuthResponseModel loginResponse)? registerSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? registerError,
    required TResult orElse(),
  }) {
    if (loginLoading != null) {
      return loginLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoginLoading value) loginLoading,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(LoginError value) loginError,
    required TResult Function(RegisterLoading value) registerLoading,
    required TResult Function(RegisterSuccess value) registerSuccess,
    required TResult Function(RegisterError value) registerError,
  }) {
    return loginLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoginLoading value)? loginLoading,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(LoginError value)? loginError,
    TResult? Function(RegisterLoading value)? registerLoading,
    TResult? Function(RegisterSuccess value)? registerSuccess,
    TResult? Function(RegisterError value)? registerError,
  }) {
    return loginLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoginLoading value)? loginLoading,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(LoginError value)? loginError,
    TResult Function(RegisterLoading value)? registerLoading,
    TResult Function(RegisterSuccess value)? registerSuccess,
    TResult Function(RegisterError value)? registerError,
    required TResult orElse(),
  }) {
    if (loginLoading != null) {
      return loginLoading(this);
    }
    return orElse();
  }
}

abstract class LoginLoading implements LoginState {
  const factory LoginLoading() = _$LoginLoadingImpl;
}

/// @nodoc
abstract class _$$LoginSuccessImplCopyWith<$Res> {
  factory _$$LoginSuccessImplCopyWith(
          _$LoginSuccessImpl value, $Res Function(_$LoginSuccessImpl) then) =
      __$$LoginSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthResponseModel loginResponse});
}

/// @nodoc
class __$$LoginSuccessImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginSuccessImpl>
    implements _$$LoginSuccessImplCopyWith<$Res> {
  __$$LoginSuccessImplCopyWithImpl(
      _$LoginSuccessImpl _value, $Res Function(_$LoginSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginResponse = null,
  }) {
    return _then(_$LoginSuccessImpl(
      null == loginResponse
          ? _value.loginResponse
          : loginResponse // ignore: cast_nullable_to_non_nullable
              as AuthResponseModel,
    ));
  }
}

/// @nodoc

class _$LoginSuccessImpl implements LoginSuccess {
  const _$LoginSuccessImpl(this.loginResponse);

  @override
  final AuthResponseModel loginResponse;

  @override
  String toString() {
    return 'LoginState.loginSuccess(loginResponse: $loginResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginSuccessImpl &&
            (identical(other.loginResponse, loginResponse) ||
                other.loginResponse == loginResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginResponse);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginSuccessImplCopyWith<_$LoginSuccessImpl> get copyWith =>
      __$$LoginSuccessImplCopyWithImpl<_$LoginSuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(AuthResponseModel loginResponse) loginSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) loginError,
    required TResult Function() registerLoading,
    required TResult Function(AuthResponseModel loginResponse) registerSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) registerError,
  }) {
    return loginSuccess(loginResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(AuthResponseModel loginResponse)? loginSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? loginError,
    TResult? Function()? registerLoading,
    TResult? Function(AuthResponseModel loginResponse)? registerSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? registerError,
  }) {
    return loginSuccess?.call(loginResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(AuthResponseModel loginResponse)? loginSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? loginError,
    TResult Function()? registerLoading,
    TResult Function(AuthResponseModel loginResponse)? registerSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? registerError,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(loginResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoginLoading value) loginLoading,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(LoginError value) loginError,
    required TResult Function(RegisterLoading value) registerLoading,
    required TResult Function(RegisterSuccess value) registerSuccess,
    required TResult Function(RegisterError value) registerError,
  }) {
    return loginSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoginLoading value)? loginLoading,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(LoginError value)? loginError,
    TResult? Function(RegisterLoading value)? registerLoading,
    TResult? Function(RegisterSuccess value)? registerSuccess,
    TResult? Function(RegisterError value)? registerError,
  }) {
    return loginSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoginLoading value)? loginLoading,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(LoginError value)? loginError,
    TResult Function(RegisterLoading value)? registerLoading,
    TResult Function(RegisterSuccess value)? registerSuccess,
    TResult Function(RegisterError value)? registerError,
    required TResult orElse(),
  }) {
    if (loginSuccess != null) {
      return loginSuccess(this);
    }
    return orElse();
  }
}

abstract class LoginSuccess implements LoginState {
  const factory LoginSuccess(final AuthResponseModel loginResponse) =
      _$LoginSuccessImpl;

  AuthResponseModel get loginResponse;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginSuccessImplCopyWith<_$LoginSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoginErrorImplCopyWith<$Res> {
  factory _$$LoginErrorImplCopyWith(
          _$LoginErrorImpl value, $Res Function(_$LoginErrorImpl) then) =
      __$$LoginErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class __$$LoginErrorImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$LoginErrorImpl>
    implements _$$LoginErrorImplCopyWith<$Res> {
  __$$LoginErrorImplCopyWithImpl(
      _$LoginErrorImpl _value, $Res Function(_$LoginErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(_$LoginErrorImpl(
      null == apiErrorModel
          ? _value.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$LoginErrorImpl implements LoginError {
  const _$LoginErrorImpl(this.apiErrorModel);

  @override
  final ApiErrorModel apiErrorModel;

  @override
  String toString() {
    return 'LoginState.loginError(apiErrorModel: $apiErrorModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginErrorImpl &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginErrorImplCopyWith<_$LoginErrorImpl> get copyWith =>
      __$$LoginErrorImplCopyWithImpl<_$LoginErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(AuthResponseModel loginResponse) loginSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) loginError,
    required TResult Function() registerLoading,
    required TResult Function(AuthResponseModel loginResponse) registerSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) registerError,
  }) {
    return loginError(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(AuthResponseModel loginResponse)? loginSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? loginError,
    TResult? Function()? registerLoading,
    TResult? Function(AuthResponseModel loginResponse)? registerSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? registerError,
  }) {
    return loginError?.call(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(AuthResponseModel loginResponse)? loginSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? loginError,
    TResult Function()? registerLoading,
    TResult Function(AuthResponseModel loginResponse)? registerSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? registerError,
    required TResult orElse(),
  }) {
    if (loginError != null) {
      return loginError(apiErrorModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoginLoading value) loginLoading,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(LoginError value) loginError,
    required TResult Function(RegisterLoading value) registerLoading,
    required TResult Function(RegisterSuccess value) registerSuccess,
    required TResult Function(RegisterError value) registerError,
  }) {
    return loginError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoginLoading value)? loginLoading,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(LoginError value)? loginError,
    TResult? Function(RegisterLoading value)? registerLoading,
    TResult? Function(RegisterSuccess value)? registerSuccess,
    TResult? Function(RegisterError value)? registerError,
  }) {
    return loginError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoginLoading value)? loginLoading,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(LoginError value)? loginError,
    TResult Function(RegisterLoading value)? registerLoading,
    TResult Function(RegisterSuccess value)? registerSuccess,
    TResult Function(RegisterError value)? registerError,
    required TResult orElse(),
  }) {
    if (loginError != null) {
      return loginError(this);
    }
    return orElse();
  }
}

abstract class LoginError implements LoginState {
  const factory LoginError(final ApiErrorModel apiErrorModel) =
      _$LoginErrorImpl;

  ApiErrorModel get apiErrorModel;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginErrorImplCopyWith<_$LoginErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterLoadingImplCopyWith<$Res> {
  factory _$$RegisterLoadingImplCopyWith(_$RegisterLoadingImpl value,
          $Res Function(_$RegisterLoadingImpl) then) =
      __$$RegisterLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterLoadingImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$RegisterLoadingImpl>
    implements _$$RegisterLoadingImplCopyWith<$Res> {
  __$$RegisterLoadingImplCopyWithImpl(
      _$RegisterLoadingImpl _value, $Res Function(_$RegisterLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RegisterLoadingImpl implements RegisterLoading {
  const _$RegisterLoadingImpl();

  @override
  String toString() {
    return 'LoginState.registerLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RegisterLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(AuthResponseModel loginResponse) loginSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) loginError,
    required TResult Function() registerLoading,
    required TResult Function(AuthResponseModel loginResponse) registerSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) registerError,
  }) {
    return registerLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(AuthResponseModel loginResponse)? loginSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? loginError,
    TResult? Function()? registerLoading,
    TResult? Function(AuthResponseModel loginResponse)? registerSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? registerError,
  }) {
    return registerLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(AuthResponseModel loginResponse)? loginSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? loginError,
    TResult Function()? registerLoading,
    TResult Function(AuthResponseModel loginResponse)? registerSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? registerError,
    required TResult orElse(),
  }) {
    if (registerLoading != null) {
      return registerLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoginLoading value) loginLoading,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(LoginError value) loginError,
    required TResult Function(RegisterLoading value) registerLoading,
    required TResult Function(RegisterSuccess value) registerSuccess,
    required TResult Function(RegisterError value) registerError,
  }) {
    return registerLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoginLoading value)? loginLoading,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(LoginError value)? loginError,
    TResult? Function(RegisterLoading value)? registerLoading,
    TResult? Function(RegisterSuccess value)? registerSuccess,
    TResult? Function(RegisterError value)? registerError,
  }) {
    return registerLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoginLoading value)? loginLoading,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(LoginError value)? loginError,
    TResult Function(RegisterLoading value)? registerLoading,
    TResult Function(RegisterSuccess value)? registerSuccess,
    TResult Function(RegisterError value)? registerError,
    required TResult orElse(),
  }) {
    if (registerLoading != null) {
      return registerLoading(this);
    }
    return orElse();
  }
}

abstract class RegisterLoading implements LoginState {
  const factory RegisterLoading() = _$RegisterLoadingImpl;
}

/// @nodoc
abstract class _$$RegisterSuccessImplCopyWith<$Res> {
  factory _$$RegisterSuccessImplCopyWith(_$RegisterSuccessImpl value,
          $Res Function(_$RegisterSuccessImpl) then) =
      __$$RegisterSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthResponseModel loginResponse});
}

/// @nodoc
class __$$RegisterSuccessImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$RegisterSuccessImpl>
    implements _$$RegisterSuccessImplCopyWith<$Res> {
  __$$RegisterSuccessImplCopyWithImpl(
      _$RegisterSuccessImpl _value, $Res Function(_$RegisterSuccessImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loginResponse = null,
  }) {
    return _then(_$RegisterSuccessImpl(
      null == loginResponse
          ? _value.loginResponse
          : loginResponse // ignore: cast_nullable_to_non_nullable
              as AuthResponseModel,
    ));
  }
}

/// @nodoc

class _$RegisterSuccessImpl implements RegisterSuccess {
  const _$RegisterSuccessImpl(this.loginResponse);

  @override
  final AuthResponseModel loginResponse;

  @override
  String toString() {
    return 'LoginState.registerSuccess(loginResponse: $loginResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterSuccessImpl &&
            (identical(other.loginResponse, loginResponse) ||
                other.loginResponse == loginResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loginResponse);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterSuccessImplCopyWith<_$RegisterSuccessImpl> get copyWith =>
      __$$RegisterSuccessImplCopyWithImpl<_$RegisterSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(AuthResponseModel loginResponse) loginSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) loginError,
    required TResult Function() registerLoading,
    required TResult Function(AuthResponseModel loginResponse) registerSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) registerError,
  }) {
    return registerSuccess(loginResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(AuthResponseModel loginResponse)? loginSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? loginError,
    TResult? Function()? registerLoading,
    TResult? Function(AuthResponseModel loginResponse)? registerSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? registerError,
  }) {
    return registerSuccess?.call(loginResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(AuthResponseModel loginResponse)? loginSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? loginError,
    TResult Function()? registerLoading,
    TResult Function(AuthResponseModel loginResponse)? registerSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? registerError,
    required TResult orElse(),
  }) {
    if (registerSuccess != null) {
      return registerSuccess(loginResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoginLoading value) loginLoading,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(LoginError value) loginError,
    required TResult Function(RegisterLoading value) registerLoading,
    required TResult Function(RegisterSuccess value) registerSuccess,
    required TResult Function(RegisterError value) registerError,
  }) {
    return registerSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoginLoading value)? loginLoading,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(LoginError value)? loginError,
    TResult? Function(RegisterLoading value)? registerLoading,
    TResult? Function(RegisterSuccess value)? registerSuccess,
    TResult? Function(RegisterError value)? registerError,
  }) {
    return registerSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoginLoading value)? loginLoading,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(LoginError value)? loginError,
    TResult Function(RegisterLoading value)? registerLoading,
    TResult Function(RegisterSuccess value)? registerSuccess,
    TResult Function(RegisterError value)? registerError,
    required TResult orElse(),
  }) {
    if (registerSuccess != null) {
      return registerSuccess(this);
    }
    return orElse();
  }
}

abstract class RegisterSuccess implements LoginState {
  const factory RegisterSuccess(final AuthResponseModel loginResponse) =
      _$RegisterSuccessImpl;

  AuthResponseModel get loginResponse;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterSuccessImplCopyWith<_$RegisterSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterErrorImplCopyWith<$Res> {
  factory _$$RegisterErrorImplCopyWith(
          _$RegisterErrorImpl value, $Res Function(_$RegisterErrorImpl) then) =
      __$$RegisterErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ApiErrorModel apiErrorModel});
}

/// @nodoc
class __$$RegisterErrorImplCopyWithImpl<$Res>
    extends _$LoginStateCopyWithImpl<$Res, _$RegisterErrorImpl>
    implements _$$RegisterErrorImplCopyWith<$Res> {
  __$$RegisterErrorImplCopyWithImpl(
      _$RegisterErrorImpl _value, $Res Function(_$RegisterErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? apiErrorModel = null,
  }) {
    return _then(_$RegisterErrorImpl(
      null == apiErrorModel
          ? _value.apiErrorModel
          : apiErrorModel // ignore: cast_nullable_to_non_nullable
              as ApiErrorModel,
    ));
  }
}

/// @nodoc

class _$RegisterErrorImpl implements RegisterError {
  const _$RegisterErrorImpl(this.apiErrorModel);

  @override
  final ApiErrorModel apiErrorModel;

  @override
  String toString() {
    return 'LoginState.registerError(apiErrorModel: $apiErrorModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterErrorImpl &&
            (identical(other.apiErrorModel, apiErrorModel) ||
                other.apiErrorModel == apiErrorModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, apiErrorModel);

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterErrorImplCopyWith<_$RegisterErrorImpl> get copyWith =>
      __$$RegisterErrorImplCopyWithImpl<_$RegisterErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loginLoading,
    required TResult Function(AuthResponseModel loginResponse) loginSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) loginError,
    required TResult Function() registerLoading,
    required TResult Function(AuthResponseModel loginResponse) registerSuccess,
    required TResult Function(ApiErrorModel apiErrorModel) registerError,
  }) {
    return registerError(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loginLoading,
    TResult? Function(AuthResponseModel loginResponse)? loginSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? loginError,
    TResult? Function()? registerLoading,
    TResult? Function(AuthResponseModel loginResponse)? registerSuccess,
    TResult? Function(ApiErrorModel apiErrorModel)? registerError,
  }) {
    return registerError?.call(apiErrorModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loginLoading,
    TResult Function(AuthResponseModel loginResponse)? loginSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? loginError,
    TResult Function()? registerLoading,
    TResult Function(AuthResponseModel loginResponse)? registerSuccess,
    TResult Function(ApiErrorModel apiErrorModel)? registerError,
    required TResult orElse(),
  }) {
    if (registerError != null) {
      return registerError(apiErrorModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(LoginLoading value) loginLoading,
    required TResult Function(LoginSuccess value) loginSuccess,
    required TResult Function(LoginError value) loginError,
    required TResult Function(RegisterLoading value) registerLoading,
    required TResult Function(RegisterSuccess value) registerSuccess,
    required TResult Function(RegisterError value) registerError,
  }) {
    return registerError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(LoginLoading value)? loginLoading,
    TResult? Function(LoginSuccess value)? loginSuccess,
    TResult? Function(LoginError value)? loginError,
    TResult? Function(RegisterLoading value)? registerLoading,
    TResult? Function(RegisterSuccess value)? registerSuccess,
    TResult? Function(RegisterError value)? registerError,
  }) {
    return registerError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(LoginLoading value)? loginLoading,
    TResult Function(LoginSuccess value)? loginSuccess,
    TResult Function(LoginError value)? loginError,
    TResult Function(RegisterLoading value)? registerLoading,
    TResult Function(RegisterSuccess value)? registerSuccess,
    TResult Function(RegisterError value)? registerError,
    required TResult orElse(),
  }) {
    if (registerError != null) {
      return registerError(this);
    }
    return orElse();
  }
}

abstract class RegisterError implements LoginState {
  const factory RegisterError(final ApiErrorModel apiErrorModel) =
      _$RegisterErrorImpl;

  ApiErrorModel get apiErrorModel;

  /// Create a copy of LoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterErrorImplCopyWith<_$RegisterErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
