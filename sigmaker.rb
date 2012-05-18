# Program Name: SigMaker 1.0
# Author: James Hollingshead
# Purpose: To add a randomly chosen quote to the bottom of an email sig
# Date Released: January 14, 2007
# Requirements: Ruby interpreter (Tested on 1.8)
# Instructions: Just add this script to your startup routine and tell your mail program of 
#               choice to use the resulting text file as your signature file.
# Notes: This script is released under GPLv2. (and only version 2)
#        In all honesty, it doesn't really need to be licensed since it is such a simple script.
#        I'm just not a fan of the way version 3 is shaping up and wish to lodge a protest.
# Website: www.jameshollingshead.com
# Email: programs@jameshollingshead.com


# This is the list of quotes which the script choses from.
# The script runs fairly quickly even with ~30 pages of quotes, taking only about a second at startup.
# Quotes are easily added at the end of the array
quotes = [

"If you've been pounding nails with your forehead for years, it may feel strange the first time somebody hands you a hammer. But that doesn't mean that you should strap the hammer to a headband just to give your skull that old familiar jolt. 
- Wayne Throop",

"We aim to please. Ourselves, mostly, but we do aim to please. 
- Anthony DeBoer ",

"The best answer when anybody asks you if you're any good with explosives is to hold up two open hands and simply say 'Ten'. 
- Anthony DeBoer ",

"Those who live by the sword die by the arrow. ",

"Oh yeah? When I was your age, we didn't have these new-fangled vee-dee-oh games! For fun, we had real gorillas throwing real barrels at us!",

"Black holes are where God divided by zero.
- Steven Wright",

"Never trust a computer you can't throw out a window. 
- Steve Wozniak",

"A mind all logic is like a knife all blade. It makes the hand bleed that uses it.
- Rabindranath Tagore",

"I never make stupid mistakes. Only very, very clever ones.
- Dr Who",

"The road to truth is long, and lined the entire way with annoying bastards.
- Alexander Jablokov",

"Accomplishing the impossible means only that the boss will add it to your regular duties.
- Doug Larson",

"If at first you do succeed - try to hide your astonishment.
- Harry Banks",

"Never underestimate the power of very stupid people in large groups.
- John Kenneth Galbraith",

"A common mistake that people make when trying to design something completely foolproof was to underestimate the ingenuity of complete fools.
- Douglas Adams",

"There's some entertainment value in watching people juggle nitroglycerin.
- Larry Wall",

"Sometime when you least expect it, Love will tap you on the shoulder... and ask you to move out of the way because it still isn't your turn.
- N.V. Plyter ",

"You do not need a parachute to skydive. You only need a parachute to skydive twice.",

"If God is watching us, the least we can do is be entertaining.",

"How do 'Do Not Walk On Grass' signs get there?",

"Eagles may soar, but weasels don't get sucked into jet engines. ",

"Experience is something you don't get until just after you need it. ",

"What happens if you get scared half to death... twice? ",

"I'm always relieved when someone is delivering a eulogy and I realize I'm listening to it.
- George Carlin ",

"Standing ovations have become far too commonplace. What we need are ovations where the audience members all punch and kick one another.
- George Carlin ",

"Weather forecast for tonight: dark.
- George Carlin",

"Weather forecast for tonight: dark. Continued dark overnight, with widely scattered light by morning.
- George Carlin",

"The very existence of flame-throwers proves that some time, somewhere, someone said to themselves, You know, I want to set those people over there on fire, but I'm just not close enough to get the job done.
- George Carlin",

"I was thinking about how people seem to read the Bible a whole lot more as they get older; then it dawned on me... they're cramming for their final exam.
- George Carlin",

"The main reason Santa is so jolly is because he knows where all the bad girls live
- George Carlin",

"Before they invented drawing boards, what did they go back to?
- George Carlin",

"Can vegetarians eat animal crackers?
- George Carlin",

"If a man is standing in the middle of the forest speaking and there is no woman around to hear him... is he still wrong?
- George Carlin",

"If all the world is a stage, where is the audience sitting?
- George Carlin",

"If one synchronized swimmer drowns, do the rest drown, too?
- George Carlin",

"I'm not concerned about all hell breaking loose, but that a PART of hell will break loose... it'll be much harder to detect.
- George Carlin",

"Is it true that cannibals don't eat clowns because they taste funny?
- George Carlin",

"Men are from Earth, women are from Earth. Deal with it.
- George Carlin",

"Meow means 'woof' in cat.
- George Carlin",

"What do you do when you see an endangered animal eating an endangered plant?
- George Carlin",

"If God dropped acid, would he see people?
- George Carlin",

"I've always wanted to be somebody, but I should have been more specific.
- George Carlin",

"I have six locks on my door, all in a row. When I go out, I lock every other one. I figure no matter how long somebody stands there picking the locks, they are always locking three of them.
- George Carlin",

"One out of every three Americans is suffering from some form of mental illness. Think of two of your best friends. If they are OK, then it must be you.
- George Carlin",

"A lady came up to me on the street, pointed at my suede jacket and said, 'Don't you know a cow was murdered for that jacket?' I said 'I didn't know there were any witnesses. Now I'll have to kill you too'.
- George Carlin",

"In labor news, longshoremen walked off the piers today; rescue operations are continuing.
- George Carlin",

"Put your hand on a hot stove for a minute, and it seems like an hour. Sit with a pretty girl for an hour, and it seems like a minute. THAT'S relativity.
- Albert Einstein",

"Anyone who has never made a mistake has never tried anything new.
- Albert Einstein",

"In three words I can sum up everything I've learned about life: it goes on.
- Robert Frost",

"I took a test in Existentialism. I left all the answers blank and got 100.
- Woody Allen",

"Art is anything you can get away with.
- Marshall McLuhan",

"Last week I stated that this woman was the ugliest woman I had ever seen. I have since been visited by her sister and now wish to withdraw that statement.
- Mark Twain",

"Buy land. They've stopped making it.
- Mark Twain",

"The advantage of a bad memory is that one enjoys several times the same good things for the first time.
- Friedrich Nietzsche",

"Some cause happiness wherever they go; others, whenever they go.
- Oscar Wilde",

"Experience is the name everyone gives to their mistakes.
- Oscar Wilde",

"I can resist everything except temptation.
- Oscar Wilde",

"How to make a million dollars: First, get a million dollars.
- Steve Martin",

"I am ready to meet my Maker. Whether my Maker is prepared for the ordeal of meeting me is another matter.
- Winston Churchill",

"You've got to be honest; if you can fake that, you've got it made.
- George Burns",

"Why do they call it rush hour when nothing moves?
- Robin Williams",

"You'll notice that Nancy Reagan never drinks water when Ronnie speaks.
- Robin Williams",

"I used to have Mad Cow's disease, but I'm alright Nooooooooow.
- Billy Connolly",

"I've always wanted to go to Switzerland to see what the army does with those wee red knives.
- Billy Connolly",

"Before you judge a man, walk a mile in his shoes. After that, who cares? ...He's a mile away and you've got his shoes.
- Billy Connolly",

"To find out a girl's faults, praise her to her girl friends.
- Benjamin Franklin",

"He's a fool who cannot conceal his wisdom.
- Benjamin Franklin",

"If all the economists in the world were laid end to end, they wouldn’t reach any conclusion.
- George Bernard Shaw",

"In the school I went to, they asked a kid to prove the law of gravity and he threw the teacher out of the window. 
- Rodney Dangerfield",

"I could tell that my parents hated me. My bath toys were a toaster and a radio.
- Rodney Dangerfield",

"I slept like a log last night. I woke up in the fireplace.
- Tommy Cooper",

"My father confused me. From the ages of one to seven, I thought my name was Jesus Christ!
- Bill Cosby",

"I don't know the key to success, but the key to failure is trying to please everybody.
- Bill Cosby ",

"When you become senile, you won't know it.
- Bill Cosby",

"Civilization had too many rules for me, so I did my best to rewrite them. 
- Bill Cosby",

"Is the glass half full, or half empty?  It depends on whether you're pouring, or drinking.
- Bill Cosby",

"The future will be better tomorrow.
- Dan Quayle",

"The first step in any successful plan is turning around.
- Dante",

"A true friend stabs you in the front.
- Oscar Wilde",

"I wonder what this button does...",

"If you cannot find the truth right where you are, where else do you expect to find it?
- Dogen",

"It is good to have an end to journey toward; but it is the journey that matters, in the end
- Ursula K. Le Guin",

"In walking, just walk.  In sitting, just sit.  Above all, don't wobble.
- Yun-Men",

"If you wish to drown, do not torture yourself with shallow water.
- Bulgarian proverb",

"One can not step twice into the same river",

"Every exit is an entry somewhere else",

"We think in generalities, but we live in detail",

"We shape clay into a pot,
but it is the emptiness inside
that holds whatever we want.
- Tao Te Ching",

"Men argue, nature acts.
- Voltaire",

"Know thyself?  If I knew myself, I'd run away.
- Goethe",

"Life is what happens while you're busy making other plans.
- John Lennon",

"That which does not kill us, must have missed us.
- Miowara Tomokata ",

"Grass grows, birds fly, waves crash against the sand. I just beat people up.
- Muhammed Ali",

"The only difference between me and a madman is that I am not mad.
- Salvador Dali",

"I hate to advocate drugs, alcohol, violence, or insanity to anyone, but they've always worked for me.
- Hunter S. Thompson",

"We are what we pretend to be.
- Kurt Vonnegut, Jr.",

"Even if you're on the right track, you'll get run over if you just sit there.
- Will Rogers",

] #End of quote array

# choose a random quote
num = rand(quotes.length - 1)

# open the sig file for writing 
# (No, it does not do error checking.  I told you it was a simple script.)
# with the current filename, it simply writes the file in the same directory that the script resides in
# This may, of course, be changed should you so desire
sig = File.new("mailsig.txt", "w")

# This block of code writes the sig and quote to the file
# Ruby respects blank lines in a string, so the contact information is actually formatted the way that it looks in 
# the block with the exception that the name is flush with the left like the rest of the information in the sig
sig.write("\n")
sig.write("John Q Public

Office Doorman
www.somewebsite.com
nobody@bigcorp.com
(740) 555-1212")

sig.write("\n\n")
sig.write(quotes[num])

sig.close