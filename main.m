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
include ./topics/env-bot-chat.m
include ./topics/bot.m


idk: Not too sure 'bout that, try again? :)


: test 
  \ NOTE: Add your questions to test here.
  "practices" answer . cr
  "quiz" answer . cr
  "eating" answer . cr
;


: publish 
  \ What your bot says at first. 
  \ Maybe it could be good to write buttons to enter rooms. Else can keep it as it is now.
  init: Hi there! I am EnviroBot, here to share some ideas on sustainable living! Type START to begin!

  \ The background image. Should be tileable/repeatable.
  background: https://cdn.pixabay.com/photo/2015/03/16/00/22/street-675224_960_720.jpg

  \ Image of the avatar to use. 

  avatar: https://i.ibb.co/j9KCwt2/envirobot-icon-only.png

  \ These will be visible when you share the link to your bot. 

  title: EnviroBot is here 4 u!

  \ IMPORTANT!! Remember to insert your username.

  url: https://app.smojo.org/txinz97/EnviroBot
  description: Bot on a mission!
  thumbnail: https://i.ibb.co/j9KCwt2/envirobot-icon-only.png
  
  \ name of your bot.
  \ The URL depends on this.
  publish: EnviroBot  

;
