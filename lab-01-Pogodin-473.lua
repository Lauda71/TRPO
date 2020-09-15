
lgi = require 'lgi' -- podkl modul lgi 

gtk = lgi.Gtk 
gtk.init() -- inizializacia bibl gtk

bld = gtk.Builder() -- sozdanie new exmpl postroitela interface 
bld:add_from_file('lab-01-Pogodin-473.glade')-- loading opisania interfac'a

ui = bld.objects

ui.wnd.title = 'lab-01-Pogodin-473'-- zadanie nazvania main okna
ui.wnd.on_destroy = gtk.main_quit -- exit iz cicla obrabotki sobitij pri zakritii okna
ui.wnd:show_all() -- otobrajenie main okna i ego elements

gtk.main()	-- zapusk cicla obrabotki sobitij interface
