/*
NAME: Sudhanshu Mishra
ID: 2019B1A70750P
*/
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
%cases

% ARTICLE 1
% Section 1
congressOfUS(senate,houseOfRepresentatives).

% Section 2
houseOfRepresentatives(X):- age(X,Y), Y>=20, citizen(X,Z), Z>=7.
qualified(X):- houseOfRepresentatives(X).
representative(X, InhabitantState, ElectoralState):- qualified(X), InhabitantState=\=ElectoralState.
representativeInState(X,State):- stateOfUS(State),X>=1.
powerOfImpeachment(X):- houseOfRepresentative(X).

%Section 3
voteOfSenate(X):- X=1.
timeOfSenate(X):- X=6.
expirationOfFirstClassSenator(X):- X=2.
expirationOfSecondClassSenator(X):- X=4.
expirationOfThirdClassSenator(X):- X=6.
senator(X,InhabitantState,ElectoralState):- age(X,Y), Y>=30, citizen(X,Z),Z>=9,InhabitantState=\=ElectoralState.
presidentOfSenate(X, "vicePresidentOfUS but shall not vote unless they be equally divided").
powerOfSenate(Senate,"choose their other Officers and also a President pro tempore, in the Absence of the Vice President, or when he shall exercise the Office of President of the United States").
powerOfSenate(Senate, "try all Impeachments").
convicted(X, MembersPresent, TotalMembers):- MembersPresent>= *(/(2,3),TotalMembers).

judgementInCasesOfImpeachment(X,"not extend further than to removal from Office of honor,Trust,Profit under the United States:but the party convicted shall nevertheless be liable and subject to Indictment,Trial,Judgement and Punishment,according to Law").
%Section 4
meetingOfCongress(NoOfMeeting,Date,Month,Year):- NoOfMeeting>=1,month(Date,Month,Year).
meetingOfCongress(D,M,2019):- month(D,M,2019).

%Section 5
powerOfHouse(X, "Judge of the Elections").
powerOfHouse(X, "determine the Rules of its proceedings").
powerOfHouse(X, "punish its Members for disorderly Behaviourand with the Concurrence of two thirds, expel a Member").
powerOfHouse(X,"shall keep a Journal of its proceedings, and from time to time publish the same, excerpting such Parts as may in their Judgement require Secrecy; and the Yeas and Nays of the Members of either House on any question shll, at the Desire of one fifth of those Present, be enetered on the Journal").
powerOfHouse(X,"Without the consent of the other, CAN NOT adjourn for more than three days, nor to any other Place than in which the two Houses shall be sitting").

% Section 6
senator(X):- not(civilOffice(X)).
civilOffice(x).
% Section 7
powerOfSenate(X,"may propose or concur with Amendments as on other Bills").
billToLaw("must have passed House of Representatives and the Senate, be signed by the President").

% Section 8
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

% Section 9

% Section 10
powerOfState("shall not enter into any Treaty,Alliance, or Confederation").
powerOfState("shall not grant Letters of Marque and Reprisal").
powerOfState("shall not coin Money").
powerOfState("shall not emit bills of Credit").
powerOfState("make any Thing but gold and silver Coin a Tender in Payment of Debts").
powerOfState("shall not pass any Bill of Attainder, ex post facto La , or Law impairing the Obligation  of Contracts, or grant any Title of Nobility").
powerOfState("shall not without the Consent of the Congress, lay any Imposts or Duties on Imports or Exports, except what may be absolutely necessary for executing it’s inspection Laws: and the net Produce of all Duties and Imposts, laid by any State on Imports or Exports, shall be for the Use of the Treasury of the United States; and all such Laws shll be subject to the Revision and Controul of the Congress").
powerOfState("shall not, without the Consent of Congress, lay any  Duty of Tonnage, keep Troops, or Ships of War in time of Peace, enter into any Agreement or Compact with another State, or with a foreign Power, or engage in War, unless  actually invaded, or in such imminent Danger as will not  admit of delay").

/*
----------- Statements for Amendment
27----------------------------------*/
% END
