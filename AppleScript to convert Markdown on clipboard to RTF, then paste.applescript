on run
	do shell script "LANG=en_US.UTF-8 pbpaste -Prefer txt | /usr/local/bin/pandoc -f markdown-smart+lists_without_preceding_blankline -t html | /usr/bin/textutil -inputencoding utf-8 -stdin -stdout -format html -convert rtf | /usr/bin/sed 's/fcharset0 Times-Roman/fcharset0 Arial/' | pbcopy ; osascript -l AppleScript -e 'tell application \"System Events\" to keystroke \"v\" using command down'"
end run
