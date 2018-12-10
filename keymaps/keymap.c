#include QMK_KEYBOARD_H
#include "debug.h"
#include "action_layer.h"
#include "version.h"

const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {

[0] = LAYOUT_ergodox(
        // left hand
        KC_GRAVE,    KC_1,    KC_2,   KC_3,     KC_4,   KC_5,   KC_6,
        KC_TAB,      KC_Q,    KC_W,   KC_E,     KC_R,   KC_T,   KC_NO,
        KC_LCTRL,    KC_A,    KC_S,   KC_D,     KC_F,   KC_G,
        KC_NO,       KC_Z,    KC_X,   KC_C,     KC_V,   KC_B,   KC_NO,
        MO(3),       KC_NO,   KC_NO,  KC_LALT,  GUI_T(KC_ESC),
                             LALT(LGUI(KC_J)), LCTL(LGUI(LSFT(KC_4))),
                                                                TG(1),
                                     OSM(MOD_LSFT), KC_BSPACE,  OSL(2),

        // right hand
             KC_NO,     KC_6,   KC_7,    KC_8,     KC_9,     KC_0,      KC_MINS,
             KC_NO,     KC_Y,   KC_U,    KC_I,     KC_O,     KC_P,      KC_BSLS,
                        KC_H,   KC_J,    KC_K,     KC_L,     KC_SCLN,   KC_QUOT,
             KC_NO,     KC_N,   KC_M,    KC_COMM,  KC_DOT,   KC_SLSH,   KC_EQUAL,
                                KC_RSFT, KC_LBRC,  KC_RBRC,  KC_NO,     MO(3),
             LCTL(LGUI(KC_1)),LCTL(LGUI(KC_2)),
             KC_NO,
             KC_NO,   KC_ENT, KC_SPACE
    ),
[1] = LAYOUT_ergodox(
       // left hand
       KC_TRNS,   KC_TRNS,  KC_TRNS,  KC_TRNS,  KC_TRNS,  KC_TRNS,  KC_TRNS,
       KC_TRNS,   KC_TRNS,  KC_D,     KC_R,     KC_W,     KC_B,     KC_TRNS,
       KC_TRNS,   KC_TRNS,  KC_TRNS,  KC_H,     KC_T,     KC_TRNS,
       KC_TRNS,   KC_TRNS,  KC_TRNS,  KC_M,     KC_C,     KC_V,     KC_TRNS,
       KC_TRNS,   KC_TRNS,  KC_TRNS,  KC_TRNS,  KC_TRNS,
                                                            KC_TRNS,KC_TRNS,
                                                                    KC_TRNS,
                                                    KC_TRNS,KC_TRNS,KC_TRNS,
       // right hand
       KC_TRNS,   KC_TRNS,   KC_TRNS,   KC_TRNS,    KC_TRNS,    KC_TRNS,  KC_TRNS,
       KC_TRNS,   KC_J,      KC_F,      KC_U,       KC_P,       KC_SCLN,  KC_TRNS,
                  KC_Y,      KC_N,      KC_E,       KC_O,       KC_I,     KC_TRNS,
       KC_TRNS,   KC_K,      KC_L,      KC_TRNS,    KC_TRNS,    KC_TRNS,  KC_TRNS,
                             KC_TRNS,  KC_TRNS,   KC_TRNS,   KC_TRNS,  KC_TRNS,
       KC_TRNS,   KC_TRNS,
       KC_TRNS,
       KC_TRNS,   KC_TRNS, KC_TRNS
),
[2] = LAYOUT_ergodox(
       // left hand
       KC_TRNS,   KC_TRNS,  KC_TRNS,  KC_TRNS,  KC_TRNS,  KC_TRNS,  KC_TRNS,
       KC_TRNS,   KC_TRNS,  KC_TRNS,  KC_TRNS,  KC_TRNS,  KC_TRNS,  KC_TRNS,
       KC_TRNS,   KC_TRNS,  KC_TRNS,  KC_TRNS,  KC_TRNS,  KC_TRNS,
       KC_TRNS,   KC_TRNS,  KC_TRNS,  KC_TRNS,  KC_TRNS,  KC_TRNS,  KC_TRNS,
       KC_TRNS,   KC_TRNS,  KC_TRNS,  KC_TRNS,  KC_TRNS,
                                                            KC_TRNS,KC_TRNS,
                                                                    KC_TRNS,
                                                    KC_TRNS,KC_TRNS,KC_TRNS,
       // right hand
       KC_TRNS, KC_TRNS,   KC_TRNS,   KC_TRNS,   KC_TRNS,   KC_TRNS,  KC_TRNS,
       KC_TRNS, KC_TRNS,   KC_TRNS,   LSFT(KC_LBRC),  LSFT(KC_RBRC),    KC_TRNS, KC_TRNS,
                KC_LEFT,   KC_DOWN,   KC_UP,    KC_RIGHT, KC_TRNS, KC_TRNS,
       KC_TRNS, KC_MINS,   KC_EQUAL,  LSFT(KC_COMMA),    LSFT(KC_DOT),    KC_TRNS, KC_TRNS,
                           KC_TRNS,   KC_TRNS,   KC_TRNS,   KC_TRNS,  KC_TRNS,
       KC_TRNS,   KC_TRNS,
       KC_TRNS,
       KC_TRNS,   KC_TRNS, KC_TRNS
),
[3] = LAYOUT_ergodox(
       // left hand
       KC_TRNS,   KC_TRNS,  KC_TRNS,  KC_TRNS,  KC_TRNS,  KC_TRNS,  KC_TRNS,
       KC_TRNS,   KC_TRNS,  KC_TRNS,  KC_TRNS,  KC_TRNS,  KC_TRNS,  KC_TRNS,
       KC_TRNS,   KC_TRNS,  KC_TRNS,  KC_TRNS,  KC_TRNS,  KC_TRNS,
       KC_TRNS,   KC_TRNS,  KC_TRNS,  KC_TRNS,  KC_TRNS,  KC_TRNS,  KC_TRNS,
       KC_TRNS,   KC_TRNS,  KC_TRNS,  KC_TRNS,  KC_TRNS,
                                                            KC_TRNS,KC_TRNS,
                                                                    KC_TRNS,
                                                    KC_TRNS,KC_TRNS,KC_TRNS,
       // right hand
       KC_TRNS,   KC_TRNS,   KC_TRNS,  KC_TRNS,   KC_TRNS,   KC_TRNS,  KC_TRNS,
       KC_PGUP,   KC_TRNS,   KC_7,     KC_8,      KC_9,      KC_TRNS,  KC_TRNS,
                  KC_TRNS,   KC_4,     KC_5,      KC_6,      KC_TRNS,  KC_TRNS,
       KC_PGDN,   KC_TRNS,   KC_1,     KC_2,      KC_3,      KC_TRNS,  KC_TRNS,
                             KC_0,     KC_0,      KC_DOT,    KC_TRNS,  KC_TRNS,
       KC_TRNS,   KC_TRNS,
       KC_TRNS,
       KC_TRNS,   KC_TRNS, KC_TRNS
),
[4] = LAYOUT_ergodox(
       // left hand
       KC_TRNS,   KC_TRNS,  KC_TRNS,  KC_TRNS,  KC_TRNS,  KC_TRNS,  KC_TRNS,
       KC_TRNS,   KC_TRNS,  KC_TRNS,  KC_TRNS,  KC_TRNS,  KC_TRNS,  KC_TRNS,
       KC_TRNS,   KC_TRNS,  KC_TRNS,  KC_TRNS,  KC_TRNS,  KC_TRNS,
       KC_TRNS,   KC_TRNS,  KC_TRNS,  KC_TRNS,  KC_TRNS,  KC_TRNS,  KC_TRNS,
       KC_TRNS,   KC_TRNS,  KC_TRNS,  KC_TRNS,  KC_TRNS,
                                                            KC_TRNS,KC_TRNS,
                                                                    KC_TRNS,
                                                    KC_TRNS,KC_TRNS,KC_TRNS,
       // right hand
       KC_TRNS,   KC_TRNS,   KC_TRNS,  KC_TRNS,   KC_TRNS,   KC_TRNS,  KC_TRNS,
       KC_TRNS,   KC_TRNS,   KC_TRNS,  KC_TRNS,   KC_TRNS,   KC_TRNS,  KC_TRNS,
                  KC_TRNS,   KC_TRNS,  KC_TRNS,   KC_TRNS,   KC_TRNS,  KC_TRNS,
       KC_TRNS,   KC_TRNS,   KC_TRNS,  KC_TRNS,   KC_TRNS,   KC_TRNS,  KC_TRNS,
                             KC_TRNS,  KC_TRNS,   KC_TRNS,   KC_TRNS,  KC_TRNS,
       KC_TRNS,   KC_TRNS,
       KC_TRNS,
       KC_TRNS,   KC_TRNS, KC_TRNS
),
};

/*
bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  return true;
}

// Runs just one time when the keyboard initializes.
void matrix_init_user(void) {

};

// Runs constantly in the background, in a loop.
void matrix_scan_user(void) {

};

// Runs whenever there is a layer state change.
uint32_t layer_state_set_user(uint32_t state) {
  return state;
};
*/
