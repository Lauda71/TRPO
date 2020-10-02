
lgi = require 'lgi' -- podkl modul lgi 

gdk = lgi.Gdk 

gtk = lgi.Gtk 
gtk.init() -- inizializacia bibl gtk


prov = gtk.CssProvider()
prov:load_from_path('style.css')

ctx = gtk.StyleContext()
scr = gdk.Screen.get_default() -- gdk ???
ctx.add_provider_for_screen(scr, prov, gtk.STYLE_PROVIDER_PRIORITY_APPLICATION)


bld = gtk.Builder() -- sozdanie new exmpl postroitela interface 
bld:add_from_file('lab-03.glade')-- loading opisania interfac'a

ui = bld.objects

opt = {ui.rb_a, ui.rb_b, ui.rb_c, ui.rb_d, ui.rb_e, ui.rb_f, ui.rb_g, ui.rb_h}

function update()
	x = 0
	y = 0
	z = 0
	if ui.chk_x.active == true then x = 1 end
	if ui.chk_y.active == true then y = 1 end
	if ui.chk_z.active == true then z = 1 end

	v = x + y * 2 + z * 4
	opt[v + 1].active = true

	ui.lab_val.label = v
end

function ui.chk_x:on_clicked(...)   -- !&!&!&!
	update()
end

function ui.chk_y:on_clicked(...)
	update()
end

function ui.chk_z:on_clicked(...)
	update()
end

ui.wnd.title = 'lab-03-Pogodin-473'
ui.wnd.on_destroy = gtk.main_quit
ui.wnd:show_all()

gtk.main() -- zapusk cicla obrabotki sobitij interface	
