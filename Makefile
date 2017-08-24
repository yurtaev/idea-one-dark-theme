THEME_NAME := "One Dark"
THEME_FILENAME := $(THEME_NAME).icls

build_jar: build_icls
	mkdir colors
	cp $(THEME_FILENAME) colors
	cp $(THEME_FILENAME) colors/$(THEME_NAME).xml
	touch "IntelliJ IDEA Global Settings"
	jar cfM settings.jar "IntelliJ IDEA Global Settings" colors
	rm -r colors
	rm "IntelliJ IDEA Global Settings"

build_icls:
	node main.js > $(THEME_FILENAME)
