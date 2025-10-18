# Logs + Todo

## To Do

- [x] Design Starting menu with player instructions/keys (wasd, arrows), start button, and options (turning off music or maybe changing music)
- [x] Figure out how many levels to do
- [x] ~~Figure out how to update the level ui when finding the collectibles in each level~~
- [x] Design each level
- [x] ~~Figure out hotdog counter thingie (updating the ui when player finds each hot dog)~~
- [x] ~~Figure out how to do the script to change the ui based on current objectives (objectives are probably going to be: find x number of hotdogs, listen to rules, etc )~~
- [x] ~~maybe add sound effects on jumping and landing and collecting hot dogs~~
- [x] specify game goals a little better
- [x] ~~finish level 3~~
- [x] finish level 4
- [ ] finish level 5
- [ ] do a stats thing when the player finishes the game like how I did for the flappy game: deaths, total hotdogs eaten, maybe time (as if ppl are gonna speedrun this game)
- [x] need to consider adding a wait time between moving up and down for the platforms
- [x] adjust sign label styling
- [x] design popup menu that appears when the player presses e when near a sign

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

7:17 PM Adjusted the name of the original scene. That's it :)

## 10/15

4:10 AM So the path thing acts kind of weird: it makes the whole sprite rotate and I can't figure out how to stop it from doing that (when I try to add a path). The path is not independent from the node, so anything I do to adjust the path changes the orientation of the node as well. It's super annoying though

5 AM Yeah I'm not using paths for this project anymore, it's not acting the way I want it to

I'm going to use tweening instead

5:26 PM I came back from school :3. I deleted the old platform horizontal scene, and changed the code to use tweening instead of a path2d node. It was wayyy too difficult to use a path2d node, so I'd rather use tweening instead.

5:52 PM waow I feel so inteligente!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!1

So I figured out how to make the platform go up and down with the code. I even just had a revelation mid log writing, but I'll get to that later.

Before, I had a couple issues with the tweening also acting weird, but it was because I kinda did the code for the up and down movement a bit wrong. However, I'm glad that I was able to figure it out all by myself. I added  exported variables like wait_time, duration, and direction so that I could customize the movement for each individual platform (at least I think that's what its for.) I also thought up a way to determine which direction a platform goes in first, since I noticed that the platform went the opposite way from where I wanted. So, I thought of creating another exported variable where I could put the values "up" or "down" (a string variable which may not be the best). So, if I want the platform to go down first, I use a conditional statement to make it go down then back up, and vice versa.

To what I realized: I thought that I would have to have two separate platform scenes: one for going up and down and one for going left and right. When I was writing the log, I remembered the variable thing I did for the up and down movement, so then I thought: "Why can't I just do that for all of the movement functions?" So right after I commit this I'm going to perform my hypothesis.

6:04 PM Checked off todos

6:22 PM I started on the actual level code (didn't realize that I didn't since I was so focused on trying to implement a platform), I finished polishing up the platform movement code, so I added a second platform; added the boundary of death to level 4; added the basic Autoload variables (hotdogs_needed and hotdogs_found)

9:33 PM I added all of the platforms and hotdog collectibles that I planned to add in my design. I have yet to code the platforms or anything. I also want to add an interactive tile within the game, but I'm reading up on tileset documentation to figure out how to customize things for certain tiles.

10:03 PM Why is godot so complicated???????????????????

I'm trying to make a custom tile that's like a marker to let the player know about the moving platforms. After coding for a bit, what I think I'm gonna do is that I'm just going to create a separate node with the same picture of the little board things

Or maybe I won't do that. Idk im in the middle of figuring it out and I'm soooooooooooooooooooooo tired (it's literally 10PM!!!!)

10:15 PM I was reconsidering taking the easy way out, but what I'm trying to do is way too complicated for my understanding. I'm just going to take the easy way out and just use a photo of that same signboard to do the events on.

I'm going to sleep now

## 10/16

11:22 PM I didn't get that much time today to work on my project because of an event, but that's alright I guess, since I did my 2 hours throughout this week (and even did 3 hours yesterday). I'm going to take my laptop on the bus to be able to work on the project there too.

So far, I've added the sign scene and I'm working on the code. I'm trying to adjust the label code so that a certain phrase will appear when the player moves into the scene's body and tell the player about the obstacles.

11:29 PM Ok I figured out the sign code anyways. I just remembered that there is a body_exited signal for area bodies. Before, I was trying to do what the body_exited signal did by using a while loop, but it would always freeze the game (idk why though?). But yeah I figured out how to do the sign code :)

I just need to adjust styling now.

## 10/17

6:29 AM Worked on the interact ui thing, added the basic controls, and I'm working on the code to make it appear and disappear when the player presses e near it.

5:25 PM I was lazy so I didn't originally do logs.

SO!!!!!! I finally figured out how to make the interact ui appear when the player pressed "e"!!!!!!!!!!!!!! It took a lot of trial and error and looking through 20 forum posts. Documentation wasn't super helpful, though. I also used a tutorial to figure out how to actually make the ui disappear and appear. The way I figured out how to do this action using a key is through putting the code for the key press within the player node (this may have been the main problem) and the code to change it in the level 4 node.

7:26 PM OMG WHAT!!!!!!!!!!!!!!!

I was just about to write down about how the code for the interact ui stopped working (i probably messed with it and forgot). However, I looked at the changes tree on the side of my VS Code editor and thought to just undo my changes in my level 4 scene. And who would have thought that doing this would actually fix my code!!!

I only had to adjust the visibility on node_ready, and I changed the type of interact ui autoload to control (I forgot the ui was a control node and not a node2d).

7:45 PM Added sign code comments

7:49 PM Added more comments, added timer function to make it easier to add the delay for the platforms within the other functions

8:05 PM Found out how to actually pause tweens: using tween interval. I'm using this instead to pause the platforms at the end of their animation

8:35 PM I added the speed, wait times, and durations for each platform in level 4. I'm working on adding the game ui and styling the sign warning thing

8:56 PM I think I added all of the basic level code into the level 4 script. I added the objective ui, and the code to update the hotdogs found + change levels when the bojective is complete. I'm pretty much done with level 4, I just need to style the popup a bit and add another variable to control the text within the popup for the sign.

9:04 PM Basically finished level 4. I'm too lazy to style the warning thing so I'm no longer doing so.

## 10/18

6:12 AM I started on the level 5 map. I added the first level platforms, the player, and the backgrounds.

6:58 AM I'm still in the process of adding the tiles for the map game. I STILL don't know how to get a tile's coords, so I'm going to do the same thing for the sign tile for the bridge and just make it a separate scene so that it's easier for me to do.

7:11 AM Finished adding tiles and platforms!!!!

7:45 AM YESSSSSSSSSSSSSSSSSSSSS I figured out how to make a disappearing bridge!!!!

I used add_child and remove_child to do this. I think my main problem was that I didn't know the syntax to get the node, so this also took a bit of trial and error to figure out.

7:51 AM I didn't test the bridge so I didn't realize it didn't add the bridge parts back, but I fixed it now :3

8:28 AM Did the movement code for the first set of platforms

8:42 AM Did movement code for the up and down platforms to the side of the main map

8:48 AM finished coding second obstacle platforms

2:32 PM Finished coding all of the platforms :)!!

Currently I'm working on the overall level code, like adding the interact ui, game ui, and signs

3 PM There was an issue with the interact_ui bugging, so I just made a second script for it. I know that it's not the best coding practice, however I can't see to find what's wrong with my code at all.

3:21 PM I'm getting lazy so I wanna finish up this project now. I finished the end screen, so all I have to really do is the enter screen.

3:42 PM I basically finished the game now!!!!!!!!!!!!!!!!!!!!!!! I finished the home screen and also lowered the volume of the background music since it's not that good lol

4:03 PM Thank God I wasn't lazy enough to submit my project without testing it! I just test ran the game and there was an issue with it advancing past levels when finishing level 3. This was because I didn't set is_level_complete to false, so it kept sending the player to the next level.

4:25 PM Updated how to play section

7:11 PM Added sketches and pseudocode drafts for the levels