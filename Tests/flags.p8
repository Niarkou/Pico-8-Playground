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
  for i = 0, 1 do 
    if btn(i) then
      player.dir = i
      player.x += (i - 1 + i)*player.spd
    end
  end
  for i = 2,3 do
    if btn(i) then
      player.dir = i
      player.y += (i - 5 + i)*player.spd
    end
  end
end

--
-- drawing
--

function draw_player()
  spr(1, player.x - 4, player.y - 4)
end

function draw_world()
  map(0,0,0,0,32,32)
end

__gfx__
00000000000000004444dddddddd444444444444dddddddddddddddd000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000004444dddddddd444444444444dddddddddddddddd000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000004444dddddddd444444444444dddddddddddddddd000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000004444dddddddd444444444444dddddddddddddddd000000000000000000000000000000000000000000000000000000000000000000000000
00077000888800004444dddddddd4444dddddddd44444444dddddddd000000000000000000000000000000000000000000000000000000000000000000000000
00700700888800004444dddddddd4444dddddddd44444444dddddddd000000000000000000000000000000000000000000000000000000000000000000000000
00000000888800004444dddddddd4444dddddddd44444444dddddddd000000000000000000000000000000000000000000000000000000000000000000000000
00000000888800004444dddddddd4444dddddddd44444444dddddddd000000000000000000000000000000000000000000000000000000000000000000000000
__gff__
0000010204080000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
__map__
0204040404040404040404040404040400000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0206060606060606060606060606060300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0206060606060606060606060606060300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0206060606060606060606060606060300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0206060606060606060606060606060300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0206060606060606060606060606060300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0206060606060606060606060606060300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0206060606060606060606060606060300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0206060606060606060606060606060300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0206060606060606060606060606060300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0206060606060606060606060606060300000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0206060606060606060606060606060306060000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0206060606060606060606060606060306060000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0206060606060606060606060606060306060000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0206060606060606060606060606060300000000060000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0205050505050505050505050505050500000000060606060600000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000606060000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
0000000000000000000606060000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
