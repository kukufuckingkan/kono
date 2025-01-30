// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chapter_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChapterState {
  bool get fetching => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  ChapterResponse get chapter => throw _privateConstructorUsedError;
  List<ChapterResponse> get chapters => throw _privateConstructorUsedError;

  /// Create a copy of ChapterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChapterStateCopyWith<ChapterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChapterStateCopyWith<$Res> {
  factory $ChapterStateCopyWith(
          ChapterState value, $Res Function(ChapterState) then) =
      _$ChapterStateCopyWithImpl<$Res, ChapterState>;
  @useResult
  $Res call(
      {bool fetching,
      String error,
      ChapterResponse chapter,
      List<ChapterResponse> chapters});
}

/// @nodoc
class _$ChapterStateCopyWithImpl<$Res, $Val extends ChapterState>
    implements $ChapterStateCopyWith<$Res> {
  _$ChapterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChapterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetching = null,
    Object? error = null,
    Object? chapter = null,
    Object? chapters = null,
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
      chapter: null == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as ChapterResponse,
      chapters: null == chapters
          ? _value.chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as List<ChapterResponse>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChapterStateImplCopyWith<$Res>
    implements $ChapterStateCopyWith<$Res> {
  factory _$$ChapterStateImplCopyWith(
          _$ChapterStateImpl value, $Res Function(_$ChapterStateImpl) then) =
      __$$ChapterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool fetching,
      String error,
      ChapterResponse chapter,
      List<ChapterResponse> chapters});
}

/// @nodoc
class __$$ChapterStateImplCopyWithImpl<$Res>
    extends _$ChapterStateCopyWithImpl<$Res, _$ChapterStateImpl>
    implements _$$ChapterStateImplCopyWith<$Res> {
  __$$ChapterStateImplCopyWithImpl(
      _$ChapterStateImpl _value, $Res Function(_$ChapterStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChapterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fetching = null,
    Object? error = null,
    Object? chapter = null,
    Object? chapters = null,
  }) {
    return _then(_$ChapterStateImpl(
      fetching: null == fetching
          ? _value.fetching
          : fetching // ignore: cast_nullable_to_non_nullable
              as bool,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      chapter: null == chapter
          ? _value.chapter
          : chapter // ignore: cast_nullable_to_non_nullable
              as ChapterResponse,
      chapters: null == chapters
          ? _value._chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as List<ChapterResponse>,
    ));
  }
}

/// @nodoc

class _$ChapterStateImpl implements _ChapterState {
  _$ChapterStateImpl(
      {required this.fetching,
      required this.error,
      required this.chapter,
      required final List<ChapterResponse> chapters})
      : _chapters = chapters;

  @override
  final bool fetching;
  @override
  final String error;
  @override
  final ChapterResponse chapter;
  final List<ChapterResponse> _chapters;
  @override
  List<ChapterResponse> get chapters {
    if (_chapters is EqualUnmodifiableListView) return _chapters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chapters);
  }

  @override
  String toString() {
    return 'ChapterState(fetching: $fetching, error: $error, chapter: $chapter, chapters: $chapters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChapterStateImpl &&
            (identical(other.fetching, fetching) ||
                other.fetching == fetching) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.chapter, chapter) || other.chapter == chapter) &&
            const DeepCollectionEquality().equals(other._chapters, _chapters));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fetching, error, chapter,
      const DeepCollectionEquality().hash(_chapters));

  /// Create a copy of ChapterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChapterStateImplCopyWith<_$ChapterStateImpl> get copyWith =>
      __$$ChapterStateImplCopyWithImpl<_$ChapterStateImpl>(this, _$identity);
}

abstract class _ChapterState implements ChapterState {
  factory _ChapterState(
      {required final bool fetching,
      required final String error,
      required final ChapterResponse chapter,
      required final List<ChapterResponse> chapters}) = _$ChapterStateImpl;

  @override
  bool get fetching;
  @override
  String get error;
  @override
  ChapterResponse get chapter;
  @override
  List<ChapterResponse> get chapters;

  /// Create a copy of ChapterState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChapterStateImplCopyWith<_$ChapterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
