\
\ @author: c6z3h001
\ @date: 27 May 2020
\
\ A brief description of this program:
\ This code will show some good environmental practices.


\ 1. Formatting
@: random specific consumption habit bigger_thing
\ eat drink
random: anything random any another
specific: specific
consumption: personal_consumption consumption personal
habit: little habit little_habit
bigger_thing: bigger thing bigger_thing
assoc: random_list image
mem: count



{{

    1 "Monitor and manage your consumption (clothes, food)!"
    2 "Watch your electricity and water use!"
    3 "Support local products! Having to ship goods over shorter distances reduce the carbon emissions from transport."
    4 "Try composting kitchen remains that you'd otherwise throw away!"
    5 "Reuse shopping bags, reduce plastic bags use, recycle!"
    6 "Try shopping at zero-waste stores!"
    7 "Join environment groups!"
    8 "Educate people around you!"

}} +random_list


{{

    1 "https://upload.wikimedia.org/wikipedia/commons/3/37/Consumption_%28sign%29.jpg"
    2 "https://upload.wikimedia.org/wikipedia/commons/8/84/Los_Olivitos_-_estado_Zulia.jpg"
    3 "https://live.staticflickr.com/4378/36338134252_5ecf19415b_b.jpg"
    4 "https://live.staticflickr.com/7403/9087989902_a370b851e7_b.jpg"
    5 "https://www.onekind.scot/wp-content/uploads/plasticwaste-seal-edit.jpg"
    6 "https://thesmartlocal.com/wp-content/uploads/2019/06/images_easyblog_articles_7921_Zero-Waste-stores-in-Singapore-23-1.jpg"
    7 "https://www.todayonline.com/sites/default/files/styles/new_app_article_detail/public/photos/43_images/yjrally07.jpg"
    8 "https://outdooreducationaustralia.org.au/wp-content/uploads/Outdoor-Ed-Teenagers-in-circle.jpg"

}} +image


\ 2. Q&A list, Rooms


room: practices

Q: Gogo|Restart
A: Do you want to see a specific practice? Or just a random one? ${ "Random" button } ${ "Specific" button } <br> Or might other options interest you? ${ "Environmental Quiz" button } ${ "Environmental Resources" button }

--
Q: $x.@random
A: count 8 < % ${ count random_list } ${ count image } ${ "Another" button }
A: count 8 >= % ${ 8 random_list } ${ 8 image } ${ "Restart" button }
K: count 8 >= % $back practices
K: count+ %
--
Q: $x.@specific
A: What kind of $x ? ${ "Consumption" button } ${ "Habits" button } ${ "Bigger things" button }

--
Q: $x.@consumption
A: ${ 1 random_list } ${ 1 image } ${ "Another" button }; ${ 2 random_list } ${ 2 image } <br> ${ "Another" button }

--
Q: $habit|$habit+s|$random
A: ${ 3 random_list } ${ 3 image } ${ "Another" button }; ${ 4 random_list } ${ 4 image } ${ "Another" button }; ${ 5 random_list } ${ 5 image } ${ "Another" button }; ${ 6 random_list } ${ 6 image } ${ "Another" button }
--
Q: $bigger_thing|$bigger_thing+s
A: ${ 7 random_list } ${ 7 image } ${ "Another" button } 
--

\ ### TO PUT IN THE bot.m file after all micro-topics are done!

\ Q: $x.@eat

\ $x eat_list ids id! % ${ id title } by ${ id author } ${ id image }

\ --
end-room
