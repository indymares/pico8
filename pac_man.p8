pico-8 cartridge // http://www.pico-8.com
version 36
__lua__
--main
function _init()
		friction=0.85
		grid_x=0
		grid_y=0
		falg_tile=0
		
		pl={
		x=8,
		y=8,
		dx=0,
		dy=0,
		w=1,
		h=1,
		s=1,
		h_fl=false,
		v_fl=false,
		}
end

function _update()
		pl_update()
		grid_x=flr(pl.x/8)
		grid_y=flr(pl.y/8)
		flag_tile=fget(mget(grid_x,grid_y))
end

function _draw()
  cls()
  map(0,0)   
  spr(pl.s,pl.x,pl.y,pl.w,pl.h,pl.h_fl,pl.v_fl)
		print(grid_x..","..grid_y,5,5,7)
		print(flag_tile,5,17)
end
-->8
--player move

function pl_update()
		
		if btn(⬆️) then
				pl.dy=-1
				pl.s=2
				pl.h_fl=false
				pl.v_fl=false
		end
		
		if btn(⬇️) then
				pl.dy=1
				pl.s=2
				pl.h_fl=true
				pl.v_fl=true
		end
		
		if btn(⬅️) then
				pl.dx=-1
				pl.s=1
				pl.h_fl=true
				pl.v_fl=false
		end
		
		if btn(➡️) then
				pl.dx=1
				pl.s=1
				pl.h_fl=false
				pl.v_fl=false
		end
		
		if pl.x>127 then
				pl.x=0
				pl.y=64
		end
		
		if pl.x<0 then
				pl.x=127
				pl.y=64
		end
		
		if hit(pl.x+pl.dx,pl.y,7,7) then
				pl.dx=0
		end
		
		if hit(pl.x,pl.y+pl.dy,7,7) then
				pl.dy=0
		end
		
		pl.x+=pl.dx
		pl.y+=pl.dy
end
-->8
--collision

function hit(x,y,w,h)
		collide=false
		
		for i=x,x+w,w do
				if fget(mget(i/8,y/8))>0 or
							fget(mget(i/8,(y+h)/8))>0 then
							collide=true
				end
		end
		
		return collide
end
-->8
--items

function item_init()
		gobbles={
		{s=33,x=8,y=8},
		{s=33,x=16,y=8},
		{s=33,x=24,y=8},
		{s=33,x=32,y=8},
		{s=33,x=40,y=8},
		{s=33,x=48,y=8},
		{s=33,x=56,y=8},
		{s=33,x=64,y=8},
		{s=33,x=72,y=8},
		{s=33,x=80,y=8},
		{s=33,x=88,y=8},
		{s=33,x=96,y=8},
		{s=33,x=104,y=8},
		{s=33,x=112,y=8},
		{s=33,x=8,y=32},
		{s=33,x=16,y=32},
		{s=33,x=24,y=32},
		{s=33,x=32,y=32},
		{s=33,x=40,y=32},
		{s=33,x=48,y=32},
		{s=33,x=56,y=32},
		{s=33,x=64,y=32},
		{s=33,x=72,y=32},
		{s=33,x=80,y=32},
		{s=33,x=88,y=32},
		{s=33,x=96,y=32},
		{s=33,x=104,y=32},
		{s=33,x=112,y=32},
		{s=33,x=8,y=16},
		{s=33,x=8,y=24},
		{s=33,x=32,y=16},
		{s=33,x=32,y=24},
		{s=33,x=88,y=16},
		{s=33,x=88,y=24},
		{s=33,x=112,y=16},
		{s=33,x=112,y=24},
		}
end

function item_update()
		for g in all(gobbles) do 
				if aabb_collide(pl.x,
							pl.y,pl.w,	
							pl.h,g.x, 
							g.y,4,4)
		 	then
						del(gobbles,g)
				end
		end
end

function item_draw()
		
end
__gfx__
0000000000aaaa0000a00000000000000cccccc00999999000000000001001000000000000011000000000000000000000100100000000000010000000000100
000000000aaaaaa00aa000a00000000077cc77cc7799779900000000001001000000000000100100000000000000000000100100000000000010000000000100
00700700aaaaaaaaaaa000aa00000000dd7cdd7cdd79dd7900000000001001001111111100100100011111111111111000100100111111110010000000000100
00077000aaaaa000aaaa0aaa00000000dd7cdd7cdd79dd7900000000001001000000000000100100100000000000000100100100000000000010000000000100
00077000aaa00000aaaa0aaa00000000cccccccc9999999900000000001001000000000000100100100000000000000100100100000000000001000000001000
00700700aaaaa000aaaaaaaa00000000cccccccc9999999900000000001001001111111100100100011111111111111000100100111001110000111111110000
000000000aaaaaa00aaaaaa000000000cccccccc9999999900000000001001000000000000100100000000000000000000100100001001000000000000000000
0000000000aaaa0000aaaa0000000000c0c0c0c09090909000000000001001000000000000100100000000000000000000011000001001000000000000000000
0000000000aaaa0000a00a0000000000088888800eeeeee000000000001001000010010000000000000000000010010000100100001001000000000000000000
000000000aaaaaa00aaa0aa0000000007788778877ee77ee00000000001001000010010000000000000000000010010000100100001001000000000000000000
00000000aaaaaaaaaaaa0aaa00000000dd78dd78dd7edd7e00000000001001111110010000001111111100000010011111100100111001110000111111110000
00000000aaaaaaa0aaaaaaaa00000000dd78dd78dd7edd7e00000000001000000000010000010000000010000010000000000100000000000001000000001000
00000000aaaaa000aaaaaaaa0000000088888888eeeeeeee00000000000100000000100000100000000001000010000000000100000000000010000000000100
00000000aaaaaaaaaaaaaaaa0000000088888888eeeeeeee00000000000011111111000000100111111001000010011111100100111111110010000000000100
000000000aaaaaa00aaaaaa00000000088888888eeeeeeee00000000000000000000000000100100001001000010010000100100000000000010000000000100
0000000000aaaa0000aaaa000000000080808080e0e0e0e000000000000000000000000000100100001001000010010000100100000000000010000000000100
00000000077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000001000000000000000000
00000000766700000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000001000000000000000000
00000000766700000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000001001111111100000000
00000000077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000001000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000001000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000001000000000011111111
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000001000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000001000000000000000000
__gff__
0000000002020001010101010101010100000000020200010101010101010101000400000000000000000000010101010000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
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
