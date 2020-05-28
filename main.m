\
\ @template by: Arnold Doray
\ @date: 13 May 2020
\
\ Session 1 
\

terra/chat
terra/chat/app

\ ###### Uncomment following lines when ready ##############
include ./topics/start.m
include ./topics/bad-language.m
include ./topics/env-bot-practices.m
include ./topics/env-bot-quiz.m
include ./topics/env-bot-websites.m
include ./topics/bot.m

\ idk: I'm sorry, what?

: test 
  \ NOTE: Add your questions to test here.
  "practice" answer . cr
  "quiz" answer . cr
  "quiz" answer . cr
  
;

: publish 
  \ What your bot says at first. 
  \ Maybe it could be good to write buttons to enter rooms. Else can keep it as it is now.
  init: Hi there! I am EnviroBot, here to share some ideas on sustainable living! Type START to begin!
  
  \ The background image. Should be tileable/repeatable.
  background: https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Great_Wave_off_Kanagawa2.jpg/1280px-Great_Wave_off_Kanagawa2.jpg
  
  \ Image of the avatar to use. 
  avatar: https://upload.wikimedia.org/wikipedia/commons/2/21/Sadhguru-Jaggi-Vasudev.jpg

  \ These will be visible when you share the link to your bot. 
  title: EnviroBot
  \ IMPORTANT!! Remember to insert your username.
  url: https://app.smojo.org/USERNAME/bot
  description: Man on a mission.
  thumbnail: https://upload.wikimedia.org/wikipedia/commons/2/21/Sadhguru-Jaggi-Vasudev.jpg
  \ name of your bot.
  \ The URL depends on this.
  publish: EnviroBot  
;
