pico-8 cartridge // http://www.pico-8.com
version 36
__lua__
--main
x=30
y=30
scene="menu"
slct={r=2,o=3,y=4,g=5}

		function _draw()
				if scene=="menu" then d_menu() end
				if scene=="red" then d_red() end
				if scene=="orange" then d_orange() end
				if scene=="yellow" then d_yellow() end
				if scene=="green" then d_green() end

		end
		
		function _update()
				if scene=="menu" then u_menu() end
				if scene=="red" then u_red() end
				if scene=="orange" then u_orange() end
				if scene=="yellow" then u_yellow() end
				if scene=="green" then u_green() end
		end
-->8
--cursor functions

		function move_cursor()
				if btn(➡️) then x+=1 end
				if btn(⬅️) then x-=1 end
				if btn(⬆️) then y-=1 end
				if btn(⬇️) then y+=1 end
		end
		
		function check_cursor()
				if x>24 and x<36 and y>24 and y<36 then
				 slct.r=6
				else slct.r=2 end
				
				if x>44 and x<56 and y>24 and y<36 then
				 slct.o=7
				else slct.o=3 end
				
				if x>64 and x<76 and y>24 and y<36 then
				 slct.y=8
				else slct.y=4 end
				
				if x>84 and x<96 and y>24 and y<36 then
				 slct.g=9
				else slct.g=5 end
		end
		
		function check_press()
				if slct.r==6 and btn(❎) then
						scene="red"
				end
				if slct.o==7 and btn(❎) then
						scene="orange"
				end
				if slct.y==8 and btn(❎) then
						scene="yellow"
				end
				if slct.g==9 and btn(❎) then
						scene="green"
				end
		end
-->8
--updates

		function u_menu()
				move_cursor()
				check_cursor()
				check_press()
				--boundaries
				if x>121 then x=121 end
				if x<0 then x=0 end
				if y>121 then y=121 end
				if y<0 then y=0 end
		end
		
		function u_red()
				if btn(🅾️) then scene="menu" end
		end
		
		function u_orange()
				if btn(🅾️) then scene="menu" end
		end
		
		function u_yellow()
				if btn(🅾️) then scene="menu" end
		end
		
		function u_green()
				if btn(🅾️) then scene="menu" end
		end
-->8
--draws

		function d_menu()
				cls(12)
				spr(slct.r,30,30)
				spr(slct.o,50,30)
				spr(slct.y,70,30)
				spr(slct.g,90,30)
				spr(1,x,y)
		end
		
		function d_red()
				cls(8)
				print("red app!")
		end
		
		function d_orange()
				cls(9)
				print("orange app!")
		end
		
		function d_yellow()
				cls(10)
				print("yellow app!")
		end
		
		function d_green()
				cls(11)
				print("green app!")
		end
__gfx__
00000000001000008888888899999999aaaaaaaabbbbbbbb8888888899999999aaaaaaaabbbbbbbb000000000000000000000000000000000000000000000000
00000000017100008888888899999999aaaaaaaabbbbbbbb8888888899999999aaaaaaaabbbbbbbb000000000000000000000000000000000000000000000000
00700700017710008888888899999999aaaaaaaabbbbbbbb8888888899999999aaaaaaaabbbbbbbb000000000000000000000000000000000000000000000000
00077000017771008888888899999999aaaaaaaabbbbbbbb8888888899999999aaaaaaaabbbbbbbb000000000000000000000000000000000000000000000000
00077000017777108888888899999999aaaaaaaabbbbbbbb8888888899999999aaaaaaaabbbbbbbb000000000000000000000000000000000000000000000000
00700700017711008888888899999999aaaaaaaabbbbbbbb8888888899999999aaaaaaaabbbbbbbb000000000000000000000000000000000000000000000000
00000000001171008888888899999999aaaaaaaabbbbbbbb8888888899999999aaaaaaaabbbbbbbb000000000000000000000000000000000000000000000000
00000000000000008888888899999999aaaaaaaabbbbbbbb55555555555555555555555555555555000000000000000000000000000000000000000000000000
__gff__
0001000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
