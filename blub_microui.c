#include "microui.c"
#include <stdlib.h>

mu_Context *mu_blub_create_context() {
  mu_Context *context = malloc(sizeof(mu_Context));
  if (context) {
    mu_init(context);
  }
  return context;
}

void mu_blub_destroy_context(mu_Context *context) { free(context); }

void mu_blub_set_text_callbacks(mu_Context *context,
                                int (*text_width)(mu_Font, const char *, int),
                                int (*text_height)(mu_Font)) {
  context->text_width = text_width;
  context->text_height = text_height;
}

mu_Style *mu_blub_style(mu_Context *context) { return context->style; }
