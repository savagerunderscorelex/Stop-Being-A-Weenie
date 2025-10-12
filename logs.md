# Logs + Todo

## To Do

- [ ] Design Starting menu with player instructions/keys (wasd, arrows), start button, and options (turning off music or maybe changing music)
- [ ] Figure out how many levels to do
- [ ] Figure out how to update the level ui when finding the collectibles in each level
- [ ] Design each level
- [ ] Figure out hotdog counter thingie (updating the ui when player finds each hot dog)
- [ ] Explain the goal of the game at the cutscene
- [ ] Figure out how to even do cutscenes
- [ ] Figure out how to do the script to change the ui based on current objectives (objectives are probably going to be: find x number of hotdogs, listen to rules, etc )
- [ ] maybe add sound effects on jumping and landing and collecting hot dogs
- [ ] specify game goals a little better

## Logs

### 10/11

7:33 AM I'm doing logs for this project because I keep forgetting what I did whenever I commit, plus I feel like this project is gonna take me a while.

Scope of the game:

You play as a weiner dog, trying to get little hot dogs throughout multiple levels. Yeah that's it

9:19 AM Added the tileset for the game

5:31 PM Got distracted while writing log: I adjusted the background, added a hotdog coin thingie and had to create the spritesheet (why is it so hard finding assets????? i'm not looking for things that are super specific), added the animation for the coin, coded it to disappear on when the player runs into it, also added the basic basic ui (commit)

10:41 PM Added Autoload, added fraction to level 1 ui node

## 10/12

9:34 AM Changed the objective ui to stay in its own scene and added it separately in the main/level 1 scene, updated autoload variables, added code to make the hotdogs_found label update when collecting hotdogs

9:46 AM Created level 2 scene (not started), created code to change the scene when finding all the hotdogs in level 1 (commit)

9:59 AM added background to level 2, working on the tileset map

12:09 PM I'm thinking of have 5-10 levels and maybe implementing some more advanced stuff like puzzles

1:20 PM Adjusted the labels for the number of hotdogs required and the number obtained, added timer to make the changing of the scenes less sudden,

1:39 PM Added code for level 2, readjusted the placement for the ui words

1:49 PM Added a folder for levels within the scenes folder

2:51 PM Added levels 3-5 Scenes, worked further on the level 2 script

2:57 PM Finished most of code for level 2 (just need to finish the level map to figure out where to place the area 2d node)

Also I just understood why the scene would forever restart before, it was because the code would make the scene reset when ANY body entered it, included the platforms. I'm going to try to adjust the code to do something when the player body enters it specifically

3:11 PM A forum post I found helped me with the above problem!! If I was a lil smarter I could've figured it out, but it was a simple solution: using an if statement to reset the scene based on the body that enters it.

Actions: changed the collision body for the boundary to be a world boundary instead of a collision rectangle. This makes it way easier to make the whole edge "deathly". I should've done this with my flappy game project, but this is the whole point of learning tho!!

I basically finished all of the level 2 code! (3:16 PM)

3:27 PM I changed the name of the boundaries and added some comments to my code so I can understand it a bit better (I remember looking at my flappy game code and couldn't understand a lot of it lol)

3:50 PM Continued working on the level 2 map

4:19 PM Finished Level 2 Map!!