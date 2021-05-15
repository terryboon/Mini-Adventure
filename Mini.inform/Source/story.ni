"Mini" by Peter Killworth (original design) and Terry Boon (adaptation and implementation in Inform 7)

Section 1 - The Map

The Cobwebby Room is a room. "You are in a crumbling room full of cobwebs. A passage leads west. [if the barred door is closed]A barred door blocks the way north.[otherwise]A barred door stands open to the north." A shield is here. The shield is wearable.
The Treasure Chamber is a room. "You are in a vast treasure chamber, with an exit south. [if the barred door is closed]A barred door blocks the way south.[otherwise]A barred door stands open to the south." A jewelled crown is here.
A barred door is north of the Cobwebby Room and south of the Treasure Chamber.  The barred door is a door. It is not openable. It is scenery.
The Pink Room is west of the Cobwebby Room. "You are in a cheerful pink room. The word BLAH is inscribed on the ceiling. A passage leads east, and a doorway full of whirling blades leads north."
The whirling blades are north of the Pink Room and south of the Alcove. The whirling blades are a door. The whirling blades are open. The whirling blades are not openable. The whirling blades are scenery.
The Alcove is a room. "You're to the north of the pink room in an alcove The only exit seems to be back the way you came, south through the whirling blades." A black rod is here.

Section 2 - Getting through the whirling blades by wearing a shield

Check going through the whirling blades:
	say "The knives stab at you while you pass.";
	if the shield is worn:
		say "They bounce off the shield, which shatters.";
		now the shield is nowhere;
	otherwise if the shield is carried:
		say "You're not actually wearing the shield, so the knives get you.";
		end the story instead;
	otherwise:
		say "They slice you to ribbons. You have departed the world.";
		end the story instead.

Section 3 - Escaping the alcove by saying a magic word

Understand "blah" or "say blah" as casting blah.
Casting blah is an action applying to nothing.
Check casting blah:
	if the player is not in the Alcove:
		say "Nothing happens." instead.
Carry out casting blah:
	say "There is a fanfare of cream horns, and you are thrown through the air!";
	now the player is in the Cobwebby Room.

Section 4 - Opening the barred door to the treasure room by waving the black rod

After waving (noun):
	if the player is in the Cobwebby Room and the barred door is closed and noun is black rod:
		say "The barred door quietly swings open.";
		now the barred door is open;
	otherwise:
		say "Nothing happens."

Section 5 - The countdown - rising water levels

Table of Water Levels
Turn Number	Message
1	"There are faint sounds of water."
2	"The sounds are slightly nearer."
3	"The water sounds are quite loud."
4	"That water's getting nearer!"
5	"Water is soaking up through the floor!"
6	"Pools of water are on the ground."
7	"The water is ankle-deep!"
8	"The water is knee-deep!"
9	"The water is waist-deep!"
10	"The water is up to your chest."
11	"The water closes over your head..."

Every turn:
	say "[the message corresponding to a Turn Number of turn count in the Table of Water Levels]";
	if Turn Count is 11:
		end the story saying "You have departed the world!".

Section 6 - Achieving victory by taking the crown

Carry out taking the crown:
	end the story finally saying "The crown is yours! Well done!".
