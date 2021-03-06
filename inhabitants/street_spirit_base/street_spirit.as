﻿animatee = streetspirit_mc;
animated_mcs = ['head', 'body', 'eyes', 'top', 'skull', 'bottom', 'base'];
animations = ['idle_hold', 'talk', 'turn', 'open', 'close', 'idle_move', 'idle_cry'];
loopers = ['idle_move', 'talk', 'idle_hold', 'idle_cry'];

asset_class_names = [
	"base_L0dirt",
	"base_L1dirt",
	"base_L1wood",
	"bottom_L1Branches",
	"bottom_L1FallLeaves",
	"bottom_L1FlowerBush",
	"bottom_L1LeafSkirt",
	"bottom_L1LotusBottom",
	"bottom_L1WoodAcornBranch",
	"bottom_L1flower",
	"bottom_L1grassSkirt",
	"bottom_L1woodRoots",
	"eyes_L0Eyes4",
	"eyes_L0Eyes5",
	"eyes_L0eyes1",
	"eyes_L0eyes2",
	"eyes_L0eyes3",
	"eyes_L1Eyes4",
	"eyes_L1Eyes5",
	"eyes_L1eyes1",
	"eyes_L1eyes2",
	"eyes_L1eyes3",
	"skull_L0dirt",
	"skull_L1dirt",
	"skull_L1wood",
	"top_L1Feathers",
	"top_L1FlowerTop",
	"top_L1Grass",
	"top_L1LeafSprout",
	"top_L1LotusTop",
	"top_L1dirtSeedling",
	"top_L1dirtSpikey",
	"top_L1woodLeafHat",
	"top_L1woodSpikey",
	"top_L1woodTwig"
];

var item_inited:Boolean;
var item_ran:Boolean;
var head:MovieClip;
var body:MovieClip;
var eyes:MovieClip
var top:MovieClip;
var skull:MovieClip;
var bottom:MovieClip;
var base:MovieClip;

var config_options:Object = {
	skull: [
		"none",
		"skull_L0dirt",
		"skull_L1dirt",
		"skull_L1wood"
	],
	eyes: [
		"none",
		"eyes_L0Eyes4",
		"eyes_L0Eyes5",
		"eyes_L0eyes1",
		"eyes_L0eyes2",
		"eyes_L0eyes3",
		"eyes_L1Eyes4",
		"eyes_L1Eyes5",
		"eyes_L1eyes1",
		"eyes_L1eyes2",
		"eyes_L1eyes3"
	],
	top: [
		"none",
		"top_L1Feathers",
		"top_L1FlowerTop",
		"top_L1Grass",
		"top_L1LeafSprout",
		"top_L1LotusTop",
		"top_L1dirtSeedling",
		"top_L1dirtSpikey",
		"top_L1woodLeafHat",
		"top_L1woodSpikey",
		"top_L1woodTwig"
	],
	bottom: [
		"none",
		"bottom_L1Branches",
		"bottom_L1FallLeaves",
		"bottom_L1FlowerBush",
		"bottom_L1LeafSkirt",
		"bottom_L1LotusBottom",
		"bottom_L1WoodAcornBranch",
		"bottom_L1flower",
		"bottom_L1grassSkirt",
		"bottom_L1woodRoots"
	],
	base: [
		"none",
		"base_L0dirt",
		"base_L1dirt",
		"base_L1wood"
	]
}


if (!item_inited) itemInit();

function itemInit():void {
	myAnim = 'idle_hold';
	head = streetspirit_mc.headContainer_mc;
	body = streetspirit_mc.bodyContainer_mc
	eyes = head.eyesContainer_mc.getChildAt(0);// child of head.eyesContainer_mc
	top = head.topContainer_mc.getChildAt(0); // child of head.topContainer_mc
	skull = head.skullContainer_mc.getChildAt(0); // child of head.skullContainer_mc
	bottom = body.bottomContainer_mc.getChildAt(0); // child of head.bottomContainer_mc
	base = body.baseContainer_mc.getChildAt(0);
	item_inited = true;
}

//itemRun()
function itemRun():void {
	if (item_ran) return;
	/*
	var temp_ob:Object = {
		skull: 'L1dirtSkull',
		eyes: 'L1eyes3',
		top: 'L1dirtSeedling',
		bottom: 'L1grassSkirt',
		base: 'L1dirtBase'
	}
	
	// different
	var temp_ob2:Object = {
		skull: 'L1woodSkull',
		eyes: 'L1eyes1',
		top: 'L1woodLeafHat',
		bottom: 'L1flower',
		base: 'L1woodBase'
	}
	
	var temp_ob3:Object = {
		skull: 'skull_L1dirt',
		eyes: 'eyes_L1eyes1',
		top: 'top_L1woodLeafHat',
		bottom: 'bottom_L1LotusBottom',
		base: 'base_L1dirt'
	}
	*/
	
	// DEFAULT!
	var temp_ob4:Object = {
		skull: 'skull_L0dirt',
		eyes: 'eyes_L0eyes1',
		top: 'none',
		bottom: 'none',
		base: 'base_L0dirt'
	}
	
	//initializehead(temp_ob4);
	//stopAll();
	trackFrames();
	//playAnimation('turn');
	//playAnimationSeq(['open', 'close', 'idle_move', 'idle_hold', 'turn', 'talk', 'idle_hold']);
	item_ran = true;
	//LogCoords(animatee, 20)
	
}



function initializehead(ob:Object) {
	log(112, 'initializehead '+ob)
	if (!ob) return;
	skull = addArticleToContainer(ob.skull, head, 'skullContainer_mc') || skull;
	eyes = addArticleToContainer(ob.eyes, head, 'eyesContainer_mc') || eyes;
	top = addArticleToContainer(ob.top, head, 'topContainer_mc') || top;
	bottom = addArticleToContainer(ob.bottom, body, 'bottomContainer_mc') || bottom;
	base = addArticleToContainer(ob.base, body, 'baseContainer_mc') || base;
}





/*










var AvatarAssetsClasses = [
	"L0dirtBase",                              // L0dirtBase
	"L0dirtSkull",                             // L0dirtSkull
	"L0eyes1",                                 // L0eyes1
	"L0eyes2",                                 // L0eyes2
	"L0eyes3",                                 // L0eyes3
	"L1Branches",                              // L1Branches
	"L1FallLeaves",                            // L1FallLeaves
	"L1Feathers",                              // L1Feathers
	"L1FlowerBush",                            // L1FlowerBush
	"L1FlowerTop",                             // L1FlowerTop
	"L1Grass",                                 // L1Grass
	"L1LeafSkirt",                             // L1LeafSkirt
	"L1LeafSprout",                            // L1LeafSprout
	"L1LotusBottom",                           // L1LotusBottom
	"L1LotusTop",                              // L1LotusTop
	"L1WoodAcornBranch",                       // L1WoodAcornBranch
	"L1dirtBase",                              // L1dirtBase
	"L1dirtSeedling",                          // L1dirtSeedling
	"L1dirtSkull",                             // L1dirtSkull
	"L1dirtSpikey",                            // L1dirtSpikey
	"L1eyes1",                                 // L1eyes1
	"L1eyes2",                                 // L1eyes2
	"L1eyes3",                                 // L1eyes3
	"L1flower",                                // L1flower
	"L1grassSkirt",                            // L1grassSkirt
	"L1woodBase",                              // L1woodBase
	"L1woodLeafHat",                           // L1woodLeafHat
	"L1woodRoots",                             // L1woodRoots
	"L1woodSkull",                             // L1woodSkull
	"L1woodSpikey",                            // L1woodSpikey
	"L1woodTwig",                              // L1woodTwig
];


skull: ["L0dirtSkull", "L1dirtSkull", "L1woodSkull"]

eyes: ["L0eyes1", "L0eyes2", "L0eyes3", "L1eyes1", "L1eyes2", "L1eyes3"]

top: ["L1dirtSeedling", "L1dirtSpikey", "L1woodLeafHat", "L1woodSpikey", "L1woodTwig"]

bottom: ["L1Branches", "L1flower", "L1grassSkirt", "L1woodRoots"]

base: ["L0dirtBase", "L1dirtBase", "L1woodBase"]
*/