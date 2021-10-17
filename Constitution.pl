citizen(_, _).
%Amendment XV.
amendmentXV("Passed on February 26, 1869").
amendmentXV("Ratified on Februry 3, 1870").

%Section 1.
rightToVote(citizen(X, Z), "Cannot Be Denied or abriged by the United States or by any State on account of race, color, or previous condition of servitude") :- Z >= 18.

%Section 2.
power(congress, "To Enforce this article by appropriate legislation").

%Amendment XVI.
amendmentXVI("Passed on July 2, 1909").
amendmentXVI("Ratified on February 3, 1913").
modified("Amendment XVI", "Article 1, Section 9").

%Not available in Knowledge Base.
%Has to be added first.

%Amendment XVII.
amendmentXVII("Passed on May 13, 1912").
amendmentXVII("Ratified on April 8, 1913").
modified("Amendment XVII", "Article 1, Section 3").

senatorsFromState(X) :- X = 2.
qualificationsOfElectors("Decided by State Legislature").
vacancies(senator, "Issue Writs and a temporary allocation is done by the executive and the elections are conducted").
amendmentXVII("Does not affect elections or term of senate").

%Amendment XVIII.
amendmentXVIII("Passed on December 18, 1917").
amendmentXVIII("Ratified on January 16, 1919").
repealed("Amendment XXI", "Amendment XVIII").

%Section 1.
implementationAmendmentXVIII("After One Year").
affect("Sale, Manufature, Import and Export of Intoxicating Liquors").
newLaw("All Jurisdictions Prohibited").

%Section 2.
newLaw("State and Centre enjoy concurrent powers").

%Section 3.
operative("State should ratify the amendment within seven years from the ratified date of Congress").

%Amendment XIX.
amendmentXIX("Passed on June 4, 1919").
amendmentXIX("Ratified on August 18, 1920").
rightToVote(citizen(X, Z), "Cannot be denied or abriged by the United States or by any State on account of sex") :- Z >= 18.
power(congress, "Enforce Amendment XIX by appropriate legislation").

%Amendment XX.
amendmentXX("Passed on March 2, 1932").
amendmentXX("Ratified on January 23, 1933").
modified("Amendment XX", "Article 1, Section 4 by Section 2").
modified("Amendment XX", "Amendment XII suspended by Section 3").

%Section 1.
termSuspensionPresident("Noon on 20th day of January").
termSuspensionVicePresident("Noon on 20th day of January").
termSuspensionSenator("Noon on 3rd day of January").
termSuspensionRepresentatives("Noon on 3rd day of January").

%Section 2.
meetingOfCongress(NoOfMeeting, Date, Month, Year) :- NoOfMeeting >= 1, month(3, 1, Year).

%Section 3
emergency(dies(20, 1, Year), "Vice President becomes the President").
emergency(dies(date, month, Year), "Vice President becomes President until new President is elected") :- date < 20, month >= 1.
power(congress, "If Vice President and President are not qualified then Congress shall appoint someone to act as the President and other to act as the Vice President").

%Section 4.
power(congress, "House of Representatives can be given the power to choose the President").
power(congress, "House of Senate can be given the power to choose the Vice President").

%Section 5.
implementation("Section 1 and 2 shall take effect on the 15th day of October").

%Section 6.
implementation("Amendment XX can be implemented only when three fourth majority of the state ratifies it within seven years of date of submission").

%Amendment XXI.
amendmentXXI("Passed on February 20, 1933").
amendmentXXI("Ratified on December 5, 1933").

%Section 1.
repeal("Amendment XXI", "Amendment XVIII").

%Section 2.
affect("Transportation or importation of intoxicating liquor into any state, Territory or possession of United States").
newLaw("All such acts, violating law, are prohibited").

%Section 3.
operative("States of United States ratify the laws within seven years from the date of ratification by the US Congress").

%Amendment XXII.
amendmentXXII("Passed on March 21, 1947").
amendmentXXII("Ratified on February 27, 1951").

%Section 1.
maxTermPresident(X) :- X = 2.
minTermCountedPresident(X) :- X = 2.

%Section 2.
operative("Until ratified by the states with a three-fourth majority within seven years of date of submission of congress.").

%Amendment XXIII.
amendmentXXIII("Passed on June 16, 1960").
amendmentXXIII("Ratified on March 29, 1961").

%Section 1.
power(congress, "Direct the District related to the elections of President, Vice President and the House of Senate and Representatives.").
equal(electors(president), electors(vice_president), add(representative, senate)).

%Section 2.
power(congress, "Enforce this article by appropriate legislation").

%Amendment XXIV.
amendmentXXIV("Passed on August 27, 1962").
amendmentXXIV("Ratified on January 13, 1964").

%Section 1.
rightToVote(citizen(X, Z), "Vote in Primary or other election for President or Vice President, for electors of President or Vice President, or for Senator or Representative in congress cannot be denied by any reason of failure to pay poll tax or other tax") :- Z >= 18.

%Section 2.
power(congress, "Enforce this article by appropriate legislation").

%Amendment XXV.
amendmentXXV("Passed on July 6, 1965").
amendmentXXV("Ratified on February 10, 1967").

%Section 1.
emergency("Removal or death or resignation of President makes Vice President President").

%Section 2.
vacancy(vicePresident, "President may appoint a Vice President by a majority vote in the Congress").

%Section 3.
power(vp, "Whenever President transfers his duties to an acting President from senate, and the Speaker of the House of Representatives writes a declaration mentioning immaturity of the President in exercising the duties, until the speaker gets a contrary, Vice President becomes the Acting President").

%Section 4.
power(vp, "Whenever the Vice President and a majority of either of the principal officers of the executive departments or any other body of Congress transmit to the Acting President and the Speaker of the House of Representatives writes a declaration mentioning immaturity of the President in exercising his duties, Vice President assumes the duties of the Acting President").
power(president, "If President denies the inability of the President pro tempore, he shall resume the office unless the Vice President and a majority of officers from executive and the speaker writes a declaration within four days").
power(congress, "In case of dissatisfaction Congress shall meet in forty eight hours and within twenty one days, passes a resolution against President pro tempore, either the Vice President acts as an Acting President or President assumes the office himself").

%Amendment XXVI.
amendmentXXVI("Passed on March 23, 1971").
amendmentXXVI("Ratified on July 1, 1971").
modified("Amendment XXVI, Section 1", "Amendment XIV, Section 2").

%Section 1.
rightToVote(citizen(X, Z), "Cannot be Prohibited under any account of age") :- Z >= 18.

%Section 2.
power(congress, "Enforce this article by appropriate legislation").

%Amendment XXVII.
amendmentXXVII("Proposed on September 25, 1789").
amendmentXXVII("Ratified on May 7, 1992").




