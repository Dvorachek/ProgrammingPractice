:-style_check(-singleton).

%
%  Predicate definitions (Canadian provinces and territories: Alberta, British Columbia, NW Territories, Yukon)
%

map(YK, NT, BC, AB):- dif(YK, NT),
	dif(YK, BC),
	dif(BC, AB),
	dif(BC, NT),
	dif(NT, AB),
	colour(YK),
	colour(NT),
	colour(BC),
	colour(AB).

%
%  Predicate facts
%  
%

colour(blue).
colour(red).
colour(green).