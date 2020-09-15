
lgi = require 'lgi' -- podkl modul lgi 

gtk = lgi.Gtk 
gtk.init() -- inizializacia bibl gtk

bld = gtk.Builder() -- sozdanie new exmpl postroitela interface 
bld:add_from_file('lab-02_Pogodin_473.glade')-- loading opisania interfac'a

ui = bld.objects
ui.wnd.title = 'lab-02-Pogodin-473'
ui.wnd:show_all()

function verify(x, y) -- numbers or what?!
	if(tonumber(x)) == nil
		return false
	elseif (tonumber(y)) == nil
		return = false
	else
		return true
end

function ui.btn_add:on_clicked(...) --  +
	a = tonumber(ui.entry_A.text)
	b = tonumber(ui.entry_B.text)
	ui.lab_res_is.label = a + b
end


function ui.btn_sub:on_clicked(...)--  -
	a = tonumber(ui.entry_A.text)
	b = tonumber(ui.entry_B.text)
	ui.lab_res_is.label = a - b
end


function ui.btn_mul:on_clicked(...)--  *
	a = tonumber(ui.entry_A.text)
	b = tonumber(ui.entry_B.text)
	ui.lab_res_is.label = a * b
end


function ui.btn_div:on_clicked(...)--  /
	a = tonumber(ui.entry_A.text)
	b = tonumber(ui.entry_B.text)
	ui.lab_res_is.label = a / b
end
gtk.main()
--gtk.main()	-- zapusk cicla obrabotki sobitij interface
