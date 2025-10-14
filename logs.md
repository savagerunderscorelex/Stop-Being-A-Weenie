# Logs + Todo

## To Do

- [ ] Design Starting menu with player instructions/keys (wasd, arrows), start button, and options (turning off music or maybe changing music)
- [ ] Figure out how many levels to do
- [x] ~~Figure out how to update the level ui when finding the collectibles in each level~~
- [ ] Design each level
- [x] ~~Figure out hotdog counter thingie (updating the ui when player finds each hot dog)~~
- [ ] Explain the goal of the game at the cutscene
- [ ] Figure out how to even do cutscenes
- [x] ~~Figure out how to do the script to change the ui based on current objectives (objectives are probably going to be: find x number of hotdogs, listen to rules, etc )~~
- [x] ~~maybe add sound effects on jumping and landing and collecting hot dogs~~
- [ ] specify game goals a little better
- [x] ~~finish level 3~~
- [ ] finish level 4
- [ ] finish level 5
- [ ] do a stats thing when the player finishes the game like how I did for the flappy game: deaths, total hotdogs eaten, maybe time (as if ppl are gonna speedrun this game) 

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

7:30 PM Added an eating sound effect, had to adjust the background music, since the tutorial I used before was not helping me do what I wanted to do

7:42 PM Added the jump sound effect!! This took me a bit because it wouldn't work for some reason???? (it returned null when I tried to use the sound node in the dog character)

## 10/13

5:38 AM Added hackatime banner thingie

5:44 AM Added level completed sound effect (commit)

4:04 PM Tried to fix the issue with the level complete sfx glitching and instead playing when entering the next level, still doesn't work

What I'm going to do is create 2 scenes with global variables (one for sound and one for general variables). I'm also going to try to solve this problem by making the sound play when the is_level_completed variable is true instead of putting it with the code to change the scene to the next level. 

4:35 PM Added soundboard global scene since the answer to a forum i found also did that, adjusted the code to be update to the new scene since I moved the sound effects there

4:48 PM Adjusted errors, removed the variables for hotdogs need and hotdogs required in the level 1 script because it felt unnecessary and was also causing some issues

I'm working on trying to fix the sound issue with completing a level

5PM I'm lowkey tired of this thing glitching. No matter what I do, the level complete sound doesn't play correctly and when I want it to and instead plays this creepy glitching sound. I'm just going to make it the level loading sound (im tireeeeeeeeeeeeeeeeeeed)

5:32 PM Removed a random file that was in the folder

5:45 PM Finished level 2, standardized code between level 1 and level 2, deleted platform scene (since I'm not doing that anymore)

5:46 Decided not to delete it anymore

7:30 PM Started on the map for level 3, added the hotdogs and all of the tiles for the map

7:57 Wrote most of the level 2 code, somehow the SoundBoard scene got removed from globals so I had to read it again

8:25 PM Finished level 3 code!! :3
I'm tired so I'm gonna go to sleep

8:29 PM Forgot to put the boundary death thingie, I'm foreal going to sleep (after I put a lil idea thing down)

8:58 PM I lied, but I updated the readme file with more links. I'm ACTUALLY going to sleep this time

## 10/14

4:14 PM Created and deleted up_down_node

I'm trying to make moving platforms for levels 4 and 5. I finished designing them already

4:49 PM Actually created platform node

5:19 PM I'm starting to work on the level 4 map and stuff. I don't know why it took me so long to set it up lol

5:56 PM I removed the old platform scene so that I can rename the platform scene that I'm actually going to use. 

6:47 PM Ok so! I figured out how to fix the platform thing, so the platform works now and I created a way to implement platforms!!

I followed a tutorial to create moving platforms. The animation part went well (I just didn't realize the platforms were supposed to be a staticbody2d instead of an area body, the icons look similar), buuuut the dog wouldn't stay on the platform when it moved. I tried a couple solutions (changing move_and_slide() to move_and_slide_with_snap although I rushed this solution so maybe it did work, rearranging the path2d node and the other nodes, and changing the static body to an animatable body). What worked for me was nesting the sprite node and the collision body node into a character body node, which was nested in the static body node, which was nested within the pathfollownode which was nested within the path2dnode. So yeah. (I found this solution in the comments of the tutorial I found :3)

I tested the platforms in the level 3 map, and they work well. I just need to also find a way to make them go up and down (in fact I will test the platform movement now.)

7:07 PM Ok, turns out I can't make it go up and down from its current position. what I'll do is that I'll create a second platform scene where the platform is horizontal, and see from there

7:13 PM I FEEL SOOOOOOOOO SMART!!!! My hypothesis was correct!!

So changing the orientation of the platform makes it so that it will actually go up. I'm really happy that I figured this out!!.

Although I put on my task list that I will finish level 4 today, I'll put it off until tomorrow. It's pretty late already, so I think it'll be best to wake up early tomorrow and try to finish it. 