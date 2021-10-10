/*
NAME: Satyam Srivastava
ID: 2019B1A70188P
NAME: Sudhanshu Mishra
ID: 2019B1A70750P
NAME: Uday Mittal
ID: 2019B4A70662P
*/

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

% ARTICLE 1
% Section 1
congressOfUS(senate, houseOfRepresentatives).

%Section 2
houseOfRepresentatives(X) :- age(X,Y), Y>=20,
				citizen(X,Z), Z>=7.
qualified(X, houseOfRepresentatives) :- houseOfRepresentatives(X).

%Section 8
power(congress, "To borrow Money on the credit of the United States").
power(congress, "To regulate Commerce with foreign Nations, and among the several States, and with the Indian Tribes").
power(congress, "To establish an uniform Rule of Naturalization, and uniform Laws on the subject of Bankruptcies throughout the United States").
power(congress, "To coin Money, regulate the Value thereof, and of foreign Coin, and fix the Standard of Weights and Measures").
power(congress, "To provide for the Punishment of counterfeiting the Securities and current Coin of the United States").
power(congress, "To establish Post Offi ces and post Roads").
power(congress, "To promote the Progress of Science and useful Arts, by securing for limited Times to Authors and Inventors the exclusive Right to their respective Writings and Discoveries").
power(congress, "To constitute Tribunals inferior to the supreme Court").
power(congress, "To define and punish Piracies and Felonies committed on the high Seas, and Offenses against the Law of Nations").
power(congress, "To declare War, grant Letters of Marque and Reprisal, and make Rules concerning Captures on Land and Water").
power(congress, "To raise and support Armies, but no Appropriation of Money to that Use shall be for a longer Term than two Years").
power(congress, "To provide and maintain a Navy").
power(congress, "To make Rules for the Government and Regulation of the land and naval Forces").
power(congress, "To provide for calling forth the Militia to execute the Laws of the Union, suppress Insurrections and repel Invasions").
power(congress, "To provide for organizing, arming, and disciplining, the Militia, and for governing such Part of them as may be employed in the Service of the United States, reserving to the States respectively, the Appointment of the Offi cers, and the Authority of training the Militia according to the discipline prescribed by Congress").
power(congress, "To exercise exclusive Legislation in all Cases whatsoever, over such District (not exceeding ten Miles square) as may, by Cession of particular States, and the Acceptance of Congress, become the Seat of the Government of the United States, and to exercise like Authority over all Places purchased by the Consent of the Legislature of the State in which the Same shall be, for the Erection of Forts, Magazines, Arsenals, dock-Yards and other needful Building").
power(congress, "To make all Laws which shall be necessary and proper for carrying into Execution the foregoing Powers, and all other Powers vested by this Constitution in the Government of the United States, or in any Department or Officer thereof.").	

% Section 2
----------- Statements for Section 2------------------------------------------
…
…
...
----------- Statements for Amendment 27----------------------------------
% END
