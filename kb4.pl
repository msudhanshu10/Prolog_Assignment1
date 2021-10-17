% ----------- Facts copied for implementation of test
age(rohan, 23).
citizen(rohan, 23).
age(meera, 30).
citizen(meera, 8).
age(david, 35).
citizen(david, 35).
age(leonard, 40).
citizen(leonard, 40).
age(amy, 38).
citizen(amy, 5).
stateOfUS(newHampshire).
stateOfUS(massachusetts).
stateOfUS(connecticut).
stateOfUS(newYork).
stateOfUS(newJersey).
stateOfUS(pennsylvania).
stateOfUS(delaware).
stateOfUS(maryland).
stateOfUS(virginia).
stateOfUS(northCarolina).
stateOfUS(southCarolina).
stateOfUS(georgia).
monday(7, 1, 2019).
monday(2, 12, 2019).

%Added Facts
inhabitant(rohan, newHampshire).
inhabitant(meera, massachusetts).
inhabitant(david, connecticut).
inhabitant(leonard, newYork).
inhabitant(amy, newJersey).

%Article II
%Section 1
executivePower("President of US").
officeTerm(president, 4).
officeTerm("vice president", 4).
/*Use atoms as arguments and not variables to run the below two functors*/
elector(X) :- not(X==senator), not(X==representative), not(X==officeOfTrustOrProfit).
electorsVote(X, Y, Z):- not(inhabitant(X,Y)), not(inhabitant(X,Z)).

electionDay(31, 12, 2019).
eligibleToOfficeOfPresident(X):- citizen(X, Z), age(X,Y), Y >=35, Z>=14.

%Section-2
/*Functions to check the commander in chief of different services*/
commanderInChiefOfArmy(president).
commanderInChiefOfNavy(president).
commanderInChiefOfMilitia(president).

/*Functions to check the powers of president*/
power(president, "to grant Reprieves and Pardons for Offenses against the United States, except in Cases of Impeachment").
power(president, "by and with the Advice and Consent of the Senate, to make Treaties, provided two thirds of the Senators present concur").
power(president, "shall nominate, and by and with the Advice and Consent of the Senate, shall appoint Ambassadors, other public Ministers and Consuls, Judges of the supreme Court, and all other Offi cers of the United States").
power(president, "to fi ll up all Vacancies that may happen during the Recess of the Senate, by granting Commissions which shall expire at the End of their next Session").

%Section-3
/*Functions to check the responsibilities of president*/
responsibility(president, "give to the Congress Information of the State of the Union, and recommend to their consideration such measures as he shall judge necessary and expedient").
responsibility(president, "on extraordinary Occasions, convene both Houses, or either of them, and in Case of Disagreement between them, with Respect to the Time of Adjournment, he may adjourn them to such Time as he shall think proper").
responsibility(president, "shall receive Ambassadors and other public Ministers").
responsibility(president, "shall take Care that the Laws be faithfully executed, and shall Commission all the Officers of the United States.").

%Section-4
/*Functions to check if president, vice president and all civil officers can be removed from office*/
/*The first argument of the remove takes in the post and the second, the charge levied*/
remove(X, Y):- (X==president; X==vicePresident; X==civilOfficer),
		(Y = "impeachment for Treason"; Y = "impeachment for Bribery";
		Y = "conviction for Treason"; Y = "conviction for Bribery";
		Y = "misdemeanors").

%Article III

%Section-1
judicialPower("supreme court").
compensation("supreme court").
comppensation("inferior court").

%Section-2
/*Functions to check the judicial powers*/
power(judicial, "all Cases affecting Ambassadors, other public Ministers and Consuls").
power(judicial, "all Cases of admiralty and maritime Jurisdiction").
power(judicial, "controversies to which the United States shall be a Party").
power(judicial, "controversies between two or more States, between Citizens of different States, between Citizens of the same State claiming Lands under Grants of different States").

%Article IV

%Section-1
faithAndCredit("public Act").
faithAndCredit("records").
faithAndCredit("judicial Proceedings").

%Section-3
/*functions to check the power of congress*/
power(congress, "to dispose of and make all needful Rules and Regulations respecting the Territory or other Property belonging to the United States").
power(congress, "nothing in this Constitution shall be so construed as to Prejudice any Claims of the United States, or of any particular State").

%Section-4
protectionAgainstInvasion(X) :- stateOfUS(X).

%Article V

/**/