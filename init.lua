MN="factory_bridges"

s = {}		--размер
s.s = 0.01	--шаг
s.b = -0.5	--низ
s.t = 0.5	--верх
s.l = -0.5	--левый борт
s.r = 0.5	--правый борт
s.n = -0.5	--ближний борт
s.d = 0.5	--дальний борт

e = {}		--элементы
--		x1			y1			z1			x2			y2			z2
e.f = {	s.l,		s.b,		s.n,		s.r,		s.b+3*s.s,	s.d			}	--пол
e.f1= {	s.l,		s.b,		s.n,		s.r,		s.b+3*s.s,	0			}	--нижняя ступенька
e.f2= {	s.l,		0,			0,			s.r,		3*s.s,		s.d			}	--верхняя ступенька

e.hl= {	s.l,		s.t-3*s.s,	s.n,		s.l+6*s.s,	s.t,		s.d			}	--поручень левый
e.hr= {	s.r-6*s.s,	s.t-3*s.s,	s.n,		s.r,		s.t,		s.d			}	--поручень правый
e.hd= {	s.l,		s.t-3*s.s,	s.d-6*s.s,	s.r,		s.t,		s.d			}	--поручень дальний
e.hn= {	s.l,		s.t-3*s.s,	s.n+6*s.s,	s.r,		s.t,		s.n			}	--поручень ближний
e.h1= {	s.l,		s.t-3*s.s,	s.d,		s.l+6*s.s,	s.t,		s.d-6*s.s	}	--поручень угловой дальний левый
e.h2= {	s.r,		s.t-3*s.s,	s.d,		s.r-6*s.s,	s.t,		s.d-6*s.s	}	--поручень угловой дальний правый
e.h3= {	s.r,		s.t-3*s.s,	s.n,		s.r-6*s.s,	s.t,		s.n+6*s.s	}	--поручень угловой ближний правый
e.h4= {	s.l,		s.t-3*s.s,	s.n,		s.l+6*s.s,	s.t,		s.n+6*s.s	}	--поручень угловой ближний левый

e.p1= {	s.l+23*s.s,	s.b,		s.d-5*s.s,	s.l+27*s.s,	s.t,		s.d-1*s.s	}	--стойка дальняя левая
e.p2= {	s.r-27*s.s,	s.b,		s.d-5*s.s,	s.r-23*s.s,	s.t,		s.d-1*s.s	}	--стойка дальняя правая
e.p3= {	s.r-5*s.s,	s.b,		s.n+23*s.s,	s.r-1*s.s,	s.t,		s.n+27*s.s	}	--стойка правая дальняя
e.p4= {	s.r-5*s.s,	s.b,		s.d-27*s.s,	s.r-1*s.s,	s.t,		s.d-23*s.s	}	--стойка правая ближняя
e.p5= {	s.l+23*s.s,	s.b,		s.n+1*s.s,	s.l+27*s.s,	s.t,		s.n+5*s.s	}	--стойка ближняя правая
e.p6= {	s.r-27*s.s,	s.b,		s.n+1*s.s,	s.r-23*s.s,	s.t,		s.n+5*s.s	}	--стойка ближняя левая
e.p7= {	s.l+1*s.s,	s.b,		s.n+23*s.s,	s.l+5*s.s,	s.t,		s.n+27*s.s	}	--стойка левая ближняя
e.p8= {	s.l+1*s.s,	s.b,		s.d-27*s.s,	s.l+5*s.s,	s.t,		s.d-23*s.s	}	--стойка левая дальняя
e.p9= {	s.l+1*s.s,	s.b,		s.d-1*s.s,	s.l+5*s.s,	s.t,		s.d-5*s.s	}	--стойка угловая дальняя левая
e.p10={	s.r-1*s.s,	s.b,		s.d-1*s.s,	s.r-5*s.s,	s.t,		s.d-5*s.s	}	--стойка угловая дальняя правая
e.p11={	s.r-1*s.s,	s.b,		s.n+1*s.s,	s.r-5*s.s,	s.t,		s.n+5*s.s	}	--стойка угловая ближняя правая
e.p12={	s.l+1*s.s,	s.b,		s.n+1*s.s,	s.l+5*s.s,	s.t,		s.n+5*s.s	}	--стойка угловая ближняя левая

e.s1 ={	s.l,		s.b,		s.d-6*s.s,	s.l+3*s.s,	s.t,		s.d			}
e.s2 ={	s.r-3*s.s,	s.b,		s.d-6*s.s,	s.r,		s.t,		s.d			}
e.s3 ={	s.r-3*s.s,	s.b,		0,			s.r,		s.t,		-6*s.s		}
e.s4 ={	-3*s.s,		s.b,		s.n,		3*s.s,		s.t,		s.n+3*s.s	}
e.s5 ={	s.l,		s.b,		0,			s.l+3*s.s,	s.t,		-6*s.s		}

e.c1 ={	s.l,		s.b+23*s.s,	s.d-5*s.s,	s.r,		s.b+27*s.s,	s.d-1*s.s	}
e.c2 ={	s.l,		s.t-27*s.s,	s.d-5*s.s,	s.r,		s.t-23*s.s,	s.d-1*s.s	}
e.c3 ={	s.l+3*s.s,	s.b+22*s.s,	s.n+3*s.s,	s.l+6*s.s,	s.b+28*s.s,	s.d			}
e.c4 ={	s.l+3*s.s,	s.t-28*s.s,	s.n+3*s.s,	s.l+6*s.s,	s.t-22*s.s,	s.d			}
e.c5 ={	s.r-6*s.s,	s.b+22*s.s,	s.n+3*s.s,	s.r-3*s.s,	s.b+28*s.s,	s.d			}
e.c6 ={	s.r-6*s.s,	s.t-28*s.s,	s.n+3*s.s,	s.r-3*s.s,	s.t-22*s.s,	s.d			}
e.c7 ={	s.l+3*s.s,	s.b+22*s.s,	s.n+3*s.s,	s.r-3*s.s,	s.b+28*s.s,	s.n+6*s.s	}
e.c8 ={	s.l+3*s.s,	s.t-28*s.s,	s.n+3*s.s,	s.r-3*s.s,	s.t-22*s.s,	s.n+6*s.s	}

grp = {cracky=2}


minetest.register_node(MN..":a00", { --стойка
	description = "Steel pole",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = grp,
	tiles = {"b00.png"},
	node_box = {
		type = "fixed",
		fixed = {e.p9, e.h1},
	},
})

minetest.register_node(MN..":a01", { --перила
	description = "Steel railing",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = grp,
	tiles = {"b00.png"},
	node_box = {
		type = "fixed",
		fixed = {e.p1, e.p2, e.hd},
	},
})


minetest.register_node(MN..":b00", { --плита
	description = "Steel slab №00",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = grp,
	tiles = {"b01.png", "b01.png", "b00.png"},
	node_box = {
		type = "fixed",
		fixed = {e.f},
	},
})

minetest.register_node(MN..":b01", { --поворот односторонний внутренний
	description = "Steel slab №01",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = grp,
	tiles = {"b01.png", "b01.png", "b00.png"},
	node_box = {
		type = "fixed",
		fixed = {e.f, e.h1, e.p9},
	},
})

minetest.register_node(MN..":b02", { --развилка односторонняя открытая
	description = "Steel slab №02",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = grp,
	tiles = {"b01.png", "b01.png", "b00.png"},
	node_box = {
		type = "fixed",
		fixed = {e.f, e.h1, e.h2, e.p9, e.p10},
	},
})

minetest.register_node(MN..":b03", { --перекрёсток односторонний
	description = "Steel slab №03",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = grp,
	tiles = {"b01.png", "b01.png", "b00.png"},
	node_box = {
		type = "fixed",
		fixed = {e.f, e.h1, e.h2, e.h3, e.p9, e.p10, e.p11},
	},
})

minetest.register_node(MN..":b04", { --перекрёсток
	description = "Steel slab №04",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = grp,
	tiles = {"b01.png", "b01.png", "b00.png"},
	node_box = {
		type = "fixed",
		fixed = {e.f, e.h1, e.h2, e.h3, e.h4, e.p9, e.p10, e.p11, e.p12},
	},
})

minetest.register_node(MN..":b05", { --проход односторонний
	description = "Steel slab №05",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = grp,
	tiles = {"b01.png", "b01.png", "b00.png"},
	node_box = {
		type = "fixed",
		fixed = {e.f, e.hd, e.p1, e.p2},
	},
})

minetest.register_node(MN..":b06", { --развилка односторонняя закрытая правая
	description = "Steel slab №06",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = grp,
	tiles = {"b01.png", "b01.png", "b00.png"},
	node_box = {
		type = "fixed",
		fixed = {e.f, e.hd, e.h3, e.p1, e.p2, e.p11},
	},
})

minetest.register_node(MN..":b07", { --развилка односторонняя закрытая правая
	description = "Steel slab №07",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = grp,
	tiles = {"b01.png", "b01.png", "b00.png"},
	node_box = {
		type = "fixed",
		fixed = {e.f, e.hd, e.h4, e.p1, e.p2, e.p12},
	},
})

minetest.register_node(MN..":b08", { --развилка
	description = "Steel slab №08",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = grp,
	tiles = {"b01.png", "b01.png", "b00.png"},
	node_box = {
		type = "fixed",
		fixed = {e.f, e.hd, e.h3, e.h4, e.p1, e.p2, e.p11, e.p12},
	},
})

minetest.register_node(MN..":b09", { --поворот односторонний наружний
	description = "Steel slab №09",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = grp,
	tiles = {"b01.png", "b01.png", "b00.png"},
	node_box = {
		type = "fixed",
		fixed = {e.f, e.hl, e.hd, e.p1, e.p2, e.p7, e.p8},
	},
})

minetest.register_node(MN..":b10", { --поворот
	description = "Steel slab №10",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = grp,
	tiles = {"b01.png", "b01.png", "b00.png"},
	node_box = {
		type = "fixed",
		fixed = {e.f, e.hl, e.hd, e.h3, e.p1, e.p2, e.p11, e.p7, e.p8},
	},
})

minetest.register_node(MN..":b11", { --проход
	description = "Steel slab №11",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = grp,
	tiles = {"b01.png", "b01.png", "b00.png"},
	node_box = {
		type = "fixed",
		fixed = {e.f, e.hl, e.hr, e.p3, e.p4, e.p7, e.p8},
	},
})

minetest.register_node(MN..":b12", { --тупик
	description = "SSteel slab №12",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = grp,
	tiles = {"b01.png", "b01.png", "b00.png"},
	node_box = {
		type = "fixed",
		fixed = {e.f, e.hd, e.hr, e.hl, e.p1, e.p2, e.p3, e.p4, e.p7, e.p8},
	},
})


minetest.register_node(MN..":s00", { --открытая лестница
	description = "Steel stairs №00",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	climbable = true,
	groups = grp,
	tiles = {"b00.png"},
	node_box = {
		type = "fixed",
		fixed = {e.s1, e.s2, e.c1, e.c2},
	},
})

minetest.register_node(MN..":s01", { --закрытая лестница
	description = "Steel stairs №01",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	climbable = true,
	groups = grp,
	tiles = {"b00.png"},
	node_box = {
		type = "fixed",
		fixed = {e.s1, e.s2, e.s3, e.s4, e.s5, e.c1, e.c2, e.c3, e.c4, e.c5, e.c6, e.c7, e.c8},
	},
})

minetest.register_node(MN..":s02", { --закрытая лестница (верхушка)
	description = "Steel stairs №02",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
--	climbable = true,
	groups = grp,
	tiles = {"b00.png"},
	node_box = {
		type = "fixed",
		fixed = {e.hl, e.hr, e.hn, e.s1, e.s2, e.s3, e.s4, e.s5},
	},
})

minetest.register_node(MN..":s03", { --закрытая лестница (направо)
	description = "Steel stairs №03",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	climbable = true,
	groups = grp,
	tiles = {"b00.png"},
	node_box = {
		type = "fixed",
		fixed = {e.hl, e.hn, e.s1, e.s2, e.s4, e.s5, e.c1, e.c2},
	},
})

minetest.register_node(MN..":s04", { --закрытая лестница (налево)
	description = "Steel stairs №04",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	climbable = true,
	groups = grp,
	tiles = {"b00.png"},
	node_box = {
		type = "fixed",
		fixed = {e.hr, e.hn, e.s1, e.s2, e.s4, e.s3, e.c1, e.c2},
	},
})

minetest.register_node(MN..":s05", { --закрытая лестница (двухсторонняя)
	description = "Steel stairs №05",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	climbable = true,
	groups = grp,
	tiles = {"b00.png"},
	node_box = {
		type = "fixed",
		fixed = {e.hn, e.s1, e.s2, e.s4, e.c1, e.c2},
	},
})


minetest.register_node(MN..":s06", { --ступенька
	description = "Steel stairs №06",
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	groups = grp,
	tiles = {"b02.png", "b02.png", "b00.png"},
	node_box = {
		type = "fixed",
		fixed = {e.f1, e.f2,
--левый поручень
			{	s.l,		s.t+0*s.s,	s.n+0*s.s,	s.l+6*s.s,	s.t+3*s.s,	s.n+3*s.s},
			{	s.l,		s.t+3*s.s,	s.n+3*s.s,	s.l+6*s.s,	s.t+6*s.s,	s.n+6*s.s},
			{	s.l,		s.t+6*s.s,	s.n+6*s.s,	s.l+6*s.s,	s.t+9*s.s,	s.n+9*s.s},
			{	s.l,		s.t+9*s.s,	s.n+9*s.s,	s.l+6*s.s,	s.t+12*s.s,	s.n+12*s.s},
			{	s.l,		s.t+12*s.s,	s.n+12*s.s,	s.l+6*s.s,	s.t+15*s.s,	s.n+15*s.s},
			{	s.l,		s.t+15*s.s,	s.n+15*s.s,	s.l+6*s.s,	s.t+18*s.s,	s.n+18*s.s},
			{	s.l,		s.t+18*s.s,	s.n+18*s.s,	s.l+6*s.s,	s.t+21*s.s,	s.n+21*s.s},
			{	s.l,		s.t+21*s.s,	s.n+21*s.s,	s.l+6*s.s,	s.t+24*s.s,	s.n+24*s.s},
			{	s.l,		s.t+24*s.s,	s.n+24*s.s,	s.l+6*s.s,	s.t+27*s.s,	s.n+27*s.s},
			{	s.l,		s.t+27*s.s,	s.n+27*s.s,	s.l+6*s.s,	s.t+30*s.s,	s.n+30*s.s},
			{	s.l,		s.t+30*s.s,	s.n+30*s.s,	s.l+6*s.s,	s.t+33*s.s,	s.n+33*s.s},
			{	s.l,		s.t+33*s.s,	s.n+33*s.s,	s.l+6*s.s,	s.t+36*s.s,	s.n+36*s.s},
			{	s.l,		s.t+36*s.s,	s.n+36*s.s,	s.l+6*s.s,	s.t+39*s.s,	s.n+39*s.s},
			{	s.l,		s.t+39*s.s,	s.n+39*s.s,	s.l+6*s.s,	s.t+42*s.s,	s.n+42*s.s},
			{	s.l,		s.t+42*s.s,	s.n+42*s.s,	s.l+6*s.s,	s.t+45*s.s,	s.n+45*s.s},
			{	s.l,		s.t+45*s.s,	s.n+45*s.s,	s.l+6*s.s,	s.t+48*s.s,	s.n+48*s.s},
			{	s.l,		s.t+48*s.s,	s.n+48*s.s,	s.l+6*s.s,	s.t+51*s.s,	s.n+51*s.s},
			{	s.l,		s.t+51*s.s,	s.n+51*s.s,	s.l+6*s.s,	s.t+54*s.s,	s.n+54*s.s},
			{	s.l,		s.t+54*s.s,	s.n+54*s.s,	s.l+6*s.s,	s.t+57*s.s,	s.n+57*s.s},
			{	s.l,		s.t+57*s.s,	s.n+57*s.s,	s.l+6*s.s,	s.t+60*s.s,	s.n+60*s.s},
			{	s.l,		s.t+60*s.s,	s.n+60*s.s,	s.l+6*s.s,	s.t+63*s.s,	s.n+63*s.s},
			{	s.l,		s.t+63*s.s,	s.n+63*s.s,	s.l+6*s.s,	s.t+66*s.s,	s.n+66*s.s},
			{	s.l,		s.t+66*s.s,	s.n+66*s.s,	s.l+6*s.s,	s.t+69*s.s,	s.n+69*s.s},
			{	s.l,		s.t+69*s.s,	s.n+69*s.s,	s.l+6*s.s,	s.t+72*s.s,	s.n+72*s.s},
			{	s.l,		s.t+72*s.s,	s.n+72*s.s,	s.l+6*s.s,	s.t+75*s.s,	s.n+75*s.s},
			{	s.l,		s.t+75*s.s,	s.n+75*s.s,	s.l+6*s.s,	s.t+78*s.s,	s.n+78*s.s},
			{	s.l,		s.t+78*s.s,	s.n+78*s.s,	s.l+6*s.s,	s.t+81*s.s,	s.n+81*s.s},
			{	s.l,		s.t+81*s.s,	s.n+81*s.s,	s.l+6*s.s,	s.t+84*s.s,	s.n+84*s.s},
			{	s.l,		s.t+84*s.s,	s.n+84*s.s,	s.l+6*s.s,	s.t+87*s.s,	s.n+87*s.s},
			{	s.l,		s.t+87*s.s,	s.n+87*s.s,	s.l+6*s.s,	s.t+90*s.s,	s.n+90*s.s},
			{	s.l,		s.t+90*s.s,	s.n+90*s.s,	s.l+6*s.s,	s.t+93*s.s,	s.n+93*s.s},
			{	s.l,		s.t+93*s.s,	s.n+93*s.s,	s.l+6*s.s,	s.t+96*s.s,	s.n+96*s.s},
			{	s.l,		s.t+96*s.s,	s.n+96*s.s,	s.l+6*s.s,	s.t+100*s.s,s.n+100*s.s},

			{	s.l+1*s.s,	s.b,		s.n+23*s.s,	s.l+5*s.s,	s.t+24*s.s,	s.n+27*s.s	},	--стойка левая ближняя
			{	s.l+1*s.s,	0,			s.d-27*s.s,	s.l+5*s.s,	s.t+75*s.s,	s.d-23*s.s	},	--стойка левая дальняя

--правый поручень
			{	s.r,		s.t+0*s.s,	s.n+0*s.s,	s.r-6*s.s,	s.t+3*s.s,	s.n+3*s.s},
			{	s.r,		s.t+3*s.s,	s.n+3*s.s,	s.r-6*s.s,	s.t+6*s.s,	s.n+6*s.s},
			{	s.r,		s.t+6*s.s,	s.n+6*s.s,	s.r-6*s.s,	s.t+9*s.s,	s.n+9*s.s},
			{	s.r,		s.t+9*s.s,	s.n+9*s.s,	s.r-6*s.s,	s.t+12*s.s,	s.n+12*s.s},
			{	s.r,		s.t+12*s.s,	s.n+12*s.s,	s.r-6*s.s,	s.t+15*s.s,	s.n+15*s.s},
			{	s.r,		s.t+15*s.s,	s.n+15*s.s,	s.r-6*s.s,	s.t+18*s.s,	s.n+18*s.s},
			{	s.r,		s.t+18*s.s,	s.n+18*s.s,	s.r-6*s.s,	s.t+21*s.s,	s.n+21*s.s},
			{	s.r,		s.t+21*s.s,	s.n+21*s.s,	s.r-6*s.s,	s.t+24*s.s,	s.n+24*s.s},
			{	s.r,		s.t+24*s.s,	s.n+24*s.s,	s.r-6*s.s,	s.t+27*s.s,	s.n+27*s.s},
			{	s.r,		s.t+27*s.s,	s.n+27*s.s,	s.r-6*s.s,	s.t+30*s.s,	s.n+30*s.s},
			{	s.r,		s.t+30*s.s,	s.n+30*s.s,	s.r-6*s.s,	s.t+33*s.s,	s.n+33*s.s},
			{	s.r,		s.t+33*s.s,	s.n+33*s.s,	s.r-6*s.s,	s.t+36*s.s,	s.n+36*s.s},
			{	s.r,		s.t+36*s.s,	s.n+36*s.s,	s.r-6*s.s,	s.t+39*s.s,	s.n+39*s.s},
			{	s.r,		s.t+39*s.s,	s.n+39*s.s,	s.r-6*s.s,	s.t+42*s.s,	s.n+42*s.s},
			{	s.r,		s.t+42*s.s,	s.n+42*s.s,	s.r-6*s.s,	s.t+45*s.s,	s.n+45*s.s},
			{	s.r,		s.t+45*s.s,	s.n+45*s.s,	s.r-6*s.s,	s.t+48*s.s,	s.n+48*s.s},
			{	s.r,		s.t+48*s.s,	s.n+48*s.s,	s.r-6*s.s,	s.t+51*s.s,	s.n+51*s.s},
			{	s.r,		s.t+51*s.s,	s.n+51*s.s,	s.r-6*s.s,	s.t+54*s.s,	s.n+54*s.s},
			{	s.r,		s.t+54*s.s,	s.n+54*s.s,	s.r-6*s.s,	s.t+57*s.s,	s.n+57*s.s},
			{	s.r,		s.t+57*s.s,	s.n+57*s.s,	s.r-6*s.s,	s.t+60*s.s,	s.n+60*s.s},
			{	s.r,		s.t+60*s.s,	s.n+60*s.s,	s.r-6*s.s,	s.t+63*s.s,	s.n+63*s.s},
			{	s.r,		s.t+63*s.s,	s.n+63*s.s,	s.r-6*s.s,	s.t+66*s.s,	s.n+66*s.s},
			{	s.r,		s.t+66*s.s,	s.n+66*s.s,	s.r-6*s.s,	s.t+69*s.s,	s.n+69*s.s},
			{	s.r,		s.t+69*s.s,	s.n+69*s.s,	s.r-6*s.s,	s.t+72*s.s,	s.n+72*s.s},
			{	s.r,		s.t+72*s.s,	s.n+72*s.s,	s.r-6*s.s,	s.t+75*s.s,	s.n+75*s.s},
			{	s.r,		s.t+75*s.s,	s.n+75*s.s,	s.r-6*s.s,	s.t+78*s.s,	s.n+78*s.s},
			{	s.r,		s.t+78*s.s,	s.n+78*s.s,	s.r-6*s.s,	s.t+81*s.s,	s.n+81*s.s},
			{	s.r,		s.t+81*s.s,	s.n+81*s.s,	s.r-6*s.s,	s.t+84*s.s,	s.n+84*s.s},
			{	s.r,		s.t+84*s.s,	s.n+84*s.s,	s.r-6*s.s,	s.t+87*s.s,	s.n+87*s.s},
			{	s.r,		s.t+87*s.s,	s.n+87*s.s,	s.r-6*s.s,	s.t+90*s.s,	s.n+90*s.s},
			{	s.r,		s.t+90*s.s,	s.n+90*s.s,	s.r-6*s.s,	s.t+93*s.s,	s.n+93*s.s},
			{	s.r,		s.t+93*s.s,	s.n+93*s.s,	s.r-6*s.s,	s.t+96*s.s,	s.n+96*s.s},
			{	s.r,		s.t+96*s.s,	s.n+96*s.s,	s.r-6*s.s,	s.t+100*s.s,s.n+100*s.s},

			{	s.r-1*s.s,	s.b,		s.n+23*s.s,	s.r-5*s.s,	s.t+24*s.s,	s.n+27*s.s	},	--стойка правая ближняя
			{	s.r-1*s.s,	0,			s.d-27*s.s,	s.r-5*s.s,	s.t+75*s.s,	s.d-23*s.s	},	--стойка правая дальняя

--левое крепление
			{	s.l,		s.b+0*s.s,		s.n+12*s.s,		s.l+1*s.s,	s.b+3*s.s,		s.n+33*s.s},
			{	s.l,		s.b+3*s.s,		s.n+15*s.s,		s.l+1*s.s,	s.b+6*s.s,		s.n+35*s.s},
			{	s.l,		s.b+6*s.s,		s.n+18*s.s,		s.l+1*s.s,	s.b+9*s.s,		s.n+38*s.s},
			{	s.l,		s.b+9*s.s,		s.n+21*s.s,		s.l+1*s.s,	s.b+12*s.s,		s.n+41*s.s},
			{	s.l,		s.b+12*s.s,		s.n+24*s.s,		s.l+1*s.s,	s.b+15*s.s,		s.n+44*s.s},
			{	s.l,		s.b+15*s.s,		s.n+27*s.s,		s.l+1*s.s,	s.b+18*s.s,		s.n+47*s.s},
			{	s.l,		s.b+18*s.s,		s.n+30*s.s,		s.l+1*s.s,	s.b+21*s.s,		s.n+50*s.s},
			{	s.l,		s.b+21*s.s,		s.n+33*s.s,		s.l+1*s.s,	s.b+24*s.s,		s.n+53*s.s},
			{	s.l,		s.b+24*s.s,		s.n+36*s.s,		s.l+1*s.s,	s.b+27*s.s,		s.n+56*s.s},
			{	s.l,		s.b+27*s.s,		s.n+39*s.s,		s.l+1*s.s,	s.b+30*s.s,		s.n+59*s.s},
			{	s.l,		s.b+30*s.s,		s.n+41*s.s,		s.l+1*s.s,	s.b+33*s.s,		s.n+62*s.s},
			{	s.l,		s.b+33*s.s,		s.n+44*s.s,		s.l+1*s.s,	s.b+36*s.s,		s.n+65*s.s},
			{	s.l,		s.b+36*s.s,		s.n+47*s.s,		s.l+1*s.s,	s.b+39*s.s,		s.n+68*s.s},
			{	s.l,		s.b+39*s.s,		s.n+50*s.s,		s.l+1*s.s,	s.b+42*s.s,		s.n+71*s.s},
			{	s.l,		s.b+42*s.s,		s.n+53*s.s,		s.l+1*s.s,	s.b+45*s.s,		s.n+74*s.s},
			{	s.l,		s.b+45*s.s,		s.n+56*s.s,		s.l+1*s.s,	s.b+48*s.s,		s.n+77*s.s},
			{	s.l,		s.b+48*s.s,		s.n+59*s.s,		s.l+1*s.s,	s.b+51*s.s,		s.n+80*s.s},
			{	s.l,		s.b+51*s.s,		s.n+62*s.s,		s.l+1*s.s,	s.b+54*s.s,		s.n+83*s.s},
			{	s.l,		s.b+54*s.s,		s.n+65*s.s,		s.l+1*s.s,	s.b+57*s.s,		s.n+86*s.s},
			{	s.l,		s.b+57*s.s,		s.n+68*s.s,		s.l+1*s.s,	s.b+60*s.s,		s.n+89*s.s},
			{	s.l,		s.b+60*s.s,		s.n+71*s.s,		s.l+1*s.s,	s.b+63*s.s,		s.n+92*s.s},
			{	s.l,		s.b+63*s.s,		s.n+74*s.s,		s.l+1*s.s,	s.b+66*s.s,		s.n+95*s.s},
			{	s.l,		s.b+66*s.s,		s.n+77*s.s,		s.l+1*s.s,	s.b+69*s.s,		s.n+98*s.s},
			{	s.l,		s.b+69*s.s,		s.n+80*s.s,		s.l+1*s.s,	s.b+72*s.s,		s.n+101*s.s},
			{	s.l,		s.b+72*s.s,		s.n+83*s.s,		s.l+1*s.s,	s.b+75*s.s,		s.n+104*s.s},
			{	s.l,		s.b+75*s.s,		s.n+86*s.s,		s.l+1*s.s,	s.b+78*s.s,		s.n+107*s.s},
			{	s.l,		s.b+78*s.s,		s.n+89*s.s,		s.l+1*s.s,	s.b+81*s.s,		s.n+110*s.s},
			{	s.l,		s.b+81*s.s,		s.n+92*s.s,		s.l+1*s.s,	s.b+84*s.s,		s.n+113*s.s},
			{	s.l,		s.b+84*s.s,		s.n+95*s.s,		s.l+1*s.s,	s.b+87*s.s,		s.n+116*s.s},
			{	s.l,		s.b+87*s.s,		s.n+98*s.s,		s.l+1*s.s,	s.b+90*s.s,		s.n+119*s.s},
			{	s.l,		s.b+90*s.s,		s.n+101*s.s,	s.l+1*s.s,	s.b+93*s.s,		s.n+121*s.s},
			{	s.l,		s.b+93*s.s,		s.n+104*s.s,	s.l+1*s.s,	s.b+96*s.s,		s.n+124*s.s},
			{	s.l,		s.b+96*s.s,		s.n+107*s.s,	s.l+1*s.s,	s.b+99*s.s,		s.n+127*s.s},
			{	s.l,		s.b+99*s.s,		s.n+110*s.s,	s.l+1*s.s,	s.b+102*s.s,	s.n+130*s.s},

--правое крепление
			{	s.r,		s.b+0*s.s,		s.n+12*s.s,		s.r-1*s.s,	s.b+3*s.s,		s.n+33*s.s},
			{	s.r,		s.b+3*s.s,		s.n+15*s.s,		s.r-1*s.s,	s.b+6*s.s,		s.n+35*s.s},
			{	s.r,		s.b+6*s.s,		s.n+18*s.s,		s.r-1*s.s,	s.b+9*s.s,		s.n+38*s.s},
			{	s.r,		s.b+9*s.s,		s.n+21*s.s,		s.r-1*s.s,	s.b+12*s.s,		s.n+41*s.s},
			{	s.r,		s.b+12*s.s,		s.n+24*s.s,		s.r-1*s.s,	s.b+15*s.s,		s.n+44*s.s},
			{	s.r,		s.b+15*s.s,		s.n+27*s.s,		s.r-1*s.s,	s.b+18*s.s,		s.n+47*s.s},
			{	s.r,		s.b+18*s.s,		s.n+30*s.s,		s.r-1*s.s,	s.b+21*s.s,		s.n+50*s.s},
			{	s.r,		s.b+21*s.s,		s.n+33*s.s,		s.r-1*s.s,	s.b+24*s.s,		s.n+53*s.s},
			{	s.r,		s.b+24*s.s,		s.n+36*s.s,		s.r-1*s.s,	s.b+27*s.s,		s.n+56*s.s},
			{	s.r,		s.b+27*s.s,		s.n+39*s.s,		s.r-1*s.s,	s.b+30*s.s,		s.n+59*s.s},
			{	s.r,		s.b+30*s.s,		s.n+41*s.s,		s.r-1*s.s,	s.b+33*s.s,		s.n+62*s.s},
			{	s.r,		s.b+33*s.s,		s.n+44*s.s,		s.r-1*s.s,	s.b+36*s.s,		s.n+65*s.s},
			{	s.r,		s.b+36*s.s,		s.n+47*s.s,		s.r-1*s.s,	s.b+39*s.s,		s.n+68*s.s},
			{	s.r,		s.b+39*s.s,		s.n+50*s.s,		s.r-1*s.s,	s.b+42*s.s,		s.n+71*s.s},
			{	s.r,		s.b+42*s.s,		s.n+53*s.s,		s.r-1*s.s,	s.b+45*s.s,		s.n+74*s.s},
			{	s.r,		s.b+45*s.s,		s.n+56*s.s,		s.r-1*s.s,	s.b+48*s.s,		s.n+77*s.s},
			{	s.r,		s.b+48*s.s,		s.n+59*s.s,		s.r-1*s.s,	s.b+51*s.s,		s.n+80*s.s},
			{	s.r,		s.b+51*s.s,		s.n+62*s.s,		s.r-1*s.s,	s.b+54*s.s,		s.n+83*s.s},
			{	s.r,		s.b+54*s.s,		s.n+65*s.s,		s.r-1*s.s,	s.b+57*s.s,		s.n+86*s.s},
			{	s.r,		s.b+57*s.s,		s.n+68*s.s,		s.r-1*s.s,	s.b+60*s.s,		s.n+89*s.s},
			{	s.r,		s.b+60*s.s,		s.n+71*s.s,		s.r-1*s.s,	s.b+63*s.s,		s.n+92*s.s},
			{	s.r,		s.b+63*s.s,		s.n+74*s.s,		s.r-1*s.s,	s.b+66*s.s,		s.n+95*s.s},
			{	s.r,		s.b+66*s.s,		s.n+77*s.s,		s.r-1*s.s,	s.b+69*s.s,		s.n+98*s.s},
			{	s.r,		s.b+69*s.s,		s.n+80*s.s,		s.r-1*s.s,	s.b+72*s.s,		s.n+101*s.s},
			{	s.r,		s.b+72*s.s,		s.n+83*s.s,		s.r-1*s.s,	s.b+75*s.s,		s.n+104*s.s},
			{	s.r,		s.b+75*s.s,		s.n+86*s.s,		s.r-1*s.s,	s.b+78*s.s,		s.n+107*s.s},
			{	s.r,		s.b+78*s.s,		s.n+89*s.s,		s.r-1*s.s,	s.b+81*s.s,		s.n+110*s.s},
			{	s.r,		s.b+81*s.s,		s.n+92*s.s,		s.r-1*s.s,	s.b+84*s.s,		s.n+113*s.s},
			{	s.r,		s.b+84*s.s,		s.n+95*s.s,		s.r-1*s.s,	s.b+87*s.s,		s.n+116*s.s},
			{	s.r,		s.b+87*s.s,		s.n+98*s.s,		s.r-1*s.s,	s.b+90*s.s,		s.n+119*s.s},
			{	s.r,		s.b+90*s.s,		s.n+101*s.s,	s.r-1*s.s,	s.b+93*s.s,		s.n+121*s.s},
			{	s.r,		s.b+93*s.s,		s.n+104*s.s,	s.r-1*s.s,	s.b+96*s.s,		s.n+124*s.s},
			{	s.r,		s.b+96*s.s,		s.n+107*s.s,	s.r-1*s.s,	s.b+99*s.s,		s.n+127*s.s},
			{	s.r,		s.b+99*s.s,		s.n+110*s.s,	s.r-1*s.s,	s.b+102*s.s,	s.n+130*s.s},
		}
	},
})


minetest.register_craftitem(MN..":i00", { --арматура
	description = "Rebar	",
	inventory_image = "i00.png",
})

minetest.register_craftitem(MN..":i01", { --поручень
	description = "Handrail",
	inventory_image = "i01.png",
})

minetest.register_craftitem(MN..":i02", { --длинный поручень
	description = "Long handrail",
	inventory_image = "i02.png",
})


minetest.register_craft({output = MN..":i00 12",
	recipe = {
		{"", "", "default:steel_ingot"},
		{"", "default:steel_ingot", ""},
		{"default:steel_ingot", "", ""}
	},
})

minetest.register_craft({output = MN..":i01 12",
	recipe = {
		{"default:steel_ingot", "default:steel_ingot"}
	},
})

minetest.register_craft({output = MN..":i02",
	recipe = {{MN..":i01", MN..":i01", MN..":i01"}},
})

minetest.register_craft({output = MN..":a00",
	recipe = {
		{"",			MN..":i01",		""				},
		{"",			MN..":i00",		""				},
		{"",			"",				""				},
	},
})

minetest.register_craft({output = MN..":a01",
	recipe = {
		{"",			MN..":i02",		""				},
		{MN..":i00",	"",				MN..":i00"		},
		{"",			"",				""				},
	},
})


minetest.register_craft({output = MN..":b00 6",
	recipe = {
		{"default:steel_ingot", "default:steel_ingot", "default:steel_ingot"}
	},
})

minetest.register_craft({output = MN..":b01",
	recipe = {
		{MN..":a00",	"",				""				},
		{"",			MN..":b00",		""				},
		{"",			"",				""				},
	},
})

minetest.register_craft({output = MN..":b02",
	recipe = {
		{MN..":a00",	"",				MN..":a00"		},
		{"",			MN..":b00",		""				},
		{"",			"",				""				},
	},
})

minetest.register_craft({output = MN..":b03",
	recipe = {
		{MN..":a00",	"",				MN..":a00"		},
		{"",			MN..":b00",		""				},
		{"",			"",				MN..":a00"		},
	},
})

minetest.register_craft({output = MN..":b04",
	recipe = {
		{MN..":a00",	"",				MN..":a00"		},
		{"",			MN..":b00",		""				},
		{MN..":a00",	"",				MN..":a00"		},
	},
})

minetest.register_craft({output = MN..":b05",
	recipe = {
		{"",			MN..":a01",		""				},
		{"",			MN..":b00",		""				},
		{"",			"",				""				},
	},
})

minetest.register_craft({output = MN..":b06",
	recipe = {
		{"",			MN..":a01",		""				},
		{"",			MN..":b00",		""				},
		{"",			"",				MN..":a00"		},
	},
})

minetest.register_craft({output = MN..":b07",
	recipe = {
		{"",			MN..":a01",		""				},
		{"",			MN..":b00",		""				},
		{MN..":a00",	"",				""				},
	},
})

minetest.register_craft({output = MN..":b08",
	recipe = {
		{"",			MN..":a01",		""				},
		{"",			MN..":b00",		""				},
		{MN..":a00",	"",				MN..":a00"		},
	},
})

minetest.register_craft({output = MN..":b09",
	recipe = {
		{"",			MN..":a01",		""				},
		{MN..":a01",	MN..":b00",		""				},
		{"",			"",				""				},
	},
})

minetest.register_craft({output = MN..":b10",
	recipe = {
		{"",			MN..":a01",		""				},
		{MN..":a01",	MN..":b00",		""				},
		{"",			"",				MN..":a00"		},
	},
})

minetest.register_craft({output = MN..":b11",
	recipe = {
		{"",			"",				""				},
		{MN..":a01",	MN..":b00",		MN..":a01"		},
		{"",			"",				""				},
	},
})

minetest.register_craft({output = MN..":b12",
	recipe = {
		{"",			MN..":a01",		""				},
		{MN..":a01",	MN..":a00",		MN..":a01"		},
		{"",			"",				""				},
	},
})


minetest.register_craft({output = MN..":s00",
	recipe = {
		{"",			MN..":i00",		""				},
		{MN..":i02",		"",				MN..":i02"		},
		{"",			MN..":i00",		""				},
	},
})

minetest.register_craft({output = MN..":s01",
	recipe = {
		{MN..":i02",	MN..":i02",		MN..":i02"		},
		{MN..":i02",	MN..":s00",		MN..":i02"		},
		{MN..":i02",	MN..":i02",		MN..":i02"		},
	},
})

minetest.register_craft({output = MN..":s02",
	recipe = {
		{MN..":i02",	MN..":i02",		MN..":i02"		},
		{MN..":i02",	"",				MN..":i02"		},
		{MN..":i02",	MN..":i02",		MN..":i02"		},
	},
})

minetest.register_craft({output = MN..":s03",
	recipe = {
		{MN..":i02",	"",				""				},
		{MN..":i02",	MN..":s00",		""				},
		{MN..":i02",	MN..":i02",		""				},
	},
})

minetest.register_craft({output = MN..":s04",
	recipe = {
		{"",			"",				MN..":i02"		},
		{"",			MN..":s00",		MN..":i02"		},
		{"",			MN..":i02",		MN..":i02"		},
	},
})

minetest.register_craft({output = MN..":s05",
	recipe = {
		{"",			"",				""				},
		{"",			MN..":s00",		""				},
		{MN..":i02",	"",				MN..":i02"		},
	},
})

minetest.register_craft({output = MN..":s06",
	recipe = {
		{"",			MN..":a01",		""				},
		{MN..":i02",	MN..":b00",		MN..":a01"		},
		{"",			MN..":i02",		""				},
	},
})
