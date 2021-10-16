\
\ @author: c6z3h001
\ @date: 27 May 2020
\
\ A brief description of this program.
\

\
\ @author: c6z3h001
\ @date: 27 May 2020
\
\ A brief description of this program:
\ This code will show some good environmental practices.

\ 1. Formatting
@: blog scientific_data climate_conspiracy

blog: blog another
scientific_data: scientific_data next
climate_conspiracy: climate_conspiracy
\ eat: food eat meal 
\ drink: drinks

\ search: random_list
\ eat_list drink_list
assoc: site_a site_b title_a title_b
\ ids author
mem: count_a count_b
\ id

{{
    1 "http://www.bbc.com/earth/columns/earth-blog"
    2 "https://wwf.panda.org/"
    3 "http://www.zerowastesg.com/"
}} +site_a

{{
    1 "https://drawdown.org/solutions/table-of-solutions"
    2 "https://www.ipcc.ch/reports/"
    3 "https://www.towardszerowaste.sg/"
}} +site_b

{{
    1 "BBC Earth!"
    2 "World Wildlife Fund!"
    3 "ZeroWaste Singapore?"
}} +title_a

{{
    1 "Project Drawndown?"
    2 "International Governmental Panel for Climate Change?"
    3 "ZeroWaste Singapore!"
}} +title_b

\ 2. Q&A list, Rooms

room: resources

Q: Gogo
A: What website would interest you? ${ "Blog" button } ${ "Scientific Data" button } ${ "Climate Conspiracy" button }
--
Q: $x.@blog
A: count_a 4 < % ${ count_a title_a } ${ count_a site_a } ... ${ "Another" button }?
A: count_a 4 >= % ${ 3 title_a } ${ 4 site_a } <br> Or.. ${ "Scientific Data" button } ${ "Climate Conspiracy" button } <br><br> Now let's try something else! <br> ${ "Environmental Practices" button }  ${ "Environmental Quiz" button }
K: +count_a %
--

Q: $scientific_data
A: count_b 3 < % ${ count_b title_b } ${ count_b site_b } ... ${ "Next" button }?
A: count_b 3 >= % ${ 3 title_b } ${ 3 site_b } <br> Or.. ${ "Blog" button } ${ "Climate Conspiracy" button } <br><br> Now let's try something else! <br> ${ "Environmental Practices" button }  ${ "Environmental Quiz" button }
K: +count_b %
--

Q: $climate_conspiracy
A: Unfortunately I cannot find any websites for this! Still, it's always great to have a questioning mind - as it stands, we currently do not know a lot of things for certain! Indeed, there is a video called "The Great Global Warming Swindle"! Check it out here: https://www.youtube.com/watch?v=oYhCQv5tNsQ <br> Next, maybe <br> ${ "Blog" button } ${ "Scientific Data" button } <br><br> Now let's try something else! <br> ${ "Environmental Practices" button }  ${ "Environmental Quiz" button }
--

end-room
