\
\ @author: c6z3h001
\ @date: 27 May 2020
\
\ A brief description of this program:
\ This code will show some good environmental practices.

\ 1. Formatting
@: practices random specific consumption habit bigger_thing
\ eat drink

practices: practices

random: anything random any

specific: specific
consumption: personal_consumption consumption personal
habit: little habit little_habit
bigger_thing: bigger thing bigger_thing
\ eat: food eat meal 
\ drink: drinks

\ search: random_list
\ eat_list drink_list
assoc: random_list image
\ ids title author
mem: count
\ id

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
    7 "https://www.todayonline.com/sites/default/files/styles/new_app_article_detail/public/photos/43_images/yjrally07.jpg?itok=IcA-By2i"
    8 "https://outdooreducationaustralia.org.au/wp-content/uploads/Outdoor-Ed-Teenagers-in-circle.jpg"
}} +image

\ 2. Q&A list, Rooms

\ room: practices

Q: $practices
A: Do you want to see a specific practice? Or just a random one? ${ "Random" button } ${ "Specific" button }
--

Q: $x.@random
A: ${ count random_list } ${ count image }
K: +count %
--

\ Currently, you can't add buttons with two words init (someone else on the group is having the same problem). still tryna figure it out.
\ in the meantime, i used the following buttons:
Q: $x.@specific
A: What kind of $x ? ${ "Consumption" button } ${ "Habits" button } ${ "Bigger_things" button }
--

Q: $consumption|$consumption+s
A: ${ 1 random_list } ${ 1 image }; ${ 2 random_list } ${ 2 image }
--

Q: $habit|$habit+s
A: ${ 3 random_list } ${ 3 image }; ${ 4 random_list } ${ 4 image }; ${ 5 random_list } ${ 5 image }; ${ 6 random_list } ${ 6 image }
--

Q: $bigger_thing|$bigger_thing+s
A: ${ 7 random_list } ${ 7 image }; ${ 8 random_list } ${ 8 image }
--
\ ### TO PUT IN THE bot.m file after all micro-topics are done!
Q: $_
A: Looks like you don't want to talk about Environmental Practices anymore! Shall we move to another topic?
L: ${ last-question }
--
\ Q: $x.@eat
\ $x eat_list ids id! % ${ id title } by ${ id author } ${ id image }
\ --

\ end-room
