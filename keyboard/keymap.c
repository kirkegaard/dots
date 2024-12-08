/* Copyright 2021 Glorious, LLC <salman@pcgamingrace.com>

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 2 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

#include QMK_KEYBOARD_H

// clang-format off
const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {

    // ESC      F1       F2       F3       F4       F5       F6       F7       F8       F9       F10      F11      F12      Prt           Rotary(Mute)
    // ~        1        2        3        4        5        6        7        8        9        0         -       (=)      BackSpc           Del
    // Tab      Q        W        E        R        T        Y        U        I        O        P        [        ]        \                 PgUp
    // Caps     A        S        D        F        G        H        J        K        L        ;        "                 Enter             PgDn
    // Sh_L              Z        X        C        V        B        N        M        ,        .        ?                 Sh_R     Up       End
    // Ct_L     Win_L    Alt_L                               SPACE                               Alt_R    FN       Ct_R     Left     Down     Right

    // RGB CODES
    // |67| _0, _6, 12, 18, 23, 28, 34, 39, 44, 50, 56, 61, 66, 69,     __, |68|
    // |70|                                                                 |71|
    // |73| _1, _7, 13, 19, 24, 29, 35, 40, 45, 51, 57, 62, 78, 85,     72, |74|
    // |76| _2, _8, 14, 20, 25, 30, 36, 41, 46, 52, 58, 63, 89, 93,     75, |77|
    // |80| _3, _9, 15, 21, 26, 31, 37, 42, 47, 53, 59, 64,     96,     86, |81|
    // |83| _4,     10, 16, 22, 27, 32, 38, 43, 48, 54, 60,     90, 94, 82, |84|
    // |87| _5, 11, 17,             33,             49, 55, 65, 95, 97, 79  |88|
    // |91|                                                                 |92|

    // The FN key by default maps to a momentary toggle to layer 1 to provide access to the QK_BOOT key (to put the board into bootloader mode). Without
    // this mapping, you have to open the case to hit the button on the bottom of the PCB (near the USB cable attachment) while plugging in the USB
    // cable to get the board into bootloader mode - definitely not fun when you're working on your QMK builds. Remove this and put it back to KC_RGUI
    // if that's your preference.
    //
    // To put the keyboard in bootloader mode, use FN+backslash. If you accidentally put it into bootloader, you can just unplug the USB cable and
    // it'll be back to normal when you plug it back in.
    //
    // This keyboard defaults to 6KRO instead of NKRO for compatibility reasons (some KVMs and BIOSes are incompatible with NKRO).
    // Since this is, among other things, a "gaming" keyboard, a key combination to enable NKRO on the fly is provided for convenience.
    // Press Fn+N to toggle between 6KRO and NKRO. This setting is persisted to the EEPROM and thus persists between restarts.

    [0] = LAYOUT(
        KC_ESC,  KC_BRID, KC_BRIU, RCTL(KC_UP), KC_F4,   KC_F5,   KC_F6,   KC_MPRV, KC_MPLY, KC_MNXT, KC_MUTE, KC_VOLD, KC_VOLU, KC_DEL,           KC_MUTE,
        KC_GRV,  KC_1,    KC_2,    KC_3,        KC_4,    KC_5,    KC_6,    KC_7,    KC_8,    KC_9,    KC_0,    KC_MINS, KC_EQL,  KC_BSPC,          KC_DEL,
        KC_TAB,  KC_Q,    KC_W,    KC_E,        KC_R,    KC_T,    KC_Y,    KC_U,    KC_I,    KC_O,    KC_P,    KC_LBRC, KC_RBRC, KC_BSLS,          KC_PGUP,
        KC_CAPS, KC_A,    KC_S,    KC_D,        KC_F,    KC_G,    KC_H,    KC_J,    KC_K,    KC_L,    KC_SCLN, KC_QUOT,          KC_ENT,           KC_PGDN,
        KC_LSFT,          KC_Z,    KC_X,        KC_C,    KC_V,    KC_B,    KC_N,    KC_M,    KC_COMM, KC_DOT,  KC_SLSH,          KC_RSFT, KC_UP,   KC_END,
        KC_LCTL, KC_LALT, KC_LGUI,                                KC_SPC,                             KC_RALT, MO(1),   KC_RCTL, KC_LEFT, KC_DOWN, KC_RGHT
    ),

    [1] = LAYOUT(
        AG_TOGG, KC_F1,   KC_F2,   KC_F3,       KC_F4,   KC_F5,   KC_F6,   KC_F7,   KC_F8,   KC_F9,   KC_F10,  KC_F11,  KC_F12,  KC_TRNS,          KC_TRNS,
        KC_TRNS, RGB_SAD, RGB_SAI, KC_TRNS,     KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS,          RGB_MOD,
        KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS,     KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, QK_BOOT,          RGB_SPI,
        KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS,     KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS,          KC_TRNS,          RGB_SPD,
        KC_TRNS,          KC_TRNS, KC_TRNS,     KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS,          KC_TRNS, RGB_VAI, RGB_RMOD,
        KC_TRNS, KC_TRNS, KC_TRNS,                                KC_TRNS,                            KC_TRNS, KC_TRNS, KC_TRNS, RGB_HUD, RGB_VAD, RGB_HUI
    ),

};
// clang-format on

#if defined(ENCODER_MAP_ENABLE)
const uint16_t PROGMEM encoder_map[][NUM_ENCODERS][NUM_DIRECTIONS] = {
    [0] = { ENCODER_CCW_CW(KC_VOLD, KC_VOLU) },
    [1] = { ENCODER_CCW_CW(KC_TRNS, KC_TRNS) },
};
#endif

bool rgb_matrix_indicators_advanced_user(uint8_t led_min, uint8_t led_max) {

    if (host_keyboard_led_state().caps_lock) {
      //capslock key
      RGB_MATRIX_INDICATOR_SET_COLOR(3, 255, 0, 0);

      // tab key
      RGB_MATRIX_INDICATOR_SET_COLOR(2, 255, 0, 0);
      // L_shift key
      RGB_MATRIX_INDICATOR_SET_COLOR(4, 255, 0, 0);
      // A key
      RGB_MATRIX_INDICATOR_SET_COLOR(9, 255, 0, 0);

      // left-side LEDs
      RGB_MATRIX_INDICATOR_SET_COLOR(67, 255, 0, 0);
      RGB_MATRIX_INDICATOR_SET_COLOR(70, 255, 0, 0);
      RGB_MATRIX_INDICATOR_SET_COLOR(73, 255, 0, 0);
      RGB_MATRIX_INDICATOR_SET_COLOR(76, 255, 0, 0);
      RGB_MATRIX_INDICATOR_SET_COLOR(80, 255, 0, 0);
      RGB_MATRIX_INDICATOR_SET_COLOR(83, 255, 0, 0);
      RGB_MATRIX_INDICATOR_SET_COLOR(87, 255, 0, 0);
      RGB_MATRIX_INDICATOR_SET_COLOR(91, 255, 0, 0);

      // right-side LEDs
      RGB_MATRIX_INDICATOR_SET_COLOR(68, 255, 0, 0);
      RGB_MATRIX_INDICATOR_SET_COLOR(71, 255, 0, 0);
      RGB_MATRIX_INDICATOR_SET_COLOR(74, 255, 0, 0);
      RGB_MATRIX_INDICATOR_SET_COLOR(77, 255, 0, 0);
      RGB_MATRIX_INDICATOR_SET_COLOR(81, 255, 0, 0);
      RGB_MATRIX_INDICATOR_SET_COLOR(84, 255, 0, 0);
      RGB_MATRIX_INDICATOR_SET_COLOR(88, 255, 0, 0);
      RGB_MATRIX_INDICATOR_SET_COLOR(92, 255, 0, 0);
  }

  // switch(get_highest_layer(layer_state)){  // special handling per layer
  //     case 1:  //layer one
  //         RGB_MATRIX_INDICATOR_SET_COLOR(55, 255, 255, 255); //FN key

  //         RGB_MATRIX_INDICATOR_SET_COLOR(49, 255, 255, 255); //Alt_R
  //         RGB_MATRIX_INDICATOR_SET_COLOR(65, 255, 255, 255); //Ct_R
  //         RGB_MATRIX_INDICATOR_SET_COLOR(54, 255, 255, 255); // /:
  //         RGB_MATRIX_INDICATOR_SET_COLOR(60, 255, 255, 255); // !§
  //         break;
  //     default:
  //         break;
  //     break;
  // }

  return false;
}
