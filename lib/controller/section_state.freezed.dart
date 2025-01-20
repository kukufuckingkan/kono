// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'section_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SectionState {
  bool get fetching => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  List<SectionResponse> get sections => throw _privateConstructorUsedError;

  /// Create a copy of SectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SectionStateCopyWith<SectionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionStateCopyWith<$Res> {
  factory $SectionStateCopyWith(
          SectionState value, $Res Function(SectionState) then) =
      _$SectionStateCopyWithImpl<$Res, SectionState>;
  @useResult
  $Res call({bool fetching, String error, List<SectionResponse> sections});
}

/// @nodoc
class _$SectionStateCopyWithImpl<$Res, $Val extends SectionState>
    implements $SectionStateCopyWith<$Res> {
  _$SectionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SectionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetching = null,
    Object? error = null,
    Object? sections = null,
  }) {
    return _then(_value.copyWith(
      fetching: null == fetching
          ? _value.fetching
          : fetching // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      sections: null == sections
          ? _value.sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<SectionResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SectionStateImplCopyWith<$Res>
    implements $SectionStateCopyWith<$Res> {
  factory _$$SectionStateImplCopyWith(
          _$SectionStateImpl value, $Res Function(_$SectionStateImpl) then) =
      __$$SectionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool fetching, String error, List<SectionResponse> sections});
}

/// @nodoc
class __$$SectionStateImplCopyWithImpl<$Res>
    extends _$SectionStateCopyWithImpl<$Res, _$SectionStateImpl>
    implements _$$SectionStateImplCopyWith<$Res> {
  __$$SectionStateImplCopyWithImpl(
      _$SectionStateImpl _value, $Res Function(_$SectionStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SectionState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetching = null,
    Object? error = null,
    Object? sections = null,
  }) {
    return _then(_$SectionStateImpl(
      fetching: null == fetching
          ? _value.fetching
          : fetching // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      sections: null == sections
          ? _value._sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<SectionResponse>,
    ));
  }
}

/// @nodoc

class _$SectionStateImpl implements _SectionState {
  _$SectionStateImpl(
      {required this.fetching,
      required this.error,
      required final List<SectionResponse> sections})
      : _sections = sections;

  @override
  final bool fetching;
  @override
  final String error;
  final List<SectionResponse> _sections;
  @override
  List<SectionResponse> get sections {
    if (_sections is EqualUnmodifiableListView) return _sections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sections);
  }

  @override
  String toString() {
    return 'SectionState(fetching: $fetching, error: $error, sections: $sections)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SectionStateImpl &&
            (identical(other.fetching, fetching) ||
                other.fetching == fetching) &&
            (identical(other.error, error) || other.error == error) &&
            const DeepCollectionEquality().equals(other._sections, _sections));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fetching, error,
      const DeepCollectionEquality().hash(_sections));

  /// Create a copy of SectionState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SectionStateImplCopyWith<_$SectionStateImpl> get copyWith =>
      __$$SectionStateImplCopyWithImpl<_$SectionStateImpl>(this, _$identity);
}

abstract class _SectionState implements SectionState {
  factory _SectionState(
      {required final bool fetching,
      required final String error,
      required final List<SectionResponse> sections}) = _$SectionStateImpl;

  @override
  bool get fetching;
  @override
  String get error;
  @override
  List<SectionResponse> get sections;

  /// Create a copy of SectionState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SectionStateImplCopyWith<_$SectionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
