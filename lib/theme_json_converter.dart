library theme_json_converter;

import 'dart:convert';
import 'dart:math' as math;
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:json_annotation/json_annotation.dart';

part 'parts/alignment.dart';
part 'parts/app_bar_theme.dart';
part 'parts/autovalidate_mode.dart';
part 'parts/axis.dart';
part 'parts/blend_mode.dart';
part 'parts/border_radius.dart';
part 'parts/border_side.dart';
part 'parts/border_style.dart';
part 'parts/bottom_app_bar_theme.dart';
part 'parts/bottom_navigation_bar_theme_data.dart';
part 'parts/bottom_navigation_bar_type.dart';
part 'parts/bottom_sheet_theme_data.dart';
part 'parts/box_border.dart';
part 'parts/box_constraints.dart';
part 'parts/box_decoration.dart';
part 'parts/box_fit.dart';
part 'parts/box_shadow.dart';
part 'parts/box_shape.dart';
part 'parts/brightness.dart';
part 'parts/button_bar_layout_behavior.dart';
part 'parts/button_bar_theme_data.dart';
part 'parts/button_style.dart';
part 'parts/button_text_theme.dart';
part 'parts/button_theme_data.dart';
part 'parts/card_theme.dart';
part 'parts/checkbox_theme_data.dart';
part 'parts/chip_theme_data.dart';
part 'parts/clip.dart';
part 'parts/color.dart';
part 'parts/color_scheme.dart';
part 'parts/cross_axis_alignment.dart';
part 'parts/cross_fade_state.dart';
part 'parts/cupertino_text_theme_data.dart';
part 'parts/cupertino_theme_data.dart';
part 'parts/data_table_theme_data.dart';
part 'parts/decoration_image.dart';
part 'parts/decoration_position.dart';
part 'parts/dialog_theme.dart';
part 'parts/divider_theme_data.dart';
part 'parts/drag_start_behavior.dart';
part 'parts/edge_insets_geometry.dart';
part 'parts/elevated_button_theme_data.dart';
part 'parts/filter_quality.dart';
part 'parts/flex_fit.dart';
part 'parts/floating_action_button_animator.dart';
part 'parts/floating_action_button_location.dart';
part 'parts/floating_action_button_theme_data.dart';
part 'parts/floating_label_behavior.dart';
part 'parts/font_feature.dart';
part 'parts/font_style.dart';
part 'parts/font_weight.dart';
part 'parts/gradient.dart';
part 'parts/gradient_transform.dart';
part 'parts/hit_test_behavior.dart';
part 'parts/icon_data.dart';
part 'parts/icon_theme_data.dart';
part 'parts/image_provider.dart';
part 'parts/image_repeat.dart';
part 'parts/input_border.dart';
part 'parts/input_decoration_theme.dart';
part 'parts/interactive_ink_feature_factory.dart';
part 'parts/locale.dart';
part 'parts/main_axis_alignment.dart';
part 'parts/main_axis_size.dart';
part 'parts/material_banner_theme_data.dart';
part 'parts/material_color.dart';
part 'parts/material_state_property_border_side.dart';
part 'parts/material_state_property_color.dart';
part 'parts/material_state_property_double.dart';
part 'parts/material_state_property_edge_insets_geometry.dart';
part 'parts/material_state_property_mouse_cursor.dart';
part 'parts/material_state_property_outlined_border.dart';
part 'parts/material_state_property_size.dart';
part 'parts/material_state_property_text_style.dart';
part 'parts/material_tap_target_size.dart';
part 'parts/material_type.dart';
// part 'parts/matrix4.dart';
part 'parts/max_length_enforcement.dart';
part 'parts/mouse_cursor.dart';
part 'parts/navigation_rail_label_type.dart';
part 'parts/navigation_rail_theme_data.dart';
part 'parts/notched_shape.dart';
part 'parts/offset.dart';
part 'parts/ordinal_sort_key.dart';
part 'parts/outlined_border.dart';
part 'parts/outlined_button_theme_data.dart';
part 'parts/overflow.dart';
part 'parts/page_transitions_builder.dart';
part 'parts/page_transitions_theme.dart';
part 'parts/popup_menu_theme_data.dart';
part 'parts/radio_theme_data.dart';
part 'parts/radius.dart';
part 'parts/range_slider_thumb_shape.dart';
part 'parts/range_slider_tick_mark_shape.dart';
part 'parts/range_slider_track_shape.dart';
part 'parts/range_slider_value_indicator_shape.dart';
part 'parts/rect.dart';
part 'parts/scroll_physics.dart';
part 'parts/scroll_view_keyboard_dismiss_behavior.dart';
part 'parts/scrollbar_theme_data.dart';
part 'parts/semantics_tag.dart';
part 'parts/shadow.dart';
part 'parts/shape_border.dart';
part 'parts/show_value_indicator.dart';
part 'parts/size.dart';
part 'parts/slider_component_shape.dart';
part 'parts/slider_theme_data.dart';
part 'parts/slider_tick_mark_shape.dart';
part 'parts/slider_track_shape.dart';
part 'parts/smart_dashes_type.dart';
part 'parts/smart_quotes_type.dart';
part 'parts/snack_bar_behavior.dart';
part 'parts/snack_bar_theme_data.dart';
part 'parts/stack_fit.dart';
part 'parts/strut_style.dart';
part 'parts/switch_theme_data.dart';
part 'parts/system_ui_overlay_style.dart';
part 'parts/tab_bar_indicator_size.dart';
part 'parts/tab_bar_theme.dart';
part 'parts/target_platform.dart';
part 'parts/text_align.dart';
part 'parts/text_align_vertical.dart';
part 'parts/text_baseline.dart';
part 'parts/text_button_theme_data.dart';
part 'parts/text_capitalization.dart';
part 'parts/text_decoration.dart';
part 'parts/text_decoration_style.dart';
part 'parts/text_direction.dart';
part 'parts/text_height_behavior.dart';
part 'parts/text_input_action.dart';
part 'parts/text_input_type.dart';
part 'parts/text_overflow.dart';
part 'parts/text_selection_theme_data.dart';
part 'parts/text_style.dart';
part 'parts/text_theme.dart';
part 'parts/text_width_basis.dart';
part 'parts/theme_data.dart';
part 'parts/tile_mode.dart';
part 'parts/time_picker_theme_data.dart';
part 'parts/toggle_buttons_theme_data.dart';
part 'parts/toolbar_options.dart';
part 'parts/tooltip_theme_data.dart';
part 'parts/typography.dart';
part 'parts/vertical_direction.dart';
part 'parts/visual_density.dart';

List<T>? _decodeDynamicList<T>(
  Iterable<dynamic>? list,
  T Function(dynamic value) decoder,
) {
  if (list == null) return null;

  return list.map(decoder).toList();
}

List<T>? _decodeStringList<T>(
  Iterable<dynamic>? list,
  T Function(String value) decoder,
) {
  if (list == null) return null;

  return list.cast<String>().map(decoder).toList();
}

List<T>? _encodeList<T>(
  Iterable<dynamic>? list,
  T Function(dynamic value) encoder,
) {
  List<T>? result;

  if (list != null) {
    result = [];
    for (var value in list) {
      result.add(encoder(value));
    }
  }

  return result;
}
