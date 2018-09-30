pico-8 cartridge // http://www.pico-8.com
version 16
__lua__

--
-- standard pico-8 workflow
--

function _init()
  player = {x = 64, y = 64, dir = 0, spd = 1}
end

function _update()
  update_player()
end

function _draw()
  draw_world()
  draw_player()
end

--
-- play mode
--

function update_player()
  local a,b = wall(player.x - 2 - player.spd, player.y - 0.5, 0, 1.5)
  local c,d = wall(player.x + 1 + player.spd, player.y - 0.5, 0, 1.5)
  local e,f = wall(player.x - 0.5, player.y - 2 - player.spd, 1.5, 0)
  local g,h = wall(player.x - 0.5, player.y + 1 + player.spd, 1.5, 0)
  
  for i = 0, 1 do 
    if btn(i) then
      player.dir = i
      if (i == 0 and (a == 0 or b == 0)) or (i == 1 and (c == 0 or d == 0)) then
        player.x += (2*i - 1)*player.spd
      end
    end
  end
  for i = 2,3 do
    if btn(i) then
      player.dir = i
      if (i == 2 and (e == 0 or f == 0)) or (i == 3 and (g == 0 or h == 0)) then
        player.y += (2*i - 5)*player.spd
      end
    end
  end
end

--
-- walls
--

function wall(x,y,w,h)
  local s = mget((x+w)/8,(y+h)/8)
  local t = mget((x-w)/8,(y-h)/8)
    return fget(s),fget(t)
end

--
-- drawing
--

function draw_player()
  spr(1, player.x - 2, player.y - 2)
end

function draw_world()
  map(0,0,0,0,32,32)
end

__gfx__
00000000888800004444dddddddd444444444444dddddddddddddddd4444444444444444dddd44444444dddd0000000000000000000000000000000000000000
00000000888800004444dddddddd444444444444dddddddddddddddd4444444444444444dddd44444444dddd0000000000000000000000000000000000000000
00700700888800004444dddddddd444444444444dddddddddddddddd4444444444444444dddd44444444dddd0000000000000000000000000000000000000000
00077000888800004444dddddddd444444444444dddddddddddddddd4444444444444444dddd44444444dddd0000000000000000000000000000000000000000
00077000000000004444dddddddd4444dddddddd44444444dddddddd4444dddddddd444444444444444444440000000000000000000000000000000000000000
00700700000000004444dddddddd4444dddddddd44444444dddddddd4444dddddddd444444444444444444440000000000000000000000000000000000000000
00000000000000004444dddddddd4444dddddddd44444444dddddddd4444dddddddd444444444444444444440000000000000000000000000000000000000000
00000000000000004444dddddddd4444dddddddd44444444dddddddd4444dddddddd444444444444444444440000000000000000000000000000000000000000
__gff__
0000010204080005060a09000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__map__
0704040404040404040404040404040800000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0206060606060606060606060606060300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0206060606060606060606060606060300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0206060606060606060606060606060300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0206060607060806060606060606060300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0206060606060606060606060606060300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
020606060a060906060606060606060300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0206060606060606060606060606060300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0206060606060606060606060606060300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0206060606060606060606060606060300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0206060606060606060606060606060300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0206060606060606060606060606060306060000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0206060606060606060606060606060306060000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0206060606060606060606060606060306060000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0206060606060606060606060606060300000000060000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0a05050505050505050505050505050900000000060606060600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000606060000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000606060000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
