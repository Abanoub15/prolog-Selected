main:-
	writeln('Hello in our Expert System'),
	writeln('We Will Help You To Know The Flowers That You Saw :D '),
	writeln('Answer The Following Questions [Y/N]').
%==============================%
%	    facts              %
%==============================%
spring(10).
winter(20).
autumn(30).
summer(40).
blue(50).
purple(60).
yellow(50).
red(10).
white(60).
pink(40).
orange(80).
pinkish_red(85).
size_more_10_less_40(35).
size_more_40_less_70(60).
size_more_70(90).
bulb(60).
root(70).
dry(90).
perfumed.
one_year(100).
more_than_one_year(90).
loose(50).
acidic(40).
fertile(30).
rich(50).
well_drained(80).
alluvialloam(70).
%============Questions=============%
ask(prompt):-
	write(prompt),
	read(X),
	X==true.

%==================================%
%======================================================%
anemone:-
	perennial,
	roots_rootType,
	white_red_blue_yellow,
	autumn_season.
iris:-
	summer_season,
	blue_purple_yellow,
	perennial,
	bulb_rootTtype.
chrysanthemum:-
	autumn_season,
	height_meduim,
	white_yellow_purple_red.
freesia:-
	spring_season,
	bulb_rootType,
	yellow_white__orange_purple_red_blue,
	perfumed_.
dahila:-
	perennial,
	tall_height,
	bulb_rootType,
	summer_season.
narcissus:-
	spring_season,
	bulb_rootType,
	yellow_white.
camellia:-
	acidic_soil,
	pink_white_red,
	perennial,
	roots_rootType.
lily:-
	spring_season,
	bulb_rootType,
	perfumed_,
	small_height,
	perennial.
begonia:-
	spring_season,
	bulb_rootType,
	annual,
	rich_loos_fertile_Soil,
	small_height.
azalea:-
	winter_season,
	white_red_blue_yellow.
aAnemone:-
	perennial,
	roots_rootType,
	white_red_blue_yellow.
rose:-
	perennial,
	roots_rootType,
	white_pink_yellow_red,
	perfumed_,
	well_drained_Soil.
white_lily:-
	lily,
	perfumed_.
helenium:-
	red_yellow_orange,
	summer_season,
	alluvial_loam_Soil,
	roots_rootType.
weigela:-
	pink_red,
	summer_season,
	dry_Soil,
	tall_height.
viola:-
	purple_color,
	annual,
	spring_season,
	well_drained_Soil.
monarda:-
	pink_white,
	autumn_season,
	well_drained_Soil.
tulip:-
	white,
	bulbs_rootType,
	spring_season.
sunflower:-
	orange_yellow,
	annual,
	tall_height.
%================================%
%	      RULES	         %
%================================%
problem(X):-
	main,
	types_flowers(X).
types_flowers(X):-
	anemone(X);
	azalea(X);
	begonia(X);
	rose(X);
	freesia(X);
	narcissus(X);
	cameuia(X);
	lily(X);
	iris(X);
	chrysanthemum(X);
	dahlia(X);
	white_lily(X);
	helenium(X);
	violet(X);
	weigela(X);
	sunflower(X) .
small(X1):-
	size_more_10_less_40(X1).
medium(X):-
	size_more_40_less_70(X).
tall(X):-
	size_more_70(X).

life_cycle(X):-
	more_than_one_year(X).
life_cycle(X):-
	one_year(X).
%Anemone%
anemone(CF):-
	life_type(X1),
	root_type(X2),
	color(X3),
	CF is (X1 + X2 + X3)/3.
life_type(X):-
	perennial(X).
perennial(X):-
	life_cycle(X).

root_type(X):-
	root(X).
color(CF):-
	white(X1);
	red(X2);
	blue(X3);
	yellow(X4),
	CF is X1+X2+X3+X4*(1-X1/100).
%Azatea%
azalea(CF):-
	season(X1),
	color(X2),
	CF is (X1+X2)/2.
season(X):-
	winter(X).
color(CF):-
	white(X1);
	red(X2);
	pink(X3),
	CF is X1+X2+X3*(1-X1/100).
%begonia%
begonia(CF):-
	soil(X1),
	life_type(X2),
	height(X3),
	CF is (X1 + X2 + X3)/3.
height(X):-
	small(X).

soil(CF):-
	loose(X1);
	fertile(X2);
	rich(X3),
	CF is X1+X2+X3*(1-X1/100)  .
life_type(X):-
	annual(X).
annual(X):-
	life_cycle(X).

%rose%
rose(CF):-
	perfumed,
	color(X1),
	root_type(X2),
	life_type(X3),
	soil(X4),
	CF is (X1 + X2 +X3 + X4)/4.
soil(X):-
	well_drained(X).
color(CF):-
	pink(X1);
	white(X2);
	red(X3);
	yellow(X4),
	CF is X1+X2+X3+X4 *(1-X1/100).
root_type(X):-
	root(X).
life_type(X):-
	perennial(X).
perennial(X):-
	life_cycle(X).

%iris%
iris(CF):-
	root_type(X1),
	season(X2),
	life_type(X3),
	color(X4),
	CF is (X1 + X2 + X3 + X4)/4 .
root_type(X):-
	bulb(X).
season(X):-
	summer(X).
color(CF):-
	blue(X1);
	purple(X2);
	yellow(X3),
	CF is X1+X2+X3 * (1-X1/100).
life_type(X):-
	perennial(X).
perennial(X):-
	life_cycle(X).

chrysanthemum(CF):-
	season(X1),
	color(X2),
	height(X3),
	CF is (X1+X2+X3)/3.
season(X):-
	autumn(X).
color(CF):-
	yellow(X1);
	white(X2);
	purple(X3);
	red(X4),
	CF is (X1+X2+X3+X4)/4.
height(X):-
	medium(X).

anemone(CF):-
	season(X1),
	color(X2),
	CF is (X1+X2)/2.
season(X):-
	autumn(X).
color(CF):-
	white(X1);
	pink(X2);
	pinkish_red(X3),
	CF is X1+X2+X3 *(1-X1/100).

dahlia(CF):-
	life_type(X1),
	root_type(X2),
	height(X3),
	season(X4),
	CF is (X1+X2+X3+X4)/4.
root_type(X):-
	bulb(X).
season(X):-
	summer(X).
height(X):-
	tall(X).

life_type(X):-
	perennial(X).
perennial(X):-
	life_cycle(X).

%%	%%
freesia(CF):-
	root_type(X1),
	season(X2),
	color(X3),
	perfumed,
	CF is (X1+X2+X3)/3.
season(X):-
	spring(X).
root_type(X):-
	bulb(X).
color(CF):-
	(white(X1);yellow(X2);
	red(X4);orange(X3);
	purple(X5);blue(X6)),
	CF is (X1+X2+X3+X4+X5+X6) * (1-X1/100).
%%	%%
narcissus(CF):-
	season(X1),
	root_type(X2),
	color(X3),
	CF is (X1 + X2+X3)/3.
season(X):-
	spring(X).
root_type(X):-
	bulb(X).
color(CF):-
	(yellow(X1);white(X2)),
	CF is X1+X2 *(1-X1/100).


%%	%%
cameuia(CF):-
	soil(X1),
	life_type(X2),
	root_type(X3),
	color(X4),
        CF is (X1 + X2+X3+X4)/4.
soil(X):-
	acidic(X).
life_type(X):-
	perennial(X).
perennial(X):-
	life_cycle(X).
root_type(X):-
	root(X).
color(CF):-
	(   white(X1);pink(X2);red(X3)),
	CF is X1+X2+X3 *(1-X1/100).
%%	%%
lily(CF):-
	season(X1),
	root_type(X2),
	perfumed,
	life_type(X4),
	height(X5),
	CF is (X1 + X2 + X4 + X5)/4 .
season(X):-
	spring(X).

root_type(X2):-
	bulb(X2).
life_type(X):-
	perennial(X).
perennial(X):-
	life_cycle(X).
height(X):-
	small(X).
%%	%%
white_lily(CF):-
	lily(X),
	perfumed,
	CF is X.


helenium(X):-
	color(X),
	season(X),
	soil(X),
	root_type(X).
color(CF):-
	(   orange(X1);
	yellow(X2);
	red(X3)),
	CF is X1+X2+X3 *(1-X1/100).
season(X):-
	summer(X).
soil(X):-
	alluvialloam(X).

root_type(X):-
	bulb(X).


violet(CF):-
	color(X1),
	life_type(X2),
	season(X3),
	soil(X4),
	CF is (X1 + X2+X3+X4)/4.
color(X):-
	purple(X).
life_type(X):-
	annual(X).
annual(X):-
	life_cycle(X).

season(X):-
	spring(X).
soil(X):-
	well_drained(X).

weigela(CF):-
	color(X1),
	season(X2),
	soil(X3),
	height(X4),
	CF is (X1 + X2+X3+X4)/4.

color(X):-
	pink(X);
	red(X).
season(X):-
	summer(X).
soil(X):-
	dry(X).
height(X):-
	tall(X).

sunflower(CF):-
	color(X1),
	height(X2),
	life_type(X3),
	CF is (X1 + X2+X3)/3.
color(X):-
	yellow(X).
height(X):-
	tall(X).
life_type(X):-
	annual(X).
