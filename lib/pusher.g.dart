// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pusher.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InitArgs _$InitArgsFromJson(Map<String, dynamic> json) => InitArgs(
      json['appKey'] as String,
      PusherOptions.fromJson(json['options'] as Map<String, dynamic>),
      isLoggingEnabled: json['isLoggingEnabled'] as bool? ?? false,
    );

Map<String, dynamic> _$InitArgsToJson(InitArgs instance) => <String, dynamic>{
      'appKey': instance.appKey,
      'options': instance.options,
      'isLoggingEnabled': instance.isLoggingEnabled,
    };

BindArgs _$BindArgsFromJson(Map<String, dynamic> json) => BindArgs(
      channelName: json['channelName'] as String,
      eventName: json['eventName'] as String,
      data: json['data'] as String?,
    );

Map<String, dynamic> _$BindArgsToJson(BindArgs instance) => <String, dynamic>{
      'channelName': instance.channelName,
      'eventName': instance.eventName,
      'data': instance.data,
    };

PusherOptions _$PusherOptionsFromJson(Map<String, dynamic> json) =>
    PusherOptions(
      auth: json['auth'] == null
          ? null
          : PusherAuth.fromJson(json['auth'] as Map<String, dynamic>),
      cluster: json['cluster'] as String?,
      host: json['host'] as String?,
      port: json['port'] as int? ?? 443,
      encrypted: json['encrypted'] as bool? ?? true,
      activityTimeout: json['activityTimeout'] as int? ?? 30000,
    );

Map<String, dynamic> _$PusherOptionsToJson(PusherOptions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('auth', instance.auth);
  writeNotNull('cluster', instance.cluster);
  writeNotNull('host', instance.host);
  val['port'] = instance.port;
  val['encrypted'] = instance.encrypted;
  val['activityTimeout'] = instance.activityTimeout;
  return val;
}

PusherAuth _$PusherAuthFromJson(Map<String, dynamic> json) => PusherAuth(
      json['endpoint'] as String,
      headers: (json['headers'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {'Content-Type': 'application/x-www-form-urlencoded'},
    );

Map<String, dynamic> _$PusherAuthToJson(PusherAuth instance) =>
    <String, dynamic>{
      'endpoint': instance.endpoint,
      'headers': instance.headers,
    };

ConnectionStateChange _$ConnectionStateChangeFromJson(
        Map<String, dynamic> json) =>
    ConnectionStateChange(
      currentState: json['currentState'] as String,
      previousState: json['previousState'] as String,
    );

Map<String, dynamic> _$ConnectionStateChangeToJson(
        ConnectionStateChange instance) =>
    <String, dynamic>{
      'currentState': instance.currentState,
      'previousState': instance.previousState,
    };

ConnectionError _$ConnectionErrorFromJson(Map<String, dynamic> json) =>
    ConnectionError(
      message: json['message'] as String,
      code: json['code'] as String,
      exception: json['exception'] as String,
    );

Map<String, dynamic> _$ConnectionErrorToJson(ConnectionError instance) =>
    <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
      'exception': instance.exception,
    };

Event _$EventFromJson(Map<String, dynamic> json) => Event(
      channel: json['channel'] as String,
      event: json['event'] as String,
      data: json['data'] as String?,
    );

Map<String, dynamic> _$EventToJson(Event instance) => <String, dynamic>{
      'channel': instance.channel,
      'event': instance.event,
      'data': instance.data,
    };

PusherEventStreamMessage _$PusherEventStreamMessageFromJson(
        Map<String, dynamic> json) =>
    PusherEventStreamMessage(
      event: json['event'] == null
          ? null
          : Event.fromJson(json['event'] as Map<String, dynamic>),
      connectionStateChange: json['connectionStateChange'] == null
          ? null
          : ConnectionStateChange.fromJson(
              json['connectionStateChange'] as Map<String, dynamic>),
      connectionError: json['connectionError'] == null
          ? null
          : ConnectionError.fromJson(
              json['connectionError'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PusherEventStreamMessageToJson(
        PusherEventStreamMessage instance) =>
    <String, dynamic>{
      'event': instance.event,
      'connectionStateChange': instance.connectionStateChange,
      'connectionError': instance.connectionError,
    };
