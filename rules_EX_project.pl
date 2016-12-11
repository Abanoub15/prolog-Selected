%=====================%
%Flowers Expert System%
%=====================%

%Azales
rule(1,
     lhs([av(winter_season,yes),av(azala_color,yes)]),
     rhs(av(problem,azala),100)).
rule(2,
     lhs([av(red_color,yes)]),
     rhs(av(azala_color,yes),20)).
rule(3,
     lhs([av(white_color,yes)]),
     rhs(av(azala_color,yes),20)).
rule(4,
     lhs([av(pink_color,yes)]),
     rhs(av(azala_color,yes),20)).
%Anemone
rule(5,
     lhs([av(pernnial_lifeType,yes),av(anemone_color,yes)]),
     rhs(av(problem,anemone),60)).
rule(6,
     lhs([av(blue_color,yes)]),
     rhs(av(anemone_color,yes),30)).
rule(7,
     lhs([av(yellow_color,yes)]),
     rhs(av(anemone_color,yes),30)).
rule(8,
     lhs([av(white_color,yes)]),
     rhs(av(anemone_color,yes),30)).
rule(9,
     lhs([av(red_color,yes)]),
     rhs(av(anemone_color,yes),30)).
%Rose
rule(10,
     lhs([av(pernnial_lifeType,yes),av(rose_color,yes),av(perfumed,yes),av(well_drained_soil,yes)]),
     rhs(av(problem,rose),60)).
rule(11,
     lhs([av(yellow_color,yes)]),
     rhs(av(rose_color,yes),80)).
rule(12,
     lhs([av(white_color,yes)]),
     rhs(av(rose_color,yes),80)).
rule(13,
     lhs([av(pink_color,yes)]),
     rhs(av(rose_color,yes),80)).
rule(14,
     lhs([av(red_color,yes)]),
     rhs(av(rose_color,yes),80)).
%iris
rule(15,
     lhs([av(summer_season,yes),av(pernnial_lifeType,yes),av(iris_color,yes)]),
     rhs(av(problem,iris),60)).
rule(16,
     lhs([av(yellow_color,yes)]),
     rhs(av(iris_color,yes),80)).
rule(17,
     lhs([av(blue_color,yes)]),
     rhs(av(iris_color,yes),80)).
rule(18,
     lhs([av(purple_color,yes)]),
     rhs(av(iris_color,yes),80)).

%Chrysanthemums
rule(19,
     lhs([av(autumn_season,yes),av(meduim_hight,yes),av(chrysanthemums_color)]),
     rhs(av(problem,chrysanthemums),90)).
rule(20,
     lhs([av(purple_color,yes)]),
     rhs(av(chrysanthemums_color,yes),70)).
rule(21,
     lhs([av(white_color,yes)]),
     rhs(av(chrysanthemums_color,yes),70)).
rule(22,
     lhs([av(red_color,yes)]),
     rhs(av(chrysanthemums_color,yes),70)).
rule(23,
     lhs([av(white_color,yes)]),
     rhs(av(chrysanthemums_color,yes),70)).
rule(24,
     lhs([av(yellow_color,yes)]),
     rhs(av(chrysanthemums_color,yes),70)).
%dahlia
rule(25,
     lhs([av(summer_season,yes),av(tall_hight,yes)]),
     rhs(av(problem,dahlia),90)).
%Narcissus
rule(26,
     lhs([av(spring_season,yes),av(narcissus_color,yes)]),
     rhs(av(problem,narcissus),50)).
rule(27,
     lhs([av(white_color,yes)]),
     rhs(av(narcissus_color,yes),50)).
rule(28,
     lhs([av(yellow_color,yes)]),
     rhs(av(narcissus_color,yes),50)).
%lily
rule(29,
     lhs([av(spring_season,yes),av(pernnial_lifeType,yes),av(perfumed,yes),av(small_hight,yes)]),
     rhs(av(problem,lily),90)).
%caminia
rule(30,
     lhs([av(acidic_soil,yes),av(pernnial_lifeType,yes),av(caminia_color,yes)]),
     rhs(av(problem,caminia),75)).
rule(31,
     lhs([av(white_color,yes)]),
     rhs(av(caminia_color,yes),50)).
rule(32,
     lhs([av(pink_color,yes)]),
     rhs(av(caminia_color,yes),50)).
rule(33,
     lhs([av(red_color,yes)]),
     rhs(av(caminia_color,yes),50)).
%freesia
rule(34,
     lhs([av(spring_season,yes),av(perfumed,yes),av(freesia_color,yes)]),
     rhs(av(problem,freesia),100)).
rule(35,
     lhs([av(red_color,yes)]),
     rhs(av(freesia_color,yes),50)).
rule(36,
     lhs([av(orange_color,yes)]),
     rhs(av(freesia_color,yes),50)).
rule(37,
     lhs([av(pink_color,yes)]),
     rhs(av(freesia_color,yes),50)).
%begonia
rule(38,
     lhs([av(small_hight,yes),av(begonia_soil,yes),av(annual_lifeType,yes)]),
     rhs(av(problem,begonia),85)).
rule(39,
     lhs([av(rich_soil,yes)]),
     rhs(av(begonia_soil,yes),70)).
rule(40,
     lhs([av(loose_soil,yes)]),
     rhs(av(begonia_soil,yes),70)).



askable(winter_season, 'is this flower grown up in winter?').
askable(summer_season, 'is this flower grown up in summer?').
askable(autumn_season, 'is this flower grown up in autumn?').
askable(spring_season, 'is this flower grown up in spring?').
askable(red_color, 'is this flower color(red )?').
askable(white_color, 'is this flower color(white)?').
askable(pink_color, 'is this flower color(pink)?').
askable(yellow_color, 'is this flower color(yellow)?').
askable(blue_color, 'is this flower color(blue)?').
askable(purple_color, 'is this flower color(purple)?').
askable(orange_color, 'is this flower color(orange)?').
askable(pernnial_lifeType, 'is this flower that life more than one year?').
askable(annual_lifeType, 'is this flower that life one year?').
askable(perfumed, 'is this flower perfumed?').
askable(well_drained_soil, 'is the soil of this flower well drained?').
askable(acidic_soil, 'is the soil of this flower acidic soil?').
askable(rich_soil, 'is the soil of this flower rich soil?').
askable(loose_soil, 'is the soil of this flower loose soil?').
askable(meduim_hight,'is this flower  medium?').
askable(small_hight,'is this flower  small?').
askable(tall_hight,'is this flower  tall?').
