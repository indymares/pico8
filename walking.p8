pico-8 cartridge // http://www.pico-8.com
version 36
__lua__
function _init()
	s=1
	d=4
	x=63
	y=117
	f=false
	w=false
	mx=0
end

function _update()
	w=false
	
	if btn(⬅️) then
	 x=x-1
	 f=true
	 w=true
	  end
	  
	if btn(➡️) then
	 x=x+1
	 f=false
	 w=true
	  end
	  
	if x<0 and mx==16 then 
		x=127
		mx=0
	elseif x<0 and mx<0 then
		x=127
		mx=16
	end
		
	if x>127 and mx==0 then
		x=0
		mx=16
	elseif x>127 and mx>16 then
		x=0
		mx=0
	end
	
	if w then
		 walking() 
	else 
	  s=1
	end
end

function _draw()
	cls()
	map(mx,0)
	spr(s,x,y,1,1,f)
end

function walking()

	d-=1
	if d<0 then
		s+=1
		if s>3 then s=1 end
		d=4
	end
end
__gfx__
000000000044444000444440004444403333333377777777cccccccccccccccccccccccc00000000000000000000000000000000000000000000000000000000
0000000004ffff0004ffff0004ffff003b33333377777777cccccccccccccccccccccccc00000000000000000000000000000000000000000000000000000000
0070070004fdfd0004fdfd0004fdfd00333333b377777777ccccccccccbccccccccccccc00000000000000000000000000000000000000000000000000000000
0007700004ffff0004ffff0040ffff003333333377777777ccccccccccbccccccccccccc00000000000000000000000000000000000000000000000000000000
000770000499000040990000409900003333b33377777777cccccccccccbcccccc3ccccc00000000000000000000000000000000000000000000000000000000
007007000499900040999000409990003333333377777777cccccccccccbcc3cc3cccccc00000000000000000000000000000000000000000000000000000000
0000000000dd000000dd000000dd00003b33333377777777ccccccccc3cbcc3cc3ccccc300000000000000000000000000000000000000000000000000000000
0000000000dd000000d0d0000d0d00003333333b77777777ccccccccc3cbc3ccc3cbcbc300000000000000000000000000000000000000000000000000000000
__map__
0606060606060606060606060606060606060606060606060606060606060606000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0605050506060606060606060606060605050606060606060606050506060606000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0505050606060606060606060505060606060606060606060606060505060606000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0606060606060606060606060605060606060606060505050606060606060606000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0606060606060605050506060605050606060606050505050506060606060606000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0606060606060505050505060606060606060606060606060606060606060606000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0606060606060606060606060606060606060606060606060606060606060606000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0606060606060606060606060606060606050505060606060606060606060606000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0606060605050506060606060606060605050505050606060605050505060606000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0606060606050505060606060606060606060606060606060606050505050606000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0606060606060606060606060606060606060606060606060606060606060606000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0606050506060606060605050606060606060606050506060606060606060606000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0605050606060606060505050506060606060605050606060606060606060505000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0606060606060606060606060606060606060606060606060606060606060606000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0606070606080706060606070806060806060608060607060607060608080606000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0404040404040404040404040404040404040404040404040404040404040404000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
