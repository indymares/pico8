pico-8 cartridge // http://www.pico-8.com
version 36
__lua__

function _init()
		selected=0
end

function _update()
		
--checks down
		if btnp(⬇️) then 
				if selected == 2 then
				  selected = 0
				else
				  selected += 1
			 end	
		end
		
--checks up
		if btnp(⬆️) then 
				if selected == 0 then
				  selected = 2
				else
				  selected -= 1
				end
		end
end

function _draw()
		cls()
		spr(1, 55, 45)
		print("easy", 53, 55, selected == 0 and 10 or 7)
		print("medium", 50, 65, selected 	== 1 and 10 or 7)
		print("hard", 53, 75, selected == 2 and 10 or 7)
end
__gfx__
000000000ddd7d000ddd7d0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000000000d7ddd000d7ddd0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0070070000f0ffd000f0ffd000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
000770000fffff000fffff0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000117871101178711000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700011111000111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000011111000111110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000011011000110110000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000