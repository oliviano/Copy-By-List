-- CopyFile from Filelist APP by ©oliviano
-- Version 1 (no error handling / reporting)
-- olivianoatgmail.com

-- re-euse re-difuse re-quote

-- ************************************************

display dialog "First Select the folder containing all the files, then the destination folder finally select the txt file contain the file list" with title "Copy file from Filelist"


set a to (choose folder with prompt "source folder") as text

set B to (choose folder with prompt "destination folder") as text

tell application "Finder"
	duplicate (files of folder a whose name is in paragraphs of (read (choose file of type "public.text" with prompt "pick the file list in text format)"))) to folder B
end tell

display dialog "Success" buttons {"OK"} default button 1 with title "Copy file from Filelist"