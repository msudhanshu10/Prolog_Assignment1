boundByOath("The Senators and Representatives, and the Members of the several State Legislatures, and all executive and judicial Officers, both of the United States and of the several States").
establishmentOfConstitution("The Ratification of the Conventions of nine States").

% First President
president(go_washington).

% Deputies of Each State
deputy(new_hampshire, john_langdon, nicholas_gilman).
deputy(massachusetts, nathaniel_gorham, rufus_king).
deputy(connecticut, wm_saml_johnson).
deputy(new_york, alexander_hamilton).
deputy(new_jersey, wil_livingston, david_brearley, wm_paterson, jona_dayton ).
deputy(pennsylvania, b_franklin, thomas_mifflin, robt_morris, geo_clymer, thos_fitzSimons, jared_ingersoll, james_wilson, gouv_morris).
deputy(delaware, geo_read, gunning_bedford_jun, john_dickinson, richard_bassett, jaco_broom).
deputy(maryland, james_mc_henry, dan_of_st_thos_jenifer, danl_carroll).
deputy(virginia, john_blair, james_madison_jr).
deputy(north_carolina, wm_blount, richd_dobbs_spaight, hu_williamson).
deputy(south_carolina, j_rutledge, charles_cotesworth_pinckney, charles_pinckney, pierce_butler).
deputy(georgia, william_few, abr_baldwin).

% Amendment I
power(congress, "shall make no law respecting an establishment of
religion, or prohibiting the free exercise thereof; or abridging the freedom of speech, or of the press, or the right of the people peaceably to assemble, and to petition the Government for a redress of grievances.").

% Amendment II
amendmentII("A well regulated Militia, being necessary to the security of a free State").

% Amendment III
amendmentIII("No Soldier shall, in time of peace be quartered in any house, without the consent of the Owner, nor in time of war, but in a manner to be prescribed by law.").

% Right of citizens
right(Citizen, "shall not be infringed to keep and bear Arms").
right(Citizen, "The right to be secure in their persons, houses, papers, and effects, against unreasonable searches and seizures, shall not be violated, and no Warrants shall issue, but upon probable cause, supported by Oath or affirmation, and particularly describing the place to be searched, and the persons or things to be seized.").

% Amendment V
right(Citizen, "shall not be held to answer for a capital, or otherwise infamous crime, unless on a presentment or indictment of a Grand Jury, except in cases arising in the land or naval forces, or in the Militia, when in actual service in time of War or public danger").
right(Citizen, "shall not be subject for the same offence to be twice put in jeopardy of life or limb").
right(Citizen, "shall not be compelled in any criminal case to be a witness
against himself").
right(Citizen, "shall not be deprived of life, liberty, or property,
without due process of law", "private property shall not be taken for public use, without just compensation.").

% Amendment VI
amendmentVI("In all criminal prosecutions", accused, "shall enjoy the right to a speedy and public trial, by an impartial jury of the State and district wherein the crime shall have been committed, which district shall have been previously ascertained by law, and to be informed of the nature and cause of the accusation").
amendmentVI(accused, "to be confronted with the witnesses against him").
amendmentVI(accused, "to have compulsory process for obtaining witnesses in his favor, and to have the Assistance of Counsel for his defence.").

% Amendment VII
amendmentVII("In suits at common law, where the value in controversy
shall exceed twenty dollars, the right of trial by jury shall be preserved, and no fact tried by a jury shall be otherwise reexamined in any Court of the United States, than according to the rules of the common law.").

% Amendment VIII
amendmentVIII("Excessive bail shall not be required, nor excessive fines imposed, nor cruel and unusual punishments inflicted.").

% Amendment IX
amendmentIX("The enumeration in the Constitution, of certain rights, shall not be construed to deny or disparage others retained by the people.").

% Amendment X
amendmentX("The powers not delegated to the United States by the Constitution, nor prohibited by it to the States, are reserved to the States respectively, or to the people.").

% Amendment XI
amendmentXI("Passed on March 4, 1794").
amendmentXI("Ratified on Februry 7, 1795").
amendmentXI("The Judicial power of the United States shall not be construed to extend to any suit in law or equity, commenced or prosecuted against one of the United States by Citizens of another State, or by Citizens or Subjects of any Foreign State.").

% Amendment XII
amendmentXII("Passed on December 9, 1803").
amendmentXII("Ratified on June 15, 1804").
amendmentXII(electors, " shall meet in their respective states, and vote by ballot for President and Vice-President, one of whom, at least, shall not be an inhabitant of the same state with themselves").
amendmentXII(electors, "shall name in their ballots the person voted for as President, and in distinct ballots the person voted for as Vice-President, and they shall make distinct lists of all persons voted for as President, and of all persons voted for as Vice-President, and of the number of votes for each, which lists they shall sign and certify, and transmit sealed to the seat of the government of the United States, directed to the President of the Senate").
amendmentXII("the President of the Senate", "shall, in the presence of the Senate and House of Representatives, open all the certificates and the votes shall then be counted").

%Appointment of president and vice-president left.


% Amendment XIII
amendmentXIII("Passed on January 31, 1865").
amendmentXIII("Ratified on December 6, 1865").

% Amendment XIII Section 1
amendmentXIII_section1(slavery, involuntary_servitude, "shall not exist within the United States, or any place subject to their jurisdiction, except as a punishment for crime whereof the party shall have been duly convicted ").

% Amendment XIII Section 2
power(congress, "shall have power to enforce this article by
appropriate legislation.").

% Amendment XIV
amendmentXIV("Passed on June 13, 1866").
amendmentXIV("Ratified on July 9, 1868").

% Amendment XIV Section 1
right(Citizen, "born or naturalized in the United States and subject to the jurisdiction thereof, are citizens of the United States and of the State wherein they reside").
power(state, "shall not make or enforce any law which shall abridge the privileges or immunities of citizens of the United States", "nor shall any State deprive any person of life, liberty, or property, without due process of law", "nor deny to any person within its jurisdiction the equal protection of the laws.").

% Amendment XIV Section 2
amendmentXIV_section2(representatives, "shall be apportioned among the several States according to their respective numbers, counting the whole number of persons in each State, excluding Indians not taxed.").

deniedToVote(X, X +"is denied to any of the male inhabitants of such State, and citizens of the United States, or in any way abridged, except for participation in rebellion, or other crime, the basis of representation therein shall be reduced in the proportion which the number of such male citizens shall bear to the whole number of male citizens twenty-one years of age in such State.") :-  age(X, Y), Y>=21.

% Amendment XIV Section 3
amendmentXIV_section3(person, "shall not be a Senator or Representative in Congress, or elector of President and Vice President, or hold any office, civil or military, under the United States, or under any State, who, having previously taken an oath, as a member of Congress, or as an offi cer of the United States, or as a member of any State legislature, or as an executive or judicial offi cer of any State, to support the Constitution of the United States, shall have engaged in insurrection or rebellion against the same, or given aid or comfort to the enemies thereof.").

% Amendment XIV Section 4
amendmentXIV_section4("The validity of the public debt of the United States, authorized by law, including debts incurred for payment of pensions and bounties for services in suppressing insurrection or rebellion, shall not be questioned").
amendmentXIV_section4(united_states, state, "shall not assume or pay any debt
or obligation incurred in aid of insurrection or rebellion
against the United States, or any claim for the loss or emancipation of any slave ; but all such debts, obligations and claims shall be held illegal and void.").

% Amendment XIV Section 5
power(congress, "shall have the power to enforce, by appropriate legislation, the provisions of this article").


