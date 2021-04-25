--What are you doing here? Get out!

--[[

How to use:

--Press B for auto blowjob. B again to turn it off.
--Press M for auto masturbation. M again to turn it off.
--You can only turn one of them at a time. If you try to turn both on at the same time, both of them will be turned off.

]]


--Variáveis
plr = game:GetService("Players").LocalPlayer
mouse = plr:GetMouse()
_G.mast = false
_G.blow = false

--Detectar as teclas
mouse.KeyDown:connect(function(key)
	if key == "b" then
		if _G.blow == false then
			_G.blow = true
			print("blowjob on")
		else
			_G.blow = false
			print("blowjob false")	
		end
	elseif key == "m" then
		if _G.mast == false then
			_G.mast = true
			print("masturbation on")
		else
			_G.mast = false
			print("masturbation false")
		end
	end
end)

--Detectar se ambos estão ativados ao mesmo tempo
function control()
	if _G.blow == true and _G.mast == true then
		_G.blow = false
		_G.mast = false
		print("Only one at a time! blowjob or masturbation!")
	end
end

--Pressionar a tecla, quando a variável estiver ativada
while wait(0.4) do
	if _G.blow == true and iswindowactive() then
		keypress(0x43)
		wait()
		keyrelease(0x43)
		control()
	elseif _G.mast == true and iswindowactive() then
		keypress(0x58)
		wait()
		keyrelease(0x58)
		control()
	end
end
print("By Tiurabe")
