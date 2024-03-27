{ pkgs, config, ... }:

{
  # Place Files Inside Home Directory
  # home.file.".config/waybar/conf.jsonc".source = ./conf.jsonc;
  home.file.".config/dunst/dunstrc".source = ./dunstrc;

  # services.dunst = {
  #   enable = true;
  #   iconTheme = {
  #     name = "Papirus-Dark";
  #   };      
  #   settings = {
  #     monitor = 0;
  #     follow = "mouse";
  #     width = 300;
  #     height = 100;
  #     origin = "top-right";
  #     offset = "20x20";
  #     scale = 0;
  #     notification_limit = 20;
  #     progress_bar = true;
  #     progress_bar_height = 10;
  #     progress_bar_frame_width = 0;
  #     progress_bar_min_width = 125;
  #     progress_bar_max_width = 250;
  #     progress_bar_corner_radius = 4;
  #     icon_corner_radius = 5;
  #     indicate_hidden = true;
  #     transparency = 10;
  #     separator_height = 2;
  #     padding = 8;
  #     horizontal_padding = 8;
  #     text_icon_padding = 10;
  #     frame_width = 3;
  #     gap_size = 5;
  #     separator_color = "auto";
  #     sort = true;
  #     font = "FiraCode Mono 10";
  #     line_height = 3;
  #     markup = "full";
  #     format = "<b>%s</b>\n%b";
  #     alignment = "left";
  #     vertical_alignment = "center";
  #     show_age_threshold = 60;
  #     ellipsize = "middle";
  #     ignore_newline = "no";
  #     stack_duplicates = true;
  #     hide_duplicate_count = false;
  #     show_indicators = true;
  #     enable_recursive_icon_lookup = true;
  #     icon_position = "left";
  #     min_icon_size = 32;
  #     max_icon_size = 128;
  #     sticky_history = true;
  #     history_length = 20;
  #     dmenu = "/usr/bin/rofi -dmenu -p dunst";
  #     browser = "/usr/bin/xdg-open";
  #     always_run_script = true;
  #     title = "Dunst";
  #     class = "Dunst";
  #     corner_radius = 10;
  #     ignore_dbusclose = false;
  #     force_xwayland = false;
  #     force_xinerama = false;
  #     mouse_left_click = "close_current";
  #     mouse_middle_click = "do_action";
  #     mouse_right_click = "close_all";
  #     global = {
  #       frame_color = "#89B4FA";
  #       separator_color= "frame";
  #       max_icon_size = 64;
  #     };
  #     urgency_low = {
  #       background = "#1E1E2E";
  #       foreground = "#CDD6F4";
  #     };
  #     urgency_normal = {
  #       background = "#1E1E2E";
  #       foreground = "#CDD6F4";
  #     };
  #     urgency_critical = {
  #       background = "#1E1E2E";
  #       foreground = "#CDD6F4";
  #       frame_color = "#f38ba8";
  #     };
  #   };
  # };
}
