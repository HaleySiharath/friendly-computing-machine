/// @description Initialize the available upgrades
initalUnlocked = false;

upgradeInitial = {
	name : "",
	description : "",
	money : 0,
	income : incomeInitial,
	approval : 0,
	perception : perceptionInitial,
	resources : 0,
	production : productionInitial,
	pollution : pollutionInitial
};

upgrade1 = {
	name : name1,
	description : description1,
	money : money1,
	income : income1,
	approval : approval1,
	perception : perception1,
	resources : resources1,
	production : production1,
	pollution : pollution1
};

upgrade2 = {
	name : name2,
	description : description2,
	money : money2,
	income : income2,
	approval : approval2,
	perception : perception2,
	resources : resources2,
	production : production2,
	pollution : pollution2
};

upgrade3 = {
	name : name3,
	description : description3,
	money : money3,
	income : income3,
	approval : approval3,
	perception : perception3,
	resources : resources3,
	production : production3,
	pollution : pollution3
};

upgrades = [upgradeInitial,upgrade1,upgrade2,upgrade3]

// set building level to indicate sprite
level = -1;

if (startInitial)
{
	alarm[0] = 30
}

// stop image from animation
image_speed = 0;
