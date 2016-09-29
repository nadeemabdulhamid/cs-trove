A	family	is	traveling	on	their	annual	vacation.	They	need to	know	the	total	cost of	the vacation.	Total cost	includes	the	cost	of air	flight	and	additional	daily	costs. Air	flight	is	$3,000	for	one	adult,	$2,000	for	a	child	between	2	and	12	years,	and	$200	for	an	infant	below	2	years.	

Each	traveler	incurs	a	fixed	additional	daily	cost that	is	based	on	the	number	of	vacation	days	(days),	a daily	rate	(rate),	and	a	discount	amount	(discount).

Write	a	Racket	function	`travel-cost` that	consumes	four	natural	numbers adults,	children,	infants,	and	days, and	two	non-negative	numbers	(rate and	discount). 

The	function	produces the	total	cost	of	the	vacation	by	combining	the	cost	of	air	flight	and	the	total	daily	cost for	all	travelers. 

    daily-cost = days * (adults + children + infants) * rate * (1.0 – discount)

Note	that days >	0	and	the	discount, which	is	between	0	and	1, is	applied	on	the	daily	cost	only.	
There	is	no	discount	on	air	flight.
For	example:	

    (travel-cost 2 2 1 10 10.0 0.1) => 10650
    (travel-cost 2 2 3 4 85.24 0.15) => 12628.712
