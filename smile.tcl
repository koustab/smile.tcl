# timer bot to take time to reply #
set rplytimer 3
# replace the channel name here #
set chname  "#error"

set autorply {
"=;)"
"@;)"
"q;)"
":-)"
":-))"
":-D"
"&:-)"
":-p"
";-)"
";-))"
":-O"
":-1"
}

bind pub - {:)} pub:smile
bind pub - {=:)} pub:smile
bind pub - {=;)} pub:smile
bind pub - {=)} pub:smile
bind pub - {:p} pub:smile

proc pub:smile {nick host handle channel text} {
 global autorply rplytimer chname
 utimer $rplytimer  [list puthelp "PRIVMSG $chname :[lindex $autorply [rand [llength $autorply]]]"]
}
putlog "smile.tcl 0.1 by Error loaded"
