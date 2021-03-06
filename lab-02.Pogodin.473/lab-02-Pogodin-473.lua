
lgi = require 'lgi' -- podkl modul lgi 

gtk = lgi.Gtk 
gtk.init() -- inizializacia bibl gtk

bld = gtk.Builder() -- sozdanie new exmpl postroitela interface 
bld:add_from_file('lab-02_Pogodin_473.glade')-- loading opisania interfac'a

ui = bld.objects
ui.wnd.title = 'lab-02-Pogodin-473'
ui.wnd:show_all()



function verify(x, y) -- numbers or what?!
	if(tonumber(x) == nil) then
		return false 
		
	elseif (tonumber(y) == nil) then
		return false 
		
	else
		return true
		end
end

function ui.btn_mem_to_a:on_clicked(...) -- A = memory
	a = tonumber(ui.lab_mem_is.label)
	ui.entry_A.text = a
end

function ui.btn_res_to_mem:on_clicked(...) -- memory = res
	--a = tonumber(ui.lab_res_is.label)
	ui.lab_mem_is.label = ui.lab_res_is.label
end

function ui.btn_m_pl:on_clicked(...) -- memory = memry + res
	a = tonumber(ui.lab_res_is.label)
	b = tonumber(ui.lab_mem_is.label)
	c = b + a
	ui.lab_mem_is.label = tostring(c)
end

function ui.btn_m_min:on_clicked(...) -- memory = memry - res
	a = tonumber(ui.lab_res_is.label)
	b = tonumber(ui.lab_mem_is.label)
	c = b - a
	ui.lab_mem_is.label = tostring(c)
end

function ui.btn_sin:on_clicked(...)--  sin
	a = tonumber(ui.entry_A.text)
	
	if(verify(a, a) == true) then  -- proverka na vvod korrektnih dannih
		ui.lab_res_is.label = math.sin(math.rad(a))
	else 
		ui.lab_res_is.label = 'Invalid values entered !!!'
	end
end

function ui.btn_cos:on_clicked(...)--  cos
	a = tonumber(ui.entry_A.text)
	
	if(verify(a, a) == true) then  -- proverka na vvod korrektnih dannih
		ui.lab_res_is.label = math.cos(math.rad(a))
	else 
		ui.lab_res_is.label = 'Invalid values entered !!!'
	end
end

function ui.btn_tan:on_clicked(...)--  tan
	a = tonumber(ui.entry_A.text)
	
	if(verify(a, a) == true) then  -- proverka na vvod korrektnih dannih
		ui.lab_res_is.label = math.tan(math.rad(a))
	else 
		ui.lab_res_is.label = 'Invalid values entered !!!'
	end
end

function ui.btn_cos:on_clicked(...)--  cotan
	a = tonumber(ui.entry_A.text)
	
	if(verify(a, a) == true) then  -- proverka na vvod korrektnih dannih
		ui.lab_res_is.label = 1 / math.tan(math.rad(a))
	else 
		ui.lab_res_is.label = 'Invalid values entered !!!'
	end
end


function ui.btn_add:on_clicked(...)--  +
	a = tonumber(ui.entry_A.text)
	b = tonumber(ui.entry_B.text)

	if(verify(a, b) == true) then  -- proverka na vvod korrektnih dannih
		ui.lab_res_is.label = a + b
	else 
		ui.lab_res_is.label = 'Invalid values entered !!!'
	end
end


function ui.btn_sub:on_clicked(...)--  -
	a = tonumber(ui.entry_A.text)
	b = tonumber(ui.entry_B.text)

	if(verify(a, b) == true) then  -- proverka na vvod korrektnih dannih
		ui.lab_res_is.label = a - b
	else 
		ui.lab_res_is.label = 'Invalid values entered !!!'
	end
	
end


function ui.btn_mul:on_clicked(...)--  *
	a = tonumber(ui.entry_A.text)
	b = tonumber(ui.entry_B.text)
	if(verify(a, b) == true) then  -- proverka na vvod korrektnih dannih
		ui.lab_res_is.label = a * b
	else 
		ui.lab_res_is.label = 'Invalid values entered !!!'
	end
end


function ui.btn_div:on_clicked(...)--  /
	a = tonumber(ui.entry_A.text)
	b = tonumber(ui.entry_B.text)
	if(verify(a, b) == true) then  -- proverka na vvod korrektnih dannih
		if(b == 0) then
			ui.lab_res_is.label = 'Invalid values entered !!!'
		else
			ui.lab_res_is.label = a / b
		end
	else 
		ui.lab_res_is.label = 'Invalid values entered !!!'
	end
end
gtk.main() -- zapusk cicla obrabotki sobitij interface	
