# AppleScripts
AppleScripts for use with OS X / macOS (tested in 10.9 Mavericks)

## AppleScript applet for Spotlight URI handler [→](https://github.com/nathan-artist/AppleScripts/blob/master/AppleScript%20applet%20for%20Spotlight%20URI%20handler.applescript)
This script, after you [save it as an application](https://developer.apple.com/library/content/documentation/LanguagesUtilities/Conceptual/MacAutomationScriptingGuide/SaveaScript.html), creates a URI scheme ("spotlight:") that can be used to do a Spotlight search in the Finder from a URL (link) in any macOS application. Further instructions are in the script. Read the comments in the script before running it.

## AppleScript droplet for pandoc file conversion [→](https://github.com/nathan-artist/AppleScripts/blob/master/AppleScript%20droplet%20for%20pandoc%20file%20conversion.applescript)
This script provides a graphical front end for [Pandoc](https://pandoc.org). It is an especially easy way to convert to multiple file formats at once, since output formats are chosen from a list. Just [save it as an AppleScript droplet](https://developer.apple.com/library/content/documentation/LanguagesUtilities/Conceptual/MacAutomationScriptingGuide/SaveaScript.html), and then drop files onto it that you want to convert. Read the comments in the script before running it.

## AppleScript droplet to copy rich-text hyperlinks to clipboard [→](https://github.com/nathan-artist/AppleScripts/blob/master/AppleScript%20droplet%20to%20copy%20rich-text%20hyperlinks%20to%20clipboard.applescript)
This script copies rich text to the clipboard containing a (list of) hyperlink(s) to any file(s) that you drop onto the droplet, with the file URL as the destination of the link, with the filename as the link text, and with the creation date of the file in parentheses following the link. Just [save it as an AppleScript droplet](https://developer.apple.com/library/content/documentation/LanguagesUtilities/Conceptual/MacAutomationScriptingGuide/SaveaScript.html), and then drop a file or files onto it that you want to link. Then you can paste the result into any rich text editor such as TextEdit.

## AppleScript droplet to create symbolic link [→](https://github.com/nathan-artist/AppleScripts/blob/master/AppleScript%20droplet%20to%20create%20symbolic%20link.applescript)
This script asks for a destination folder and creates symbolic links in that folder to whatever you drop onto it. Just [save it as an AppleScript droplet](https://developer.apple.com/library/content/documentation/LanguagesUtilities/Conceptual/MacAutomationScriptingGuide/SaveaScript.html), and then drop files or folders onto it that you want to link. The script ignores .webloc files since AppleScript treats those as URLs instead of as files.

## AppleScript droplet to map the GPS position of an image in Apple Maps [→](https://github.com/nathan-artist/AppleScripts/blob/master/AppleScript%20droplet%20to%20map%20the%20GPS%20position%20of%20an%20image%20in%20Apple%20Maps.applescript)
This script uses [ExifTool](https://en.wikipedia.org/wiki/ExifTool) by Phil Harvey (a free and open-source command-line application) to extract the GPS position from an image's EXIF data and then displays that position in Apple Maps. Just [save it as an AppleScript droplet](https://developer.apple.com/library/content/documentation/LanguagesUtilities/Conceptual/MacAutomationScriptingGuide/SaveaScript.html), and then run the app by dragging an image file onto the app or else by clicking on it and choosing an image file, and if the image has a GPS position in its EXIF data then Maps.app will open with that position as a dropped pin. Read the comments in the script before running it.

## AppleScript for Scrivener to sync with external folder and compile [→](https://github.com/nathan-artist/AppleScripts/blob/master/AppleScript%20for%20Scrivener%20to%20sync%20with%20external%20folder%20and%20compile.applescript)
This script for [Scrivener 2](https://www.literatureandlatte.com/scrivener) runs the menu commands "Sync with External Folder Now" and "Compile..." so that both can be done with one command. It presumes that "Sync with External Folder" has already been run at least once to set the necessary sync settings. Since the script uses [GUI scripting](http://www.macosautomation.com/mavericks/guiscripting/), the Accessibility API must be enabled in OS X 10.8 Mountain Lion and earlier, or it must be specifically enabled for Scrivener in OS X 10.9 Mavericks and later.

## AppleScript service to create file with specified creation date [→](https://github.com/nathan-artist/AppleScripts/blob/master/AppleScript%20service%20to%20create%20file%20with%20specified%20creation%20date.applescript)
This script asks for a date and time and then:
1. uses the shell command *touch* to create an empty HTML file in the pre-specified *save_path* with the creation date set to the user-provided date and time, then
2. sets the file extension (.html) of the file to hidden, then
3. changes the file metadata so that the file always opens in TextEdit, then
4. opens the file in TextEdit, and then
5. inserts the creation date into the document body.

Just [save it as a systemwide service](https://developer.apple.com/library/content/documentation/LanguagesUtilities/Conceptual/MacAutomationScriptingGuide/MakeaSystem-WideService.html) (a [Services menu](https://en.wikipedia.org/wiki/Services_menu) item) and [assign a keyboard shortcut to it](https://www.macworld.com/article/215544/how-to-use-services-in-mac-os-x.html), and then press the keyboard shortcut to create and open a TextEdit HTML file with specified creation date. I use this to create journal entries (sometimes in conjunction with WordService's "Insert Short Date & Time" command, [free from DEVONtechnologies](http://www.devontechnologies.com/products/freeware.html)). The reason why the script prompts for a date is that some of my journal entries were written at an earlier date and time, so I want to be able to specify a creation date other than the current date and time when necessary. It is also possible to use this script with Apple's built-in [dictation commands](https://developer.apple.com/library/content/documentation/LanguagesUtilities/Conceptual/MacAutomationScriptingGuide/UseDictationtoRunScripts.html) and [text dictation](https://support.apple.com/en-us/HT202584) for journaling or notetaking entirely by voice. The value of the property *save_path* and the property *resource_fork_path* in the script will need to be edited before the script is run; the latter value should be the POSIX path to the file *TextEdit.r* (included in the same directory as the file you are reading). Before using this script, Apple's Developer Tools must be installed (for example, by running `xcode-select --install` or by installing Xcode) so that the *Rez* and *SetFile* commands are available. Perhaps the script could be rewritten to use AppleScriptObjC instead of *Rez* and *SetFile*, but I don't know how to do that. Read the comments in the script before running it.

## AppleScript service to open local URL from hyperlink in TextEdit instead of default reveal in Finder [→](https://github.com/nathan-artist/AppleScripts/blob/master/AppleScript%20service%20to%20open%20local%20URL%20from%20hyperlink%20in%20TextEdit%20instead%20of%20default%20reveal%20in%20Finder.applescript)
This script, [as part of an Automator service](https://developer.apple.com/library/content/documentation/LanguagesUtilities/Conceptual/MacAutomationScriptingGuide/MakeaSystem-WideService.html), opens a local URL (to a file or folder) from a hyperlink in TextEdit. TextEdit's default behavior when clicking on a `file:///` hyperlink to a local URL is either (1) to bring the file's window to the front if the file has already been opened in the current TextEdit session or else (2) to reveal the file or folder in the Finder. Using this script as a service provides a third option: right-click (or control-click) on the link and then select the service from the pop-up/contextual [services menu](https://en.wikipedia.org/wiki/Services_menu) to open the file or folder directly. Or [assign a keyboard shortcut to the service](https://www.macworld.com/article/215544/how-to-use-services-in-mac-os-x.html), then right-click (or control-click) on the link, press the escape key, and press the keyboard shortcut to open the file or folder directly. This service works because when you click on a hyperlink in TextEdit, TextEdit selects the link's text area, which then can be passed to the clipboard via the service. This will, of course, destroy what was already on the clipboard. The script could be modified to save the clipboard content to a variable first and then restore the previous clipboard at the end of the script, but I found this simpler clipboard-destroying script to be faster and more reliable.

To create a service from this script:
1. [open Automator](https://developer.apple.com/library/content/documentation/LanguagesUtilities/Conceptual/MacAutomationScriptingGuide/MakeaSystem-WideService.html);
2. create a new service;
3. set the service to receive rich text in TextEdit;
4. add the *Copy to Clipboard* action to the workflow;
5. add the *Run AppleScript* action to the workflow;
6. select the "Ignore this action's input" checkbox in the *Run AppleScript* action;
7. replace the content of the *Run AppleScript* action with this script (and replace the path to `python3` in the script with the relevant path to [Python 3](https://docs.python.org/3/) on your machine);
8. save the service.

## AppleScript to convert Markdown on clipboard to RTF, then paste [→](https://github.com/nathan-artist/AppleScripts/blob/master/AppleScript%20to%20convert%20Markdown%20on%20clipboard%20to%20RTF%2C%20then%20paste.applescript)
This script takes plain text from the clipboard in [Markdown](https://en.wikipedia.org/wiki/Markdown) format, converts the text to [Rich Text Format](https://en.wikipedia.org/wiki/Rich_Text_Format) (RTF) using [Pandoc](https://pandoc.org) and Apple's Cocoa text system, and then pastes the rich text into the active field or window.

## AppleScript to convert RTF on clipboard to Markdown, then paste [→](https://github.com/nathan-artist/AppleScripts/blob/master/AppleScript%20to%20convert%20RTF%20on%20clipboard%20to%20Markdown%2C%20then%20paste.applescript)
This script takes rich text from the clipboard in [Rich Text Format](https://en.wikipedia.org/wiki/Rich_Text_Format) (RTF), converts the text to [Markdown](https://en.wikipedia.org/wiki/Markdown) using Apple's Cocoa text system and [Pandoc](https://pandoc.org), and then pastes the Markdown-formatted plain text into the active field or window. The script informs the user if what's on the clipboard is not RTF.

