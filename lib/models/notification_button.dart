import 'dart:ui';

import 'package:flutter_foreground_task/utils/color_extension.dart';

/// The button to display in the notification.
class NotificationButton {
  /// Constructs an instance of [NotificationButton].
  const NotificationButton({
    required this.id,
    required this.text,
    required this.icon,
    this.textColor,
  })  : assert(id.length > 0),
        assert(text.length > 0),
        assert(icon.length > 0);

  /// The button identifier.
  final String id;

  /// The text to display on the button.
  final String text;

  /// The icon to display on the button.
  final String icon;

  /// The button text color. (only work Android)
  final Color? textColor;

  /// Returns the data fields of [NotificationButton] in JSON format.
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'text': text,
      'icon': icon,
      'textColorRgb': textColor?.toRgbString,
    };
  }

  /// Creates a copy of the object replaced with new values.
  NotificationButton copyWith({
    String? id,
    String? text,
    String? icon,
    Color? textColor,
  }) =>
      NotificationButton(
        id: id ?? this.id,
        text: text ?? this.text,
        icon: icon ?? this.icon,
        textColor: textColor ?? this.textColor,
      );
}
