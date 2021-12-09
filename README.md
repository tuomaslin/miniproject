# Miniproject for Palvelinten hallinta course
Project was final task for [Tero Karvinen](https://terokarvinen.com) palvelinten hallinta course.
Project is designed to be used without possibility to release it to production, but for learning.
For example student in school, who haven't used flask or apache before.

By using this top.sls file user is able to call two different SaltStates. Both can also be used independently.
- One (saltflask) installs apache2, configurates it and sets up a Flask enviroment (__NOT FOR PRODUCTION__)
- Second (gamer) installs Steam and few other programs that I think are must have.
- Further instructions on how to use States on their own are in their folders

![Image](/screenshots/top.png)
