pico-8 cartridge // http://www.pico-8.com
version 36
__lua__
function _init()
				x=60
				y=60
				s=1
				f=false
				w=false
				tm=4
				bullet()
end

function bullet()
						blt={}
								blt.x=x
								blt.y=y
								blt.s=5
				end

function _update()	
		if w==true then 
				tm-=1
				if tm<1 then 
						s+=1
						tm=4
						if s>3 then s=1 end
				end
		else 
				s=1
		end
		
		if btnp(❎) then
				bullet()
				blt.s=4
				blt.x+=2
		end
		
		if btn(➡️) then 
				x+=1
				f=false
				w=true
		elseif btn(⬅️) then 
				x-=1
				f=true
				w=true
		else w=false
		end
end

function _draw()
		cls()
		spr(blt.s,blt.x,blt.y)
		spr(s,x,y,1,1,f)
end
__gfx__
00000000004444000044440000444400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000004ffff0004ffff0004ffff00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0070070004fdfd0004fdfd0004fdfd00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0007700004ffff5504ffff5540ffff55700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000040222504002225040022250000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000220000002200000022000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000110000001100000011000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000110000001010000101000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
