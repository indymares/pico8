pico-8 cartridge // http://www.pico-8.com
version 36
__lua__
--main
function _init()
		x=60
		y=60
		s=1
		h_fl=false
		v_fl=false
end

function _update()
		pl_update()
end

function _draw()
  cls()
  palt(0,false)
  palt(4,true)
  map(0,0,0,0,18,21)   
  spr(s,x,y,1,1,h_fl,v_fl)
end
-->8
--player move

function pl_update()
		if btn(⬆️) then
				y-=1
				aim="up"
				s=2
				h_fl=false
				v_fl=false
		end
		
		if btn(⬇️) then
				y+=1
				aim="down"
				s=2
				h_fl=true
				v_fl=true
		end
		
		if btn(⬅️) then
				x-=1
				aim="left"
				s=1
				h_fl=true
				v_fl=false
		end
		
		if btn(➡️) then
				x+=1
				aim="right"
				s=1
				h_fl=false
				v_fl=false
		end
end
__gfx__
0000000044aaaa4444a44444000000004cccccc44999999400000000441441444444444444411444444444444444444444144144444444444414444444444144
000000004aaaaaa44aa444a40000000077cc77cc7799779900000000441441444444444444144144444444444444444444144144444444444414444444444144
00700700aaaa0aaaaaa444aa00000000dd7cdd7cdd79dd7900000000441441441111111144144144411111111111111444144144111111114414444444444144
00077000aaaaa444aa0a4aaa00000000dd7cdd7cdd79dd7900000000441441444444444444144144144444444444444144144144444444444414444444444144
00077000aaa44444aaaa4aaa00000000cccccccc9999999900000000441441444444444444144144144444444444444144144144444444444441444444441444
00700700aaaaa444aaaaaaaa00000000cccccccc9999999900000000441441441111111144144144411111111111111444144144111441114444111111114444
000000004aaaaaa44aaaaaa400000000cccccccc9999999900000000441441444444444444144144444444444444444444144144441441444444444444444444
0000000044aaaa4444aaaa4400000000c4c4c4c49494949400000000441441444444444444144144444444444444444444411444441441444444444444444444
0000000044aaaa4444a00a4400000000488888844eeeeee400000000441441444414414444444444444444444414414444144144441441444444444444444444
000000004aaaaaa44aaa0aa4000000007788778877ee77ee00000000441441444414414444444444444444444414414444144144441441444444444444444444
00000000aaaa0aaaaaaa0aaa00000000dd78dd78dd7edd7e00000000441441111114414444441111111144444414411111144144111441114444111111114444
00000000aaaaaaa0aa0a0aaa00000000dd78dd78dd7edd7e00000000441444444444414444414444444414444414444444444144444444444441444444441444
00000000aaaa0000aaaaaaaa0000000088888888eeeeeeee00000000444144444444144444144444444441444414444444444144444444444414444444444144
00000000aaaaaaaaaaaaaaaa0000000088888888eeeeeeee00000000444411111111444444144111111441444414411111144144111111114414444444444144
000000004aaaaaa44aaaaaa40000000088888888eeeeeeee00000000444444444444444444144144441441444414414444144144444444444414444444444144
0000000044aaaa4444aaaa440000000084848484e4e4e4e400000000444444444444444444144144441441444414414444144144444444444414444444444144
00000000444444440000000000000000000000000000000000000000000000000000000000000000000000000000000044144444444441444444444444444444
00000000444444440000000000000000000000000000000000000000000000000000000000000000000000000000000044144444444441444444444444444444
00000000444774440000000000000000000000000000000000000000000000000000000000000000000000000000000044144444444441441111111144444444
00000000447667440000000000000000000000000000000000000000000000000000000000000000000000000000000044144444444441444444444444444444
00000000447667440000000000000000000000000000000000000000000000000000000000000000000000000000000044144444444441444444444444444444
00000000444774440000000000000000000000000000000000000000000000000000000000000000000000000000000044144444444441444444444411111111
00000000444444440000000000000000000000000000000000000000000000000000000000000000000000000000000044144444444441444444444444444444
00000000444444440000000000000000000000000000000000000000000000000000000000000000000000000000000044144444444441444444444444444444
__map__
1908080808080808080808080808081a00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0700000000000000000000000000000700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
07001e1f001e2e2e2e2e1f001e1f000700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
07000e0f000e2f2f2f2f0f000e0f000700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0700000000000000000000000000000700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
1b08080b0019080808081a000a08081c00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
07000000000c000000000c000000000700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
18000a1a0000001e1f000000190b001700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000001b080b002c2d000a081c00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0d0b000c0000000e0f0000000c000a0d00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0700000000090000000009000000000700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
07000a0b00170808080818000a0b000700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0700000000000000000000000000000700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
07000a08081a000a0b001908080b000700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0700000000070000000007000000000700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
17080808081d080808081d080808081800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000