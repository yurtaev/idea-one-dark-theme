THEME_NAME := "One Dark"
THEME_FILENAME := $(THEME_NAME).icls

build:
	coffee main.coffee > $(THEME_FILENAME)
