/// @description Write dialouge

// set text settings
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);

// draw text
dialogueX = display_get_gui_width() / 2;
dialogueY = display_get_gui_height() - (display_get_gui_height() / 7);


draw_text_ext(dialogueX, dialogueY, dialogue, 50, 1500);

