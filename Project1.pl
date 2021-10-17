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
elections(houseOfRepresentatives,"composed of Members chosen every second year by the People of the several States meeting the qualification requirement").

houseOfRepresentatives(X):- age(X,Y), Y>=20, citizen(X,Z), Z>=7.
qualified(X,houseOfRepresentatives):- houseOfRepresentatives(X).
representative(X, InhabitantState, ElectoralState):- qualified(X,houseOfRepresentatives), not(InhabitantState==ElectoralState).
representativeInState(X,State):- stateOfUS(State),X>=1.
powerOfImpeachment(X):- houseOfRepresentative(X).
noOfRepresentatives("shall not exceed one for every thirty Thousand, but each State shall have at Least one Representative.").
power(houseOfRepresentatives,"shall choose their Speaker and other Officers.").
power(houseOfRepresentatives,"shall have sole Power of Impeachment").
%Section 3
senate(us, "shall be composed of Two senators from each State").
voteOfSenate(X):- X=1.
timeOfSenate(X):- X=6.
expiration(senator,Class,X):-(Class=:=1,X=2);(Class=:=2,X=4);(Class=:=3,X=6).
isSenator(X,InhabitantState,ElectoralState):- age(X,Y), Y>=30, citizen(X,Z),Z>=9,not(InhabitantState==ElectoralState).
president(senate,"The vicePresidentOfUS but shall not vote unless they be equally divided").
power(senate,"To choose their other Officers and also a President pro tempore, in the Absence of the Vice President, or when he shall exercise the Office of President of the United States").
power(senate, "To try all Impeachments").
convicted(X, MembersPresent, TotalMembers):- MembersPresent>= *(/(2,3),TotalMembers).

judgement(impeachment,"not extend further than to removal from Office of honor,Trust,Profit under the United States:but the party convicted shall nevertheless be liable and subject to Indictment,Trial,Judgement and Punishment,according to Law").

%Section 4
elections("The Times, PLaces and Manner of holding elections for Senators and Representatives, shall be prescribed in each State by the Legislature thereof; but the Congress may at any time by Law make or alter such regulations, except as to the Places of chusing Senators.").
meetingOfCongress("Congress shall assemble at least once every Year").
meetingOfCongress(D,M,2019):- monday(D,M,2019).

%Section 5
power(house, "Judge of the Elections").
power(house, "determine the Rules of its proceedings").
power(house, "punish its Members for disorderly Behaviourand with the Concurrence of two thirds, expel a Member").
power(house,"shall keep a Journal of its proceedings, and from time to time publish the same, excerpting such Parts as may in their Judgement require Secrecy; and the Yeas and Nays of the Members of either House on any question shll, at the Desire of one fifth of those Present, be enetered on the Journal").
power(house,"Without the consent of the other, CAN NOT adjourn for more than three days, nor to any other Place than in which the two Houses shall be sitting").

% Section 6
senator("Can not be appointed to any civil office during the Time for which he was elected.").
representative("Can not be appointed to any civil office during the Time for which he was elected.").


% Section 7
bill(revenue,"shall originate in the House of Representatives").
power(senate,"may propose or concur with Amendments as on other Bills").
bill("must have passed House of Representatives and the Senate, be signed by the President of United States").
bill("If the President approve he shall sign it, but if not he shall return it, with his  Objections to that House in which it shall have o iginated, who shall enter the Objections at large on their Journal,  and proceed to reconsider it. If after such Reconsideration two thirds of that House shall agree to pass the Bill, it s ll  be sent, together with the Objections, to the other House, by which it shall likewise be reconsidered, and if approved by two thirds of that House, it shall become a Law.").
bill("In all such Cases the Votes of both Houses shall be determined by Yeas and Nays, and the Names of the Persons voting for and against the Bill shall be entered on the Journal of each House respectively, If any Bill shall not be returned by the President within ten Days (Sundays excepted) after it shall have been presented to him, the Same shall be a La , in like Manner as if he had signed it, unless the Congres  by their Adjournament prevent its Return, in which Case it shall not be a Law.").


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
power(congress, "To make all Laws which shall be necessary and proper for carrying into Execution the foregoing Powers, and all other Powers vested by this Constitution in the Government of the United States, or in any Department or Office thereof.").


% Section 9
writOfHabeasCorpus("Shall not be suspended,unless when in Cases of Rebellion or Invasion the public safety may require it.").
bill("No bill of Attainder or ex post fecto Law shall be passed").
taxes("No taxes or Duty shall be laid on Articles exported from any State").
title("No Title of Nobility shall be granted by the United States: And no Person holding any Offi ce of Profi t or Trust under them, shall, without the Consent of the Congress, ac ept  of any present, Emolument, Offi ce, or Title, of any kind whatever, from any King, Prince, or foreign State.").

% Section 10
power(state,"shall not enter into any Treaty,Alliance, or Confederation").
power(state,"shall not grant Letters of Marque and Reprisal").
power(state,"shall not coin Money").
power(state,"shall not emit bills of Credit").
power(state,"make any Thing but gold and silver Coin a Tender in Payment of Debts").
power(state,"shall not pass any Bill of Attainder, ex post facto La , or Law impairing the Obligation  of Contracts, or grant any Title of Nobility").
power(state,"shall not without the Consent of the Congress, lay any Imposts or Duties on Imports or Exports, except what may be absolutely necessary for executing it’s inspection Laws: and the net Produce of all Duties and Imposts, laid by any State on Imports or Exports, shall be for the Use of the Treasury of the United States; and all such Laws shll be subject to the Revision and Controul of the Congress").
power(state,"shall not, without the Consent of Congress, lay any  Duty of Tonnage, keep Troops, or Ships of War in time of Peace, enter into any Agreement or Compact with another State, or with a foreign Power, or engage in War, unless  actually invaded, or in such imminent Danger as will not  admit of delay").

/*
----------- Statements for Amendment
27----------------------------------*/
% END
