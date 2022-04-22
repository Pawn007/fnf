package;


import haxe.io.Bytes;
import lime.utils.AssetBundle;
import lime.utils.AssetLibrary;
import lime.utils.AssetManifest;
import lime.utils.Assets;

#if sys
import sys.FileSystem;
#end

@:access(lime.utils.Assets)


@:keep @:dox(hide) class ManifestResources {


	public static var preloadLibraries:Array<AssetLibrary>;
	public static var preloadLibraryNames:Array<String>;
	public static var rootPath:String;


	public static function init (config:Dynamic):Void {

		preloadLibraries = new Array ();
		preloadLibraryNames = new Array ();

		rootPath = null;

		if (config != null && Reflect.hasField (config, "rootPath")) {

			rootPath = Reflect.field (config, "rootPath");

		}

		if (rootPath == null) {

			#if (ios || tvos || emscripten)
			rootPath = "assets/";
			#elseif android
			rootPath = "";
			#elseif console
			rootPath = lime.system.System.applicationDirectory;
			#else
			rootPath = "./";
			#end

		}

		#if (openfl && !flash && !display)
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_vcr_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__assets_fonts_pixel_otf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__flixel_fonts_monsterrat_ttf);
		
		#end

		var data, manifest, library, bundle;

		#if kha

		null
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("null", library);

		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("null");

		#else

		Assets.libraryPaths["videos"] = rootPath + "manifest/videos.json";
		Assets.libraryPaths["songs"] = rootPath + "manifest/songs.json";
		Assets.libraryPaths["shared"] = rootPath + "manifest/shared.json";
		Assets.libraryPaths["week2"] = rootPath + "manifest/week2.json";
		Assets.libraryPaths["week3"] = rootPath + "manifest/week3.json";
		Assets.libraryPaths["week4"] = rootPath + "manifest/week4.json";
		Assets.libraryPaths["week5"] = rootPath + "manifest/week5.json";
		Assets.libraryPaths["week6"] = rootPath + "manifest/week6.json";
		data = '{"name":null,"assets":"aoy4:sizei2402257y4:typey5:MUSICy2:idy31:assets%2Fmusic%2FoffsetSong.mp3y9:pathGroupaR4hy7:preloadtgoR0i2309657R1R2R3y31:assets%2Fmusic%2FfreakyMenu.mp3R5aR7hR6tgoy4:pathy27:assets%2Fweeks%2Fweek5.jsonR0i397R1y4:TEXTR3R9R6tgoR8y27:assets%2Fweeks%2Fweek4.jsonR0i369R1R10R3R11R6tgoR8y27:assets%2Fweeks%2Fweek3.jsonR0i356R1R10R3R12R6tgoR8y27:assets%2Fweeks%2Fweek2.jsonR0i371R1R10R3R13R6tgoR8y27:assets%2Fweeks%2Fweek1.jsonR0i369R1R10R3R14R6tgoR8y29:assets%2Fweeks%2FweekList.txtR0i44R1R10R3R15R6tgoR8y27:assets%2Fweeks%2Fweek6.jsonR0i408R1R10R3R16R6tgoR8y30:assets%2Fweeks%2Ftutorial.jsonR0i274R1R10R3R17R6tgoR8y41:assets%2Fimages%2Fui%2Fbutt_graph0001.pngR0i432R1y5:IMAGER3R18R6tgoR8y41:assets%2Fimages%2Fui%2Fbutt_graph0002.pngR0i421R1R19R3R20R6tgoR8y41:assets%2Fimages%2Fui%2Fbutt_graph0003.pngR0i612R1R19R3R21R6tgoR8y41:assets%2Fimages%2Fui%2Fbutt_graph0004.pngR0i890R1R19R3R22R6tgoR8y41:assets%2Fimages%2Fui%2Fbutt_graph0005.pngR0i907R1R19R3R23R6tgoR8y27:assets%2Fimages%2FhugeW.pngR0i18069R1R19R3R24R6tgoR8y42:assets%2Fimages%2Fstorymenu%2Ftutorial.pngR0i7056R1R19R3R25R6tgoR8y39:assets%2Fimages%2Fstorymenu%2Fweek3.pngR0i7148R1R19R3R26R6tgoR8y39:assets%2Fimages%2Fstorymenu%2Fweek2.pngR0i6517R1R19R3R27R6tgoR8y39:assets%2Fimages%2Fstorymenu%2Fweek1.pngR0i6261R1R19R3R28R6tgoR8y39:assets%2Fimages%2Fstorymenu%2Fweek5.pngR0i6440R1R19R3R29R6tgoR8y39:assets%2Fimages%2Fstorymenu%2Fweek4.pngR0i6262R1R19R3R30R6tgoR8y39:assets%2Fimages%2Fstorymenu%2Fweek6.pngR0i8979R1R19R3R31R6tgoR8y33:assets%2Fimages%2FMenu_Tracks.pngR0i3487R1R19R3R32R6tgoR8y42:assets%2Fimages%2FpixelUI%2Fnum7-pixel.pngR0i197R1R19R3R33R6tgoR8y42:assets%2Fimages%2FpixelUI%2Fdate-pixel.pngR0i1055R1R19R3R34R6tgoR8y42:assets%2Fimages%2FpixelUI%2Fnum1-pixel.pngR0i169R1R19R3R35R6tgoR8y42:assets%2Fimages%2FpixelUI%2Fgood-pixel.pngR0i396R1R19R3R36R6tgoR8y42:assets%2Fimages%2FpixelUI%2Fnum6-pixel.pngR0i214R1R19R3R37R6tgoR8y42:assets%2Fimages%2FpixelUI%2Fsick-pixel.pngR0i553R1R19R3R38R6tgoR8y41:assets%2Fimages%2FpixelUI%2Fset-pixel.pngR0i1068R1R19R3R39R6tgoR8y42:assets%2Fimages%2FpixelUI%2Fnum0-pixel.pngR0i189R1R19R3R40R6tgoR8y43:assets%2Fimages%2FpixelUI%2FNOTE_assets.pngR0i4806R1R19R3R41R6tgoR8y42:assets%2Fimages%2FpixelUI%2Fnum8-pixel.pngR0i187R1R19R3R42R6tgoR8y43:assets%2Fimages%2FpixelUI%2Fcombo-pixel.pngR0i417R1R19R3R43R6tgoR8y42:assets%2Fimages%2FpixelUI%2Fnum5-pixel.pngR0i203R1R19R3R44R6tgoR8y42:assets%2Fimages%2FpixelUI%2Fnum3-pixel.pngR0i204R1R19R3R45R6tgoR8y42:assets%2Fimages%2FpixelUI%2Fshit-pixel.pngR0i628R1R19R3R46R6tgoR8y47:assets%2Fimages%2FpixelUI%2FHURTNOTE_assets.pngR0i1586R1R19R3R47R6tgoR8y42:assets%2Fimages%2FpixelUI%2Fnum9-pixel.pngR0i176R1R19R3R48R6tgoR8y43:assets%2Fimages%2FpixelUI%2Fready-pixel.pngR0i1092R1R19R3R49R6tgoR8y42:assets%2Fimages%2FpixelUI%2Fnum4-pixel.pngR0i181R1R19R3R50R6tgoR8y51:assets%2Fimages%2FpixelUI%2FHURTNOTE_assetsENDS.pngR0i228R1R19R3R51R6tgoR8y47:assets%2Fimages%2FpixelUI%2FNOTE_assetsENDS.pngR0i357R1R19R3R52R6tgoR8y41:assets%2Fimages%2FpixelUI%2Fbad-pixel.pngR0i418R1R19R3R53R6tgoR8y42:assets%2Fimages%2FpixelUI%2Fnum2-pixel.pngR0i220R1R19R3R54R6tgoR8y45:assets%2Fimages%2Fmenudifficulties%2Feasy.pngR0i3453R1R19R3R55R6tgoR8y47:assets%2Fimages%2Fmenudifficulties%2Fnormal.pngR0i4853R1R19R3R56R6tgoR8y45:assets%2Fimages%2Fmenudifficulties%2Fhard.pngR0i3880R1R19R3R57R6tgoR8y43:assets%2Fimages%2Fmenucharacters%2Fdad.jsonR0i126R1R10R3R58R6tgoR8y46:assets%2Fimages%2Fmenucharacters%2Fspooky.jsonR0i142R1R10R3R59R6tgoR8y47:assets%2Fimages%2Fmenucharacters%2FMenu_Dad.pngR0i116690R1R19R3R60R6tgoR8y47:assets%2Fimages%2Fmenucharacters%2FMenu_Dad.xmlR0i2115R1R10R3R61R6tgoR8y55:assets%2Fimages%2Fmenucharacters%2FMenu_Spooky_Kids.xmlR0i2543R1R10R3R62R6tgoR8y57:assets%2Fimages%2Fmenucharacters%2Fparents-christmas.jsonR0i135R1R10R3R63R6tgoR8y55:assets%2Fimages%2Fmenucharacters%2FMenu_Spooky_Kids.pngR0i81655R1R19R3R64R6tgoR8y46:assets%2Fimages%2Fmenucharacters%2FMenu_BF.pngR0i208834R1R19R3R65R6tgoR8y46:assets%2Fimages%2Fmenucharacters%2FMenu_BF.xmlR0i5582R1R10R3R66R6tgoR8y48:assets%2Fimages%2Fmenucharacters%2FMenu_Pico.pngR0i113929R1R19R3R67R6tgoR8y48:assets%2Fimages%2Fmenucharacters%2FMenu_Pico.xmlR0i2142R1R10R3R68R6tgoR8y43:assets%2Fimages%2Fmenucharacters%2Fmom.jsonR0i125R1R10R3R69R6tgoR8y42:assets%2Fimages%2Fmenucharacters%2Fbf.jsonR0i125R1R10R3R70R6tgoR8y46:assets%2Fimages%2Fmenucharacters%2Fsenpai.jsonR0i133R1R10R3R71R6tgoR8y51:assets%2Fimages%2Fmenucharacters%2FMenu_Parents.xmlR0i2188R1R10R3R72R6tgoR8y51:assets%2Fimages%2Fmenucharacters%2FMenu_Parents.pngR0i351693R1R19R3R73R6tgoR8y47:assets%2Fimages%2Fmenucharacters%2FMenu_Mom.xmlR0i2113R1R10R3R74R6tgoR8y47:assets%2Fimages%2Fmenucharacters%2FMenu_Mom.pngR0i156895R1R19R3R75R6tgoR8y46:assets%2Fimages%2Fmenucharacters%2FMenu_GF.pngR0i330213R1R19R3R76R6tgoR8y50:assets%2Fimages%2Fmenucharacters%2FMenu_Senpai.pngR0i66773R1R19R3R77R6tgoR8y46:assets%2Fimages%2Fmenucharacters%2FMenu_GF.xmlR0i3802R1R10R3R78R6tgoR8y50:assets%2Fimages%2Fmenucharacters%2FMenu_Senpai.xmlR0i1348R1R10R3R79R6tgoR8y42:assets%2Fimages%2Fmenucharacters%2Fgf.jsonR0i125R1R10R3R80R6tgoR8y44:assets%2Fimages%2Fmenucharacters%2Fpico.jsonR0i129R1R10R3R81R6tgoR8y28:assets%2Fimages%2FmenuBG.pngR0i620342R1R19R3R82R6tgoR8y26:assets%2Fimages%2Fnum4.pngR0i3989R1R19R3R83R6tgoR8y26:assets%2Fimages%2Fnum5.pngR0i4113R1R19R3R84R6tgoR8y26:assets%2Fimages%2Fnum7.pngR0i3692R1R19R3R85R6tgoR8y26:assets%2Fimages%2Fnum6.pngR0i4181R1R19R3R86R6tgoR8y38:assets%2Fimages%2FHURTnoteSplashes.pngR0i62608R1R19R3R87R6tgoR8y38:assets%2Fimages%2FHURTnoteSplashes.xmlR0i4857R1R10R3R88R6tgoR8y26:assets%2Fimages%2Fnum2.pngR0i3990R1R19R3R89R6tgoR8y54:assets%2Fimages%2Fmenubackgrounds%2Fmenu_halloween.pngR0i19784R1R19R3R90R6tgoR8y51:assets%2Fimages%2Fmenubackgrounds%2Fmenu_philly.pngR0i46318R1R19R3R91R6tgoR8y54:assets%2Fimages%2Fmenubackgrounds%2Fmenu_christmas.pngR0i38977R1R19R3R92R6tgoR8y50:assets%2Fimages%2Fmenubackgrounds%2Fmenu_stage.pngR0i54688R1R19R3R93R6tgoR8y49:assets%2Fimages%2Fmenubackgrounds%2Fmenu_limo.pngR0i15191R1R19R3R94R6tgoR8y51:assets%2Fimages%2Fmenubackgrounds%2Fmenu_school.pngR0i6974R1R19R3R95R6tgoR8y34:assets%2Fimages%2Fcheckboxanim.xmlR0i1976R1R10R3R96R6tgoR8y34:assets%2Fimages%2Fcheckboxanim.pngR0i42746R1R19R3R97R6tgoR8y26:assets%2Fimages%2Fnum3.pngR0i4022R1R19R3R98R6tgoR8y34:assets%2Fimages%2FgfDanceTitle.xmlR0i4259R1R10R3R99R6tgoR8y26:assets%2Fimages%2Fnum1.pngR0i3390R1R19R3R100R6tgoR8y34:assets%2Fimages%2FgfDanceTitle.pngR0i1221436R1R19R3R101R6tgoR8y37:assets%2Fimages%2Fnewgrounds_logo.pngR0i57747R1R19R3R102R6tgoR8y26:assets%2Fimages%2Fnum0.pngR0i3738R1R19R3R103R6tgoR8y33:assets%2Fimages%2Fchart_quant.pngR0i2593R1R19R3R104R6tgoR8y37:assets%2Fimages%2Fachievementgrid.pngR0i263971R1R19R3R105R6tgoR8y33:assets%2Fimages%2Fchart_quant.xmlR0i582R1R10R3R106R6tgoR8y33:assets%2Fimages%2FNOTE_assets.pngR0i129989R1R19R3R107R6tgoR8y39:assets%2Fimages%2Flockedachievement.pngR0i13055R1R19R3R108R6tgoR8y33:assets%2Fimages%2FNOTE_assets.xmlR0i8175R1R10R3R109R6tgoR8y36:assets%2Fimages%2Fdialogue%2Fbf.jsonR0i987R1R10R3R110R6tgoR8y36:assets%2Fimages%2Fdialogue%2Fgf.jsonR0i807R1R10R3R111R6tgoR8y35:assets%2Fimages%2FgfDanceTitle.jsonR0i124R1R10R3R112R6tgoR8y30:assets%2Fimages%2Falphabet.xmlR0i52093R1R10R3R113R6tgoR8y30:assets%2Fimages%2Falphabet.pngR0i187033R1R19R3R114R6tgoR8y34:assets%2Fimages%2FnoteSplashes.xmlR0i4673R1R10R3R115R6tgoR8y34:assets%2Fimages%2FnoteSplashes.pngR0i203739R1R19R3R116R6tgoR8y26:assets%2Fimages%2Flogo.pngR0i86924R1R19R3R117R6tgoR8y35:assets%2Fimages%2FmenuBGMagenta.pngR0i553468R1R19R3R118R6tgoR8y37:assets%2Fimages%2Ficons%2Ficon-gf.pngR0i11992R1R19R3R119R6tgoR8y39:assets%2Fimages%2Ficons%2Ficon-pico.pngR0i21559R1R19R3R120R6tgoR8y39:assets%2Fimages%2Ficons%2Ficon-face.pngR0i7096R1R19R3R121R6tgoR8y38:assets%2Fimages%2Ficons%2Ficon-dad.pngR0i14488R1R19R3R122R6tgoR8y42:assets%2Fimages%2Ficons%2Ficon-tankman.pngR0i7072R1R19R3R123R6tgoR8y42:assets%2Fimages%2Ficons%2Ficon-parents.pngR0i19196R1R19R3R124R6tgoR8y43:assets%2Fimages%2Ficons%2Ficon-bf-pixel.pngR0i1221R1R19R3R125R6tgoR8y41:assets%2Fimages%2Ficons%2Ficon-spooky.pngR0i10457R1R19R3R126R6tgoR8y47:assets%2Fimages%2Ficons%2Ficon-spirit-pixel.pngR0i1278R1R19R3R127R6tgoR8y47:assets%2Fimages%2Ficons%2Ficon-senpai-pixel.pngR0i1377R1R19R3R128R6tgoR8y42:assets%2Fimages%2Ficons%2Ficon-monster.pngR0i23064R1R19R3R129R6tgoR8y37:assets%2Fimages%2Ficons%2Ficon-bf.pngR0i19936R1R19R3R130R6tgoR8y38:assets%2Fimages%2Ficons%2Ficon-mom.pngR0i15612R1R19R3R131R6tgoR8y41:assets%2Fimages%2Ficons%2Ficon-bf-old.pngR0i10263R1R19R3R132R6tgoR8y32:assets%2Fimages%2FlogoBumpin.pngR0i592724R1R19R3R133R6tgoR8y32:assets%2Fimages%2FlogoBumpin.xmlR0i2177R1R10R3R134R6tgoR8y26:assets%2Fimages%2Fnum8.pngR0i3914R1R19R3R135R6tgoR8y26:assets%2Fimages%2Fnum9.pngR0i3687R1R19R3R136R6tgoR8y45:assets%2Fimages%2Fcampaign_menu_UI_assets.pngR0i7511R1R19R3R137R6tgoR8y45:assets%2Fimages%2Fcampaign_menu_UI_assets.xmlR0i597R1R10R3R138R6tgoR8y32:assets%2Fimages%2FmenuBGBlue.pngR0i614586R1R19R3R139R6tgoR8y37:assets%2Fimages%2FHURTNOTE_assets.xmlR0i1116R1R10R3R140R6tgoR8y44:assets%2Fimages%2Fmainmenu%2Fmenu_donate.pngR0i58703R1R19R3R141R6tgoR8y44:assets%2Fimages%2Fmainmenu%2Fmenu_donate.xmlR0i1375R1R10R3R142R6tgoR8y42:assets%2Fimages%2Fmainmenu%2Fmenu_mods.pngR0i54051R1R19R3R143R6tgoR8y42:assets%2Fimages%2Fmainmenu%2Fmenu_mods.xmlR0i1644R1R10R3R144R6tgoR8y45:assets%2Fimages%2Fmainmenu%2Fmenu_options.pngR0i66084R1R19R3R145R6tgoR8y45:assets%2Fimages%2Fmainmenu%2Fmenu_options.xmlR0i1332R1R10R3R146R6tgoR8y45:assets%2Fimages%2Fmainmenu%2Fmenu_credits.pngR0i69937R1R19R3R147R6tgoR8y45:assets%2Fimages%2Fmainmenu%2Fmenu_credits.xmlR0i1385R1R10R3R148R6tgoR8y48:assets%2Fimages%2Fmainmenu%2Fmenu_story_mode.xmlR0i1444R1R10R3R149R6tgoR8y48:assets%2Fimages%2Fmainmenu%2Fmenu_story_mode.pngR0i119619R1R19R3R150R6tgoR8y44:assets%2Fimages%2Fmainmenu%2Fmenu_awards.pngR0i67591R1R19R3R151R6tgoR8y46:assets%2Fimages%2Fmainmenu%2Fmenu_freeplay.pngR0i71504R1R19R3R152R6tgoR8y46:assets%2Fimages%2Fmainmenu%2Fmenu_freeplay.xmlR0i1399R1R10R3R153R6tgoR8y44:assets%2Fimages%2Fmainmenu%2Fmenu_awards.xmlR0i1380R1R10R3R154R6tgoR8y30:assets%2Fimages%2Fhahadumb.pngR0i16097R1R19R3R155R6tgoR8y37:assets%2Fimages%2FHURTNOTE_assets.pngR0i26086R1R19R3R156R6tgoR8y44:assets%2Fimages%2Fcharacters%2FBOYFRIEND.pngR0i5042658R1R19R3R157R6tgoR8y44:assets%2Fimages%2Fcharacters%2FBOYFRIEND.xmlR0i67577R1R10R3R158R6tgoR8y32:assets%2Fimages%2FunknownMod.pngR0i4493R1R19R3R159R6tgoR8y45:assets%2Fimages%2Fcredits%2Fninjamuffin99.pngR0i4336R1R19R3R160R6tgoR8y39:assets%2Fimages%2Fcredits%2Fiflicky.pngR0i7191R1R19R3R161R6tgoR8y43:assets%2Fimages%2Fcredits%2Fkawaisprite.pngR0i3871R1R19R3R162R6tgoR8y40:assets%2Fimages%2Fcredits%2Fbb-panzu.pngR0i4703R1R19R3R163R6tgoR8y38:assets%2Fimages%2Fcredits%2Fkeoiki.pngR0i4291R1R19R3R164R6tgoR8y40:assets%2Fimages%2Fcredits%2Fgedehari.pngR0i5983R1R19R3R165R6tgoR8y37:assets%2Fimages%2Fcredits%2Fshubs.pngR0i9626R1R19R3R166R6tgoR8y39:assets%2Fimages%2Fcredits%2Fdiscord.pngR0i3505R1R19R3R167R6tgoR8y45:assets%2Fimages%2Fcredits%2Fpolybiusproxy.pngR0i8864R1R19R3R168R6tgoR8y40:assets%2Fimages%2Fcredits%2Fevilsk8r.pngR0i7602R1R19R3R169R6tgoR8y42:assets%2Fimages%2Fcredits%2Friveroaken.pngR0i6881R1R19R3R170R6tgoR8y43:assets%2Fimages%2Fcredits%2Fshadowmario.pngR0i3081R1R19R3R171R6tgoR8y45:assets%2Fimages%2Fcredits%2Fphantomarcade.pngR0i7875R1R19R3R172R6tgoR8y34:assets%2Fimages%2Fcry_about_it.pngR0i380631R1R19R3R173R6tgoR8y28:assets%2Fimages%2Ffunkay.pngR0i135548R1R19R3R174R6tgoR8y32:assets%2Fimages%2FtitleEnter.xmlR0i4875R1R10R3R175R6tgoR8y31:assets%2Fimages%2FmenuDesat.pngR0i357911R1R19R3R176R6tgoR8y32:assets%2Fimages%2FtitleEnter.pngR0i1449202R1R19R3R177R6tgoR8y31:assets%2Fstages%2FmallEvil.jsonR0i150R1R10R3R178R6tgoR8y27:assets%2Fstages%2Flimo.jsonR0i151R1R10R3R179R6tgoR8y29:assets%2Fstages%2Fspooky.jsonR0i150R1R10R3R180R6tgoR8y33:assets%2Fstages%2FschoolEvil.jsonR0i149R1R10R3R181R6tgoR8y29:assets%2Fstages%2Fphilly.jsonR0i150R1R10R3R182R6tgoR8y29:assets%2Fstages%2Fschool.jsonR0i149R1R10R3R183R6tgoR8y28:assets%2Fstages%2Fstage.jsonR0i144R1R10R3R184R6tgoR8y27:assets%2Fstages%2Fmall.jsonR0i149R1R10R3R185R6tgoR0i9155R1R2R3y34:assets%2Fsounds%2Fintro1-pixel.mp3R5aR186hR6tgoR0i17762R1R2R3y32:assets%2Fsounds%2FcancelMenu.mp3R5aR187hR6tgoR0i91950R1R2R3y33:assets%2Fsounds%2FconfirmMenu.mp3R5aR188hR6tgoR0i9128R1R2R3y34:assets%2Fsounds%2Fintro3-pixel.mp3R5aR189hR6tgoR0i21651R1R2R3y35:assets%2Fsounds%2FintroGo-pixel.mp3R5aR190hR6tgoR0i17762R1R2R3y32:assets%2Fsounds%2FscrollMenu.mp3R5aR191hR6tgoR0i42970R1R2R3y33:assets%2Fsounds%2FsecretSound.mp3R5aR192hR6tgoR0i9912R1R2R3y34:assets%2Fsounds%2Fintro2-pixel.mp3R5aR193hR6tgoR8y38:assets%2Fcharacters%2Fpico-player.jsonR0i1635R1R10R3R194R6tgoR8y40:assets%2Fcharacters%2Fbf-pixel-dead.jsonR0i721R1R10R3R195R6tgoR8y44:assets%2Fcharacters%2Fbf-pixel-opponent.jsonR0i1567R1R10R3R196R6tgoR8y30:assets%2Fcharacters%2Fdad.jsonR0i1762R1R10R3R197R6tgoR8y33:assets%2Fcharacters%2Fspooky.jsonR0i1384R1R10R3R198R6tgoR8y33:assets%2Fcharacters%2Fbf-car.jsonR0i2527R1R10R3R199R6tgoR8y34:assets%2Fcharacters%2Fmonster.jsonR0i1904R1R10R3R200R6tgoR8y35:assets%2Fcharacters%2Fgf-pixel.jsonR0i937R1R10R3R201R6tgoR8y44:assets%2Fcharacters%2Fparents-christmas.jsonR0i3427R1R10R3R202R6tgoR8y33:assets%2Fcharacters%2Fspirit.jsonR0i992R1R10R3R203R6tgoR8y39:assets%2Fcharacters%2Fbf-christmas.jsonR0i1747R1R10R3R204R6tgoR8y35:assets%2Fcharacters%2Fbf-pixel.jsonR0i1563R1R10R3R205R6tgoR8y44:assets%2Fcharacters%2Fmonster-christmas.jsonR0i1905R1R10R3R206R6tgoR8y30:assets%2Fcharacters%2Fmom.jsonR0i988R1R10R3R207R6tgoR8y29:assets%2Fcharacters%2Fbf.jsonR0i2905R1R10R3R208R6tgoR8y33:assets%2Fcharacters%2Fsenpai.jsonR0i1009R1R10R3R209R6tgoR8y39:assets%2Fcharacters%2Fsenpai-angry.jsonR0i1039R1R10R3R210R6tgoR8y39:assets%2Fcharacters%2Fgf-christmas.jsonR0i2137R1R10R3R211R6tgoR8y33:assets%2Fcharacters%2Fgf-car.jsonR0i993R1R10R3R212R6tgoR8y34:assets%2Fcharacters%2Fmom-car.jsonR0i1892R1R10R3R213R6tgoR8y29:assets%2Fcharacters%2Fgf.jsonR0i2326R1R10R3R214R6tgoR8y31:assets%2Fcharacters%2Fpico.jsonR0i1636R1R10R3R215R6tgoR8y34:assets%2Fdata%2Fdata-goes-here.txtR0zR1R10R3R216R6tgoR8y35:assets%2Fdata%2Froses%2Fevents.jsonR0i8786R1R10R3R217R6tgoR8y41:assets%2Fdata%2Froses%2FrosesDialogue.txtR0i153R1R10R3R218R6tgoR8y39:assets%2Fdata%2Froses%2Froses-hard.jsonR0i10432R1R10R3R219R6tgoR8y39:assets%2Fdata%2Froses%2Froses-easy.jsonR0i6725R1R10R3R220R6tgoR8y34:assets%2Fdata%2Froses%2Froses.jsonR0i8609R1R10R3R221R6tgoR8y34:assets%2Fdata%2FfreeplayColors.txtR0i76R1R10R3R222R6tgoR8y36:assets%2Fdata%2Feggnog%2Fevents.jsonR0i4881R1R10R3R223R6tgoR8y41:assets%2Fdata%2Feggnog%2Feggnog-hard.jsonR0i11689R1R10R3R224R6tgoR8y41:assets%2Fdata%2Feggnog%2Feggnog-easy.jsonR0i9239R1R10R3R225R6tgoR8y36:assets%2Fdata%2Feggnog%2Feggnog.jsonR0i10333R1R10R3R226R6tgoR8y38:assets%2Fdata%2Ftutorial%2Fevents.jsonR0i2702R1R10R3R227R6tgoR8y45:assets%2Fdata%2Ftutorial%2Ftutorial-easy.jsonR0i5739R1R10R3R228R6tgoR8y45:assets%2Fdata%2Ftutorial%2Ftutorial-hard.jsonR0i6335R1R10R3R229R6tgoR8y40:assets%2Fdata%2Ftutorial%2Ftutorial.jsonR0i5739R1R10R3R230R6tgoR8y29:assets%2Fdata%2Fmain-view.xmlR0i123R1R10R3R231R6tgoR8y34:assets%2Fdata%2Fhigh%2Fevents.jsonR0i4558R1R10R3R232R6tgoR8y37:assets%2Fdata%2Fhigh%2Fhigh-easy.jsonR0i8563R1R10R3R233R6tgoR8y37:assets%2Fdata%2Fhigh%2Fhigh-hard.jsonR0i11553R1R10R3R234R6tgoR8y32:assets%2Fdata%2Fhigh%2Fhigh.jsonR0i9757R1R10R3R235R6tgoR8y43:assets%2Fdata%2Fthorns%2FthornsDialogue.txtR0i305R1R10R3R236R6tgoR8y36:assets%2Fdata%2Fthorns%2Fevents.jsonR0i8104R1R10R3R237R6tgoR8y41:assets%2Fdata%2Fthorns%2Fthorns-easy.jsonR0i10437R1R10R3R238R6tgoR8y41:assets%2Fdata%2Fthorns%2Fthorns-hard.jsonR0i15444R1R10R3R239R6tgoR8y36:assets%2Fdata%2Fthorns%2Fthorns.jsonR0i12691R1R10R3R240R6tgoR8y32:assets%2Fdata%2Ftest%2Ftest.jsonR0i12411R1R10R3R241R6tgoR8y45:assets%2Fdata%2Fspookeez%2Fspookeez-hard.jsonR0i9429R1R10R3R242R6tgoR8y45:assets%2Fdata%2Fspookeez%2Fspookeez-easy.jsonR0i7965R1R10R3R243R6tgoR8y40:assets%2Fdata%2Fspookeez%2Fspookeez.jsonR0i8875R1R10R3R244R6tgoR8y29:assets%2Fdata%2FintroText.txtR0i2130R1R10R3R245R6tgoR8y34:assets%2Fdata%2Fridge%2Fridge.jsonR0i34473R1R10R3R246R6tgoR8y33:assets%2Fdata%2FspecialThanks.txtR0i300R1R10R3R247R6tgoR8y35:assets%2Fdata%2Ffresh%2Fevents.jsonR0i3201R1R10R3R248R6tgoR8y39:assets%2Fdata%2Ffresh%2Ffresh-hard.jsonR0i6905R1R10R3R249R6tgoR8y39:assets%2Fdata%2Ffresh%2Ffresh-easy.jsonR0i5857R1R10R3R250R6tgoR8y34:assets%2Fdata%2Ffresh%2Ffresh.jsonR0i6493R1R10R3R251R6tgoR8y37:assets%2Fdata%2Fpico%2Fpico-hard.jsonR0i8768R1R10R3R252R6tgoR8y37:assets%2Fdata%2Fpico%2Fpico-easy.jsonR0i6089R1R10R3R253R6tgoR8y32:assets%2Fdata%2Fpico%2Fpico.jsonR0i7493R1R10R3R254R6tgoR8y41:assets%2Fdata%2Fphilly-nice%2Fevents.jsonR0i5191R1R10R3R255R6tgoR8y51:assets%2Fdata%2Fphilly-nice%2Fphilly-nice-hard.jsonR0i12556R1R10R3R256R6tgoR8y51:assets%2Fdata%2Fphilly-nice%2Fphilly-nice-easy.jsonR0i8067R1R10R3R257R6tgoR8y46:assets%2Fdata%2Fphilly-nice%2Fphilly-nice.jsonR0i10103R1R10R3R258R6tgoR8y29:assets%2Fdata%2FstageList.txtR0i56R1R10R3R259R6tgoR8y39:assets%2Fdata%2Fcocoa%2Fcocoa-easy.jsonR0i7062R1R10R3R260R6tgoR8y39:assets%2Fdata%2Fcocoa%2Fcocoa-hard.jsonR0i10443R1R10R3R261R6tgoR8y35:assets%2Fdata%2Fcocoa%2Fevents.jsonR0i3644R1R10R3R262R6tgoR8y34:assets%2Fdata%2Fcocoa%2Fcocoa.jsonR0i8278R1R10R3R263R6tgoR8y41:assets%2Fdata%2Fsenpai%2Fsenpai-easy.jsonR0i9027R1R10R3R264R6tgoR8y41:assets%2Fdata%2Fsenpai%2Fsenpai-hard.jsonR0i10778R1R10R3R265R6tgoR8y43:assets%2Fdata%2Fsenpai%2FsenpaiDialogue.txtR0i162R1R10R3R266R6tgoR8y36:assets%2Fdata%2Fsenpai%2Fsenpai.jsonR0i10016R1R10R3R267R6tgoR8y34:assets%2Fdata%2Fsmash%2Fsmash.jsonR0i23961R1R10R3R268R6tgoR8y43:assets%2Fdata%2Fsatin-panties%2Fevents.jsonR0i3177R1R10R3R269R6tgoR8y55:assets%2Fdata%2Fsatin-panties%2Fsatin-panties-easy.jsonR0i8817R1R10R3R270R6tgoR8y55:assets%2Fdata%2Fsatin-panties%2Fsatin-panties-hard.jsonR0i12704R1R10R3R271R6tgoR8y50:assets%2Fdata%2Fsatin-panties%2Fsatin-panties.jsonR0i10725R1R10R3R272R6tgoR8y47:assets%2Fdata%2Fwinter-horrorland%2Fevents.jsonR0i6197R1R10R3R273R6tgoR8y63:assets%2Fdata%2Fwinter-horrorland%2Fwinter-horrorland-hard.jsonR0i14558R1R10R3R274R6tgoR8y63:assets%2Fdata%2Fwinter-horrorland%2Fwinter-horrorland-easy.jsonR0i11846R1R10R3R275R6tgoR8y58:assets%2Fdata%2Fwinter-horrorland%2Fwinter-horrorland.jsonR0i12808R1R10R3R276R6tgoR8y39:assets%2Fdata%2Fsouth%2Fsouth-hard.jsonR0i10170R1R10R3R277R6tgoR8y39:assets%2Fdata%2Fsouth%2Fsouth-easy.jsonR0i8435R1R10R3R278R6tgoR8y34:assets%2Fdata%2Fsouth%2Fsouth.jsonR0i10097R1R10R3R279R6tgoR8y34:assets%2Fdata%2Fmilf%2Fevents.jsonR0i7488R1R10R3R280R6tgoR8y37:assets%2Fdata%2Fmilf%2Fmilf-easy.jsonR0i13522R1R10R3R281R6tgoR8y37:assets%2Fdata%2Fmilf%2Fmilf-hard.jsonR0i18135R1R10R3R282R6tgoR8y32:assets%2Fdata%2Fmilf%2Fmilf.jsonR0i15192R1R10R3R283R6tgoR8y44:assets%2Fdata%2Fbopeebo%2Fbopeebo-boobs.jsonR0i4140R1R10R3R284R6tgoR8y37:assets%2Fdata%2Fbopeebo%2Fevents.jsonR0i5047R1R10R3R285R6tgoR8y38:assets%2Fdata%2Fbopeebo%2Fbopeebo.jsonR0i9542R1R10R3R286R6tgoR8y43:assets%2Fdata%2Fbopeebo%2Fbopeebo-hard.jsonR0i4140R1R10R3R287R6tgoR8y43:assets%2Fdata%2Fbopeebo%2Fbopeebo-easy.jsonR0i9178R1R10R3R288R6tgoR8y33:assets%2Fdata%2FcharacterList.txtR0i198R1R10R3R289R6tgoR8y38:assets%2Fdata%2Fmonster%2Fmonster.jsonR0i13445R1R10R3R290R6tgoR8y43:assets%2Fdata%2Fmonster%2Fmonster-easy.jsonR0i12175R1R10R3R291R6tgoR8y43:assets%2Fdata%2Fmonster%2Fmonster-hard.jsonR0i14163R1R10R3R292R6tgoR8y38:assets%2Fdata%2Fblammed%2Fblammed.jsonR0i9687R1R10R3R293R6tgoR8y37:assets%2Fdata%2Fblammed%2Fevents.jsonR0i5782R1R10R3R294R6tgoR8y43:assets%2Fdata%2Fblammed%2Fblammed-easy.jsonR0i8488R1R10R3R295R6tgoR8y43:assets%2Fdata%2Fblammed%2Fblammed-hard.jsonR0i12097R1R10R3R296R6tgoR8y44:assets%2Fdata%2Fdad-battle%2Fdad-battle.jsonR0i8913R1R10R3R297R6tgoR8y49:assets%2Fdata%2Fdad-battle%2Fdad-battle-hard.jsonR0i9756R1R10R3R298R6tgoR8y49:assets%2Fdata%2Fdad-battle%2Fdad-battle-easy.jsonR0i7937R1R10R3R299R6tgoR8y21:do%20NOT%20readme.txtR0i4326R1R10R3R300R6tgoR0i75864R1y4:FONTy9:classNamey29:__ASSET__assets_fonts_vcr_ttfR3y24:assets%2Ffonts%2Fvcr.ttfR6tgoR8y34:assets%2Ffonts%2Ffonts-go-here.txtR0zR1R10R3R305R6tgoR0i14656R1R301R302y31:__ASSET__assets_fonts_pixel_otfR3y26:assets%2Ffonts%2Fpixel.otfR6tgoR0i39706R1R2R3y28:flixel%2Fsounds%2Fflixel.mp3R5aR308y28:flixel%2Fsounds%2Fflixel.ogghR6tgoR0i2114R1R2R3y26:flixel%2Fsounds%2Fbeep.mp3R5aR310y26:flixel%2Fsounds%2Fbeep.ogghR6tgoR0i5794R1y5:SOUNDR3R311R5aR310R311hgoR0i33629R1R312R3R309R5aR308R309hgoR0i15744R1R301R302y35:__ASSET__flixel_fonts_nokiafc22_ttfR3y30:flixel%2Ffonts%2Fnokiafc22.ttfR6tgoR0i29724R1R301R302y36:__ASSET__flixel_fonts_monsterrat_ttfR3y31:flixel%2Ffonts%2Fmonsterrat.ttfR6tgoR8y33:flixel%2Fimages%2Fui%2Fbutton.pngR0i519R1R19R3R317R6tgoR8y36:flixel%2Fimages%2Flogo%2Fdefault.pngR0i3280R1R19R3R318R6tgoR8y44:flixel%2Fflixel-ui%2Fimg%2Fdropdown_mark.pngR0i156R1R19R3R319R6tgoR8y40:flixel%2Fflixel-ui%2Fimg%2Fplus_mark.pngR0i147R1R19R3R320R6tgoR8y36:flixel%2Fflixel-ui%2Fimg%2Fradio.pngR0i191R1R19R3R321R6tgoR8y48:flixel%2Fflixel-ui%2Fimg%2Fbutton_arrow_left.pngR0i459R1R19R3R322R6tgoR8y42:flixel%2Fflixel-ui%2Fimg%2Fbutton_thin.pngR0i247R1R19R3R323R6tgoR8y34:flixel%2Fflixel-ui%2Fimg%2Ftab.pngR0i201R1R19R3R324R6tgoR8y41:flixel%2Fflixel-ui%2Fimg%2Ffinger_big.pngR0i1724R1R19R3R325R6tgoR8y36:flixel%2Fflixel-ui%2Fimg%2Finvis.pngR0i128R1R19R3R326R6tgoR8y43:flixel%2Fflixel-ui%2Fimg%2Fchrome_inset.pngR0i192R1R19R3R327R6tgoR8y44:flixel%2Fflixel-ui%2Fimg%2Ftooltip_arrow.pngR0i18509R1R19R3R328R6tgoR8y49:flixel%2Fflixel-ui%2Fimg%2Fbutton_arrow_right.pngR0i511R1R19R3R329R6tgoR8y40:flixel%2Fflixel-ui%2Fimg%2Fradio_dot.pngR0i153R1R19R3R330R6tgoR8y37:flixel%2Fflixel-ui%2Fimg%2Fchrome.pngR0i253R1R19R3R331R6tgoR8y40:flixel%2Fflixel-ui%2Fimg%2Fcheck_box.pngR0i922R1R19R3R332R6tgoR8y44:flixel%2Fflixel-ui%2Fimg%2Fbutton_toggle.pngR0i534R1R19R3R333R6tgoR8y46:flixel%2Fflixel-ui%2Fimg%2Fbutton_arrow_up.pngR0i493R1R19R3R334R6tgoR8y41:flixel%2Fflixel-ui%2Fimg%2Fminus_mark.pngR0i136R1R19R3R335R6tgoR8y42:flixel%2Fflixel-ui%2Fimg%2Fchrome_flat.pngR0i212R1R19R3R336R6tgoR8y37:flixel%2Fflixel-ui%2Fimg%2Fswatch.pngR0i185R1R19R3R337R6tgoR8y43:flixel%2Fflixel-ui%2Fimg%2Fchrome_light.pngR0i214R1R19R3R338R6tgoR8y38:flixel%2Fflixel-ui%2Fimg%2Fhilight.pngR0i129R1R19R3R339R6tgoR8y41:flixel%2Fflixel-ui%2Fimg%2Fcheck_mark.pngR0i946R1R19R3R340R6tgoR8y39:flixel%2Fflixel-ui%2Fimg%2Ftab_back.pngR0i210R1R19R3R341R6tgoR8y34:flixel%2Fflixel-ui%2Fimg%2Fbox.pngR0i912R1R19R3R342R6tgoR8y43:flixel%2Fflixel-ui%2Fimg%2Ffinger_small.pngR0i294R1R19R3R343R6tgoR8y37:flixel%2Fflixel-ui%2Fimg%2Fbutton.pngR0i433R1R19R3R344R6tgoR8y48:flixel%2Fflixel-ui%2Fimg%2Fbutton_arrow_down.pngR0i446R1R19R3R345R6tgoR8y44:flixel%2Fflixel-ui%2Fxml%2Fdefault_popup.xmlR0i1848R1R10R3R346R6tgoR8y53:flixel%2Fflixel-ui%2Fxml%2Fdefault_loading_screen.xmlR0i1953R1R10R3R347R6tgoR8y39:flixel%2Fflixel-ui%2Fxml%2Fdefaults.xmlR0i1263R1R10R3R348R6tgh","rootPath":null,"version":2,"libraryArgs":[],"libraryType":null}';
		manifest = AssetManifest.parse (data, rootPath);
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("default", library);
		

		library = Assets.getLibrary ("videos");
		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("videos");
		library = Assets.getLibrary ("default");
		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("default");
		

		#end

	}


}


#if kha

null

#else

#if !display
#if flash

@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_offsetsong_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_music_freakymenu_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_weeks_week5_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_weeks_week4_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_weeks_week3_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_weeks_week2_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_weeks_week1_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_weeks_weeklist_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_weeks_week6_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_weeks_tutorial_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_ui_butt_graph0001_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_ui_butt_graph0002_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_ui_butt_graph0003_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_ui_butt_graph0004_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_ui_butt_graph0005_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_hugew_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_tutorial_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week5_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week4_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week6_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menu_tracks_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_pixelui_num7_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_pixelui_date_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_pixelui_num1_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_pixelui_good_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_pixelui_num6_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_pixelui_sick_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_pixelui_set_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_pixelui_num0_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_pixelui_note_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_pixelui_num8_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_pixelui_combo_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_pixelui_num5_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_pixelui_num3_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_pixelui_shit_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_pixelui_hurtnote_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_pixelui_num9_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_pixelui_ready_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_pixelui_num4_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_pixelui_hurtnote_assetsends_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_pixelui_note_assetsends_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_pixelui_bad_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_pixelui_num2_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menudifficulties_easy_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menudifficulties_normal_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menudifficulties_hard_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_dad_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_spooky_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_dad_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_dad_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_spooky_kids_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_parents_christmas_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_spooky_kids_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_bf_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_bf_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_pico_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_pico_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_mom_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_bf_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_senpai_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_parents_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_parents_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_mom_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_mom_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_gf_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_senpai_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_gf_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_senpai_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_gf_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_pico_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menubg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num4_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num5_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num7_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num6_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_hurtnotesplashes_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_hurtnotesplashes_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menubackgrounds_menu_halloween_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menubackgrounds_menu_philly_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menubackgrounds_menu_christmas_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menubackgrounds_menu_stage_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menubackgrounds_menu_limo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menubackgrounds_menu_school_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_checkboxanim_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_checkboxanim_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_gfdancetitle_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_gfdancetitle_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_newgrounds_logo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num0_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_chart_quant_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_achievementgrid_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_chart_quant_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_note_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_lockedachievement_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_note_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_dialogue_bf_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_dialogue_gf_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_gfdancetitle_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_alphabet_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_alphabet_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_notesplashes_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_notesplashes_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_logo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menubgmagenta_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_gf_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_pico_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_face_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_dad_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_tankman_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_parents_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_bf_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_spooky_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_spirit_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_senpai_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_monster_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_bf_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_mom_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_bf_old_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_logobumpin_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_logobumpin_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num8_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_num9_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menubgblue_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_hurtnote_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_donate_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_donate_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_mods_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_mods_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_options_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_options_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_credits_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_credits_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_story_mode_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_story_mode_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_awards_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_freeplay_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_freeplay_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_awards_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_hahadumb_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_hurtnote_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_boyfriend_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_characters_boyfriend_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_unknownmod_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_credits_ninjamuffin99_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_credits_iflicky_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_credits_kawaisprite_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_credits_bb_panzu_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_credits_keoiki_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_credits_gedehari_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_credits_shubs_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_credits_discord_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_credits_polybiusproxy_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_credits_evilsk8r_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_credits_riveroaken_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_credits_shadowmario_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_credits_phantomarcade_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_cry_about_it_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_funkay_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_titleenter_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_menudesat_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_titleenter_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_stages_mallevil_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_stages_limo_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_stages_spooky_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_stages_schoolevil_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_stages_philly_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_stages_school_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_stages_stage_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_stages_mall_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_intro1_pixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_cancelmenu_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_confirmmenu_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_intro3_pixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_introgo_pixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_scrollmenu_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_secretsound_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_sounds_intro2_pixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_characters_pico_player_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_characters_bf_pixel_dead_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_characters_bf_pixel_opponent_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_characters_dad_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_characters_spooky_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_characters_bf_car_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_characters_monster_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_characters_gf_pixel_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_characters_parents_christmas_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_characters_spirit_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_characters_bf_christmas_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_characters_bf_pixel_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_characters_monster_christmas_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_characters_mom_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_characters_bf_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_characters_senpai_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_characters_senpai_angry_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_characters_gf_christmas_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_characters_gf_car_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_characters_mom_car_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_characters_gf_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_characters_pico_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_data_goes_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_roses_events_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_roses_rosesdialogue_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_roses_roses_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_roses_roses_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_roses_roses_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_freeplaycolors_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_eggnog_events_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_eggnog_eggnog_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_eggnog_eggnog_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_eggnog_eggnog_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_events_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_tutorial_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_tutorial_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_tutorial_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_main_view_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_high_events_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_high_high_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_high_high_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_high_high_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_thorns_thornsdialogue_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_thorns_events_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_thorns_thorns_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_thorns_thorns_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_thorns_thorns_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_test_test_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_spookeez_spookeez_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_spookeez_spookeez_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_spookeez_spookeez_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_introtext_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_ridge_ridge_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_specialthanks_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_fresh_events_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_fresh_fresh_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_fresh_fresh_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_fresh_fresh_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_pico_pico_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_pico_pico_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_pico_pico_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_philly_nice_events_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_philly_nice_philly_nice_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_philly_nice_philly_nice_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_philly_nice_philly_nice_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_stagelist_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_cocoa_cocoa_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_cocoa_cocoa_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_cocoa_events_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_cocoa_cocoa_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_senpai_senpai_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_senpai_senpai_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_senpai_senpaidialogue_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_senpai_senpai_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_smash_smash_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_satin_panties_events_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_satin_panties_satin_panties_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_satin_panties_satin_panties_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_satin_panties_satin_panties_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_winter_horrorland_events_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_winter_horrorland_winter_horrorland_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_winter_horrorland_winter_horrorland_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_winter_horrorland_winter_horrorland_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_south_south_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_south_south_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_south_south_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_milf_events_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_milf_milf_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_milf_milf_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_milf_milf_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_bopeebo_bopeebo_boobs_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_bopeebo_events_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_bopeebo_bopeebo_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_bopeebo_bopeebo_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_bopeebo_bopeebo_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_characterlist_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_monster_monster_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_monster_monster_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_monster_monster_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_blammed_blammed_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_blammed_events_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_blammed_blammed_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_blammed_blammed_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_dad_battle_dad_battle_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_dad_battle_dad_battle_hard_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_data_dad_battle_dad_battle_easy_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_videos_put_your_videos_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_roses_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_roses_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_eggnog_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_eggnog_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_tutorial_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_high_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_high_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_thorns_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_thorns_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_test_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_test_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_spookeez_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_spookeez_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_fresh_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_fresh_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_pico_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_pico_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_philly_nice_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_philly_nice_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_cocoa_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_cocoa_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_senpai_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_senpai_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_satin_panties_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_satin_panties_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_winter_horrorland_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_winter_horrorland_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_south_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_south_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_milf_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_milf_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_bopeebo_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_bopeebo_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_monster_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_monster_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_blammed_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_blammed_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_dad_battle_inst_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_songs_dad_battle_voices_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_music_breakfast_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_music_gameoverend_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_music_gameover_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_stage_light_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_good_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_shit_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_combo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebtrees_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebstreet_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebtrees_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebschool_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebsky_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_stagecurtains_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_bflol_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_bflol_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_pauseui_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_pauseui_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_pausebg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_ready_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_set_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_dialogue_bf_dialogue_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_dialogue_bf_dialogue_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_dialogue_gf_dialogue_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_dialogue_gf_dialogue_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_eventarrow_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_timebar_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_healthbar_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_go_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_lkimg_lk1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_lkimg_lk1_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_stagefront_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_speech_bubble_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_speech_bubble_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_stageback_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_sick_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_senpai_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_senpai_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfcar_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfcar_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_mom_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_mom_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfchristmas_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfchristmas_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfpixel_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfpixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_spirit_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_pico_fnf_assetss_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfpixelsdead_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfpixelsdead_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_pico_fnf_assetss_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfchristmas_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfchristmas_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_spooky_kids_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_spooky_kids_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfpixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfpixel_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_mom_dad_christmas_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_mom_dad_christmas_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_spirit_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_monster_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_monster_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_monsterchristmas_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_momcar_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_momcar_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_monsterchristmas_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfcar_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gf_assets_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfcar_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gf_assets_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_daddy_dearest_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_daddy_dearest_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_bad_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_grafix_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_images_images_go_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_3_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_2_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_1_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_4_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro2_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_clicktext_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro3_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_metronome_tick_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro1_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_angry_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_fnf_loss_sfx_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_dialogue_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_badnoise1_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_dialogueclose_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_badnoise2_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_introgo_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_badnoise3_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_missnote1_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_chartingtick_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_sounds_go_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_missnote3_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_missnote2_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_soundtest_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_angry_text_box_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week2_images_halloween_bg_low_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week2_images_halloween_bg_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week2_images_halloween_bg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week2_sounds_thunder_2_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week2_sounds_thunder_1_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week2_week2_stuff_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_street_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_train_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_city_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_win4_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_behindtrain_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_win1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_win0_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_win2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_win3_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_sky_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_sounds_train_passes_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week3_week3_stuff_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_dumb_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_fastcarlol_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_limodancer_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_limodancer_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_limosunset_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_bglimo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_bglimo_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_limodrive_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_limodrive_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_gore_stupidblood_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_gore_stupidblood_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_gore_metalpole_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_gore_coldheartkiller_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_gore_noooooo_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_images_gore_noooooo_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_sounds_carpass0_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_sounds_carpass1_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_sounds_dancerdeath_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week4_week4_stuff_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_bgescalator_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_upperbop_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_upperbop_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_eviltree_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_bottombop_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_bottombop_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_bgwalls_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_evilbg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_santa_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_santa_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_fgsnow_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_christmastree_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_evilsnow_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_sounds_lights_shut_off_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_sounds_lights_turn_on_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week5_week5_stuff_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_music_lunchbox_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_music_gameover_pixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_music_gameoverend_pixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_music_lunchboxscary_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_weebtreesback_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_hand_textbox_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_dialoguebox_pixel_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_dialoguebox_pixel_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_dialoguebox_senpaimad_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_dialoguebox_senpaimad_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_dialoguebox_evil_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_dialoguebox_evil_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_spiritfaceforward_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_evilschoolfg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_petals_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_petals_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bgghouls_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bgghouls_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_senpaicrazy_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_senpaicrazy_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_senpaiportrait_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_senpaiportrait_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_animatedevilschool_low_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bgfreaks_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bgfreaks_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bfportrait_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bfportrait_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_animatedevilschool_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_animatedevilschool_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_evilschoolbg_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_sounds_fnf_loss_sfx_pixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_sounds_pixeltext_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_sounds_senpai_dies_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_week6_week6_stuff_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__do_not_readme_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_vcr_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_fonts_go_here_txt extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_fonts_pixel_otf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_mp3 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_ui_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_images_logo_default_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_dropdown_mark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_plus_mark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_radio_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_left_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_thin_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tab_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_finger_big_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_invis_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_inset_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tooltip_arrow_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_right_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_radio_dot_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_check_box_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_toggle_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_up_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_minus_mark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_flat_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_swatch_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_light_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_hilight_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_check_mark_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tab_back_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_box_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_finger_small_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_down_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_default_popup_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_default_loading_screen_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_defaults_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_videos_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_songs_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_shared_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_week2_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_week3_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_week4_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_week5_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_week6_json extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_default_json extends null { }


#elseif (desktop || cpp)

@:keep @:file("assets/preload/music/offsetSong.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_offsetsong_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/preload/music/freakyMenu.mp3") @:noCompletion #if display private #end class __ASSET__assets_music_freakymenu_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/preload/weeks/week5.json") @:noCompletion #if display private #end class __ASSET__assets_weeks_week5_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/weeks/week4.json") @:noCompletion #if display private #end class __ASSET__assets_weeks_week4_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/weeks/week3.json") @:noCompletion #if display private #end class __ASSET__assets_weeks_week3_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/weeks/week2.json") @:noCompletion #if display private #end class __ASSET__assets_weeks_week2_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/weeks/week1.json") @:noCompletion #if display private #end class __ASSET__assets_weeks_week1_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/weeks/weekList.txt") @:noCompletion #if display private #end class __ASSET__assets_weeks_weeklist_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/weeks/week6.json") @:noCompletion #if display private #end class __ASSET__assets_weeks_week6_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/weeks/tutorial.json") @:noCompletion #if display private #end class __ASSET__assets_weeks_tutorial_json extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/ui/butt_graph0001.png") @:noCompletion #if display private #end class __ASSET__assets_images_ui_butt_graph0001_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/ui/butt_graph0002.png") @:noCompletion #if display private #end class __ASSET__assets_images_ui_butt_graph0002_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/ui/butt_graph0003.png") @:noCompletion #if display private #end class __ASSET__assets_images_ui_butt_graph0003_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/ui/butt_graph0004.png") @:noCompletion #if display private #end class __ASSET__assets_images_ui_butt_graph0004_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/ui/butt_graph0005.png") @:noCompletion #if display private #end class __ASSET__assets_images_ui_butt_graph0005_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/hugeW.png") @:noCompletion #if display private #end class __ASSET__assets_images_hugew_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/storymenu/tutorial.png") @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_tutorial_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/storymenu/week3.png") @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week3_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/storymenu/week2.png") @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week2_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/storymenu/week1.png") @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week1_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/storymenu/week5.png") @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week5_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/storymenu/week4.png") @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week4_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/storymenu/week6.png") @:noCompletion #if display private #end class __ASSET__assets_images_storymenu_week6_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/Menu_Tracks.png") @:noCompletion #if display private #end class __ASSET__assets_images_menu_tracks_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/pixelUI/num7-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_images_pixelui_num7_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/pixelUI/date-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_images_pixelui_date_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/pixelUI/num1-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_images_pixelui_num1_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/pixelUI/good-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_images_pixelui_good_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/pixelUI/num6-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_images_pixelui_num6_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/pixelUI/sick-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_images_pixelui_sick_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/pixelUI/set-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_images_pixelui_set_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/pixelUI/num0-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_images_pixelui_num0_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/pixelUI/NOTE_assets.png") @:noCompletion #if display private #end class __ASSET__assets_images_pixelui_note_assets_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/pixelUI/num8-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_images_pixelui_num8_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/pixelUI/combo-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_images_pixelui_combo_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/pixelUI/num5-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_images_pixelui_num5_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/pixelUI/num3-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_images_pixelui_num3_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/pixelUI/shit-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_images_pixelui_shit_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/pixelUI/HURTNOTE_assets.png") @:noCompletion #if display private #end class __ASSET__assets_images_pixelui_hurtnote_assets_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/pixelUI/num9-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_images_pixelui_num9_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/pixelUI/ready-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_images_pixelui_ready_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/pixelUI/num4-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_images_pixelui_num4_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/pixelUI/HURTNOTE_assetsENDS.png") @:noCompletion #if display private #end class __ASSET__assets_images_pixelui_hurtnote_assetsends_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/pixelUI/NOTE_assetsENDS.png") @:noCompletion #if display private #end class __ASSET__assets_images_pixelui_note_assetsends_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/pixelUI/bad-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_images_pixelui_bad_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/pixelUI/num2-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_images_pixelui_num2_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/menudifficulties/easy.png") @:noCompletion #if display private #end class __ASSET__assets_images_menudifficulties_easy_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/menudifficulties/normal.png") @:noCompletion #if display private #end class __ASSET__assets_images_menudifficulties_normal_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/menudifficulties/hard.png") @:noCompletion #if display private #end class __ASSET__assets_images_menudifficulties_hard_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/menucharacters/dad.json") @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_dad_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/images/menucharacters/spooky.json") @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_spooky_json extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/menucharacters/Menu_Dad.png") @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_dad_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/menucharacters/Menu_Dad.xml") @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_dad_xml extends haxe.io.Bytes {}
@:keep @:file("assets/preload/images/menucharacters/Menu_Spooky_Kids.xml") @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_spooky_kids_xml extends haxe.io.Bytes {}
@:keep @:file("assets/preload/images/menucharacters/parents-christmas.json") @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_parents_christmas_json extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/menucharacters/Menu_Spooky_Kids.png") @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_spooky_kids_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/menucharacters/Menu_BF.png") @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_bf_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/menucharacters/Menu_BF.xml") @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_bf_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/menucharacters/Menu_Pico.png") @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_pico_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/menucharacters/Menu_Pico.xml") @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_pico_xml extends haxe.io.Bytes {}
@:keep @:file("assets/preload/images/menucharacters/mom.json") @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_mom_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/images/menucharacters/bf.json") @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_bf_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/images/menucharacters/senpai.json") @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_senpai_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/images/menucharacters/Menu_Parents.xml") @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_parents_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/menucharacters/Menu_Parents.png") @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_parents_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/menucharacters/Menu_Mom.xml") @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_mom_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/menucharacters/Menu_Mom.png") @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_mom_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/menucharacters/Menu_GF.png") @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_gf_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/menucharacters/Menu_Senpai.png") @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_senpai_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/menucharacters/Menu_GF.xml") @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_gf_xml extends haxe.io.Bytes {}
@:keep @:file("assets/preload/images/menucharacters/Menu_Senpai.xml") @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_menu_senpai_xml extends haxe.io.Bytes {}
@:keep @:file("assets/preload/images/menucharacters/gf.json") @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_gf_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/images/menucharacters/pico.json") @:noCompletion #if display private #end class __ASSET__assets_images_menucharacters_pico_json extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/menuBG.png") @:noCompletion #if display private #end class __ASSET__assets_images_menubg_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num4.png") @:noCompletion #if display private #end class __ASSET__assets_images_num4_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num5.png") @:noCompletion #if display private #end class __ASSET__assets_images_num5_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num7.png") @:noCompletion #if display private #end class __ASSET__assets_images_num7_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num6.png") @:noCompletion #if display private #end class __ASSET__assets_images_num6_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/HURTnoteSplashes.png") @:noCompletion #if display private #end class __ASSET__assets_images_hurtnotesplashes_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/HURTnoteSplashes.xml") @:noCompletion #if display private #end class __ASSET__assets_images_hurtnotesplashes_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/num2.png") @:noCompletion #if display private #end class __ASSET__assets_images_num2_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/menubackgrounds/menu_halloween.png") @:noCompletion #if display private #end class __ASSET__assets_images_menubackgrounds_menu_halloween_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/menubackgrounds/menu_philly.png") @:noCompletion #if display private #end class __ASSET__assets_images_menubackgrounds_menu_philly_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/menubackgrounds/menu_christmas.png") @:noCompletion #if display private #end class __ASSET__assets_images_menubackgrounds_menu_christmas_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/menubackgrounds/menu_stage.png") @:noCompletion #if display private #end class __ASSET__assets_images_menubackgrounds_menu_stage_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/menubackgrounds/menu_limo.png") @:noCompletion #if display private #end class __ASSET__assets_images_menubackgrounds_menu_limo_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/menubackgrounds/menu_school.png") @:noCompletion #if display private #end class __ASSET__assets_images_menubackgrounds_menu_school_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/checkboxanim.xml") @:noCompletion #if display private #end class __ASSET__assets_images_checkboxanim_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/checkboxanim.png") @:noCompletion #if display private #end class __ASSET__assets_images_checkboxanim_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num3.png") @:noCompletion #if display private #end class __ASSET__assets_images_num3_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/gfDanceTitle.xml") @:noCompletion #if display private #end class __ASSET__assets_images_gfdancetitle_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/num1.png") @:noCompletion #if display private #end class __ASSET__assets_images_num1_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/gfDanceTitle.png") @:noCompletion #if display private #end class __ASSET__assets_images_gfdancetitle_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/newgrounds_logo.png") @:noCompletion #if display private #end class __ASSET__assets_images_newgrounds_logo_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num0.png") @:noCompletion #if display private #end class __ASSET__assets_images_num0_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/chart_quant.png") @:noCompletion #if display private #end class __ASSET__assets_images_chart_quant_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/achievementgrid.png") @:noCompletion #if display private #end class __ASSET__assets_images_achievementgrid_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/chart_quant.xml") @:noCompletion #if display private #end class __ASSET__assets_images_chart_quant_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/NOTE_assets.png") @:noCompletion #if display private #end class __ASSET__assets_images_note_assets_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/lockedachievement.png") @:noCompletion #if display private #end class __ASSET__assets_images_lockedachievement_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/NOTE_assets.xml") @:noCompletion #if display private #end class __ASSET__assets_images_note_assets_xml extends haxe.io.Bytes {}
@:keep @:file("assets/preload/images/dialogue/bf.json") @:noCompletion #if display private #end class __ASSET__assets_images_dialogue_bf_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/images/dialogue/gf.json") @:noCompletion #if display private #end class __ASSET__assets_images_dialogue_gf_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/images/gfDanceTitle.json") @:noCompletion #if display private #end class __ASSET__assets_images_gfdancetitle_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/images/alphabet.xml") @:noCompletion #if display private #end class __ASSET__assets_images_alphabet_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/alphabet.png") @:noCompletion #if display private #end class __ASSET__assets_images_alphabet_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/noteSplashes.xml") @:noCompletion #if display private #end class __ASSET__assets_images_notesplashes_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/noteSplashes.png") @:noCompletion #if display private #end class __ASSET__assets_images_notesplashes_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/logo.png") @:noCompletion #if display private #end class __ASSET__assets_images_logo_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/menuBGMagenta.png") @:noCompletion #if display private #end class __ASSET__assets_images_menubgmagenta_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/icons/icon-gf.png") @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_gf_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/icons/icon-pico.png") @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_pico_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/icons/icon-face.png") @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_face_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/icons/icon-dad.png") @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_dad_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/icons/icon-tankman.png") @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_tankman_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/icons/icon-parents.png") @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_parents_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/icons/icon-bf-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_bf_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/icons/icon-spooky.png") @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_spooky_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/icons/icon-spirit-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_spirit_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/icons/icon-senpai-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_senpai_pixel_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/icons/icon-monster.png") @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_monster_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/icons/icon-bf.png") @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_bf_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/icons/icon-mom.png") @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_mom_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/icons/icon-bf-old.png") @:noCompletion #if display private #end class __ASSET__assets_images_icons_icon_bf_old_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/logoBumpin.png") @:noCompletion #if display private #end class __ASSET__assets_images_logobumpin_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/logoBumpin.xml") @:noCompletion #if display private #end class __ASSET__assets_images_logobumpin_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/num8.png") @:noCompletion #if display private #end class __ASSET__assets_images_num8_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/num9.png") @:noCompletion #if display private #end class __ASSET__assets_images_num9_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/campaign_menu_UI_assets.png") @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/campaign_menu_UI_assets.xml") @:noCompletion #if display private #end class __ASSET__assets_images_campaign_menu_ui_assets_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/menuBGBlue.png") @:noCompletion #if display private #end class __ASSET__assets_images_menubgblue_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/HURTNOTE_assets.xml") @:noCompletion #if display private #end class __ASSET__assets_images_hurtnote_assets_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/mainmenu/menu_donate.png") @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_donate_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/mainmenu/menu_donate.xml") @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_donate_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/mainmenu/menu_mods.png") @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_mods_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/mainmenu/menu_mods.xml") @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_mods_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/mainmenu/menu_options.png") @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_options_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/mainmenu/menu_options.xml") @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_options_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/mainmenu/menu_credits.png") @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_credits_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/mainmenu/menu_credits.xml") @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_credits_xml extends haxe.io.Bytes {}
@:keep @:file("assets/preload/images/mainmenu/menu_story_mode.xml") @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_story_mode_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/mainmenu/menu_story_mode.png") @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_story_mode_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/mainmenu/menu_awards.png") @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_awards_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/mainmenu/menu_freeplay.png") @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_freeplay_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/mainmenu/menu_freeplay.xml") @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_freeplay_xml extends haxe.io.Bytes {}
@:keep @:file("assets/preload/images/mainmenu/menu_awards.xml") @:noCompletion #if display private #end class __ASSET__assets_images_mainmenu_menu_awards_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/hahadumb.png") @:noCompletion #if display private #end class __ASSET__assets_images_hahadumb_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/HURTNOTE_assets.png") @:noCompletion #if display private #end class __ASSET__assets_images_hurtnote_assets_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/characters/BOYFRIEND.png") @:noCompletion #if display private #end class __ASSET__assets_images_characters_boyfriend_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/characters/BOYFRIEND.xml") @:noCompletion #if display private #end class __ASSET__assets_images_characters_boyfriend_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/unknownMod.png") @:noCompletion #if display private #end class __ASSET__assets_images_unknownmod_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/credits/ninjamuffin99.png") @:noCompletion #if display private #end class __ASSET__assets_images_credits_ninjamuffin99_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/credits/iflicky.png") @:noCompletion #if display private #end class __ASSET__assets_images_credits_iflicky_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/credits/kawaisprite.png") @:noCompletion #if display private #end class __ASSET__assets_images_credits_kawaisprite_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/credits/bb-panzu.png") @:noCompletion #if display private #end class __ASSET__assets_images_credits_bb_panzu_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/credits/keoiki.png") @:noCompletion #if display private #end class __ASSET__assets_images_credits_keoiki_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/credits/gedehari.png") @:noCompletion #if display private #end class __ASSET__assets_images_credits_gedehari_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/credits/shubs.png") @:noCompletion #if display private #end class __ASSET__assets_images_credits_shubs_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/credits/discord.png") @:noCompletion #if display private #end class __ASSET__assets_images_credits_discord_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/credits/polybiusproxy.png") @:noCompletion #if display private #end class __ASSET__assets_images_credits_polybiusproxy_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/credits/evilsk8r.png") @:noCompletion #if display private #end class __ASSET__assets_images_credits_evilsk8r_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/credits/riveroaken.png") @:noCompletion #if display private #end class __ASSET__assets_images_credits_riveroaken_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/credits/shadowmario.png") @:noCompletion #if display private #end class __ASSET__assets_images_credits_shadowmario_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/credits/phantomarcade.png") @:noCompletion #if display private #end class __ASSET__assets_images_credits_phantomarcade_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/cry_about_it.png") @:noCompletion #if display private #end class __ASSET__assets_images_cry_about_it_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/funkay.png") @:noCompletion #if display private #end class __ASSET__assets_images_funkay_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/images/titleEnter.xml") @:noCompletion #if display private #end class __ASSET__assets_images_titleenter_xml extends haxe.io.Bytes {}
@:keep @:image("assets/preload/images/menuDesat.png") @:noCompletion #if display private #end class __ASSET__assets_images_menudesat_png extends lime.graphics.Image {}
@:keep @:image("assets/preload/images/titleEnter.png") @:noCompletion #if display private #end class __ASSET__assets_images_titleenter_png extends lime.graphics.Image {}
@:keep @:file("assets/preload/stages/mallEvil.json") @:noCompletion #if display private #end class __ASSET__assets_stages_mallevil_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/stages/limo.json") @:noCompletion #if display private #end class __ASSET__assets_stages_limo_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/stages/spooky.json") @:noCompletion #if display private #end class __ASSET__assets_stages_spooky_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/stages/schoolEvil.json") @:noCompletion #if display private #end class __ASSET__assets_stages_schoolevil_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/stages/philly.json") @:noCompletion #if display private #end class __ASSET__assets_stages_philly_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/stages/school.json") @:noCompletion #if display private #end class __ASSET__assets_stages_school_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/stages/stage.json") @:noCompletion #if display private #end class __ASSET__assets_stages_stage_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/stages/mall.json") @:noCompletion #if display private #end class __ASSET__assets_stages_mall_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/sounds/intro1-pixel.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_intro1_pixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/preload/sounds/cancelMenu.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_cancelmenu_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/preload/sounds/confirmMenu.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_confirmmenu_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/preload/sounds/intro3-pixel.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_intro3_pixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/preload/sounds/introGo-pixel.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_introgo_pixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/preload/sounds/scrollMenu.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_scrollmenu_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/preload/sounds/secretSound.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_secretsound_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/preload/sounds/intro2-pixel.mp3") @:noCompletion #if display private #end class __ASSET__assets_sounds_intro2_pixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/preload/characters/pico-player.json") @:noCompletion #if display private #end class __ASSET__assets_characters_pico_player_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/characters/bf-pixel-dead.json") @:noCompletion #if display private #end class __ASSET__assets_characters_bf_pixel_dead_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/characters/bf-pixel-opponent.json") @:noCompletion #if display private #end class __ASSET__assets_characters_bf_pixel_opponent_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/characters/dad.json") @:noCompletion #if display private #end class __ASSET__assets_characters_dad_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/characters/spooky.json") @:noCompletion #if display private #end class __ASSET__assets_characters_spooky_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/characters/bf-car.json") @:noCompletion #if display private #end class __ASSET__assets_characters_bf_car_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/characters/monster.json") @:noCompletion #if display private #end class __ASSET__assets_characters_monster_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/characters/gf-pixel.json") @:noCompletion #if display private #end class __ASSET__assets_characters_gf_pixel_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/characters/parents-christmas.json") @:noCompletion #if display private #end class __ASSET__assets_characters_parents_christmas_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/characters/spirit.json") @:noCompletion #if display private #end class __ASSET__assets_characters_spirit_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/characters/bf-christmas.json") @:noCompletion #if display private #end class __ASSET__assets_characters_bf_christmas_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/characters/bf-pixel.json") @:noCompletion #if display private #end class __ASSET__assets_characters_bf_pixel_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/characters/monster-christmas.json") @:noCompletion #if display private #end class __ASSET__assets_characters_monster_christmas_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/characters/mom.json") @:noCompletion #if display private #end class __ASSET__assets_characters_mom_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/characters/bf.json") @:noCompletion #if display private #end class __ASSET__assets_characters_bf_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/characters/senpai.json") @:noCompletion #if display private #end class __ASSET__assets_characters_senpai_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/characters/senpai-angry.json") @:noCompletion #if display private #end class __ASSET__assets_characters_senpai_angry_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/characters/gf-christmas.json") @:noCompletion #if display private #end class __ASSET__assets_characters_gf_christmas_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/characters/gf-car.json") @:noCompletion #if display private #end class __ASSET__assets_characters_gf_car_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/characters/mom-car.json") @:noCompletion #if display private #end class __ASSET__assets_characters_mom_car_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/characters/gf.json") @:noCompletion #if display private #end class __ASSET__assets_characters_gf_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/characters/pico.json") @:noCompletion #if display private #end class __ASSET__assets_characters_pico_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/data-goes-here.txt") @:noCompletion #if display private #end class __ASSET__assets_data_data_goes_here_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/roses/events.json") @:noCompletion #if display private #end class __ASSET__assets_data_roses_events_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/roses/rosesDialogue.txt") @:noCompletion #if display private #end class __ASSET__assets_data_roses_rosesdialogue_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/roses/roses-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_roses_roses_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/roses/roses-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_roses_roses_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/roses/roses.json") @:noCompletion #if display private #end class __ASSET__assets_data_roses_roses_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/freeplayColors.txt") @:noCompletion #if display private #end class __ASSET__assets_data_freeplaycolors_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/eggnog/events.json") @:noCompletion #if display private #end class __ASSET__assets_data_eggnog_events_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/eggnog/eggnog-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_eggnog_eggnog_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/eggnog/eggnog-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_eggnog_eggnog_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/eggnog/eggnog.json") @:noCompletion #if display private #end class __ASSET__assets_data_eggnog_eggnog_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/tutorial/events.json") @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_events_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/tutorial/tutorial-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_tutorial_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/tutorial/tutorial-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_tutorial_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/tutorial/tutorial.json") @:noCompletion #if display private #end class __ASSET__assets_data_tutorial_tutorial_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/main-view.xml") @:noCompletion #if display private #end class __ASSET__assets_data_main_view_xml extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/high/events.json") @:noCompletion #if display private #end class __ASSET__assets_data_high_events_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/high/high-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_high_high_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/high/high-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_high_high_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/high/high.json") @:noCompletion #if display private #end class __ASSET__assets_data_high_high_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/thorns/thornsDialogue.txt") @:noCompletion #if display private #end class __ASSET__assets_data_thorns_thornsdialogue_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/thorns/events.json") @:noCompletion #if display private #end class __ASSET__assets_data_thorns_events_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/thorns/thorns-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_thorns_thorns_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/thorns/thorns-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_thorns_thorns_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/thorns/thorns.json") @:noCompletion #if display private #end class __ASSET__assets_data_thorns_thorns_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/test/test.json") @:noCompletion #if display private #end class __ASSET__assets_data_test_test_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/spookeez/spookeez-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_spookeez_spookeez_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/spookeez/spookeez-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_spookeez_spookeez_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/spookeez/spookeez.json") @:noCompletion #if display private #end class __ASSET__assets_data_spookeez_spookeez_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/introText.txt") @:noCompletion #if display private #end class __ASSET__assets_data_introtext_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/ridge/ridge.json") @:noCompletion #if display private #end class __ASSET__assets_data_ridge_ridge_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/specialThanks.txt") @:noCompletion #if display private #end class __ASSET__assets_data_specialthanks_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/fresh/events.json") @:noCompletion #if display private #end class __ASSET__assets_data_fresh_events_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/fresh/fresh-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_fresh_fresh_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/fresh/fresh-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_fresh_fresh_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/fresh/fresh.json") @:noCompletion #if display private #end class __ASSET__assets_data_fresh_fresh_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/pico/pico-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_pico_pico_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/pico/pico-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_pico_pico_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/pico/pico.json") @:noCompletion #if display private #end class __ASSET__assets_data_pico_pico_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/philly-nice/events.json") @:noCompletion #if display private #end class __ASSET__assets_data_philly_nice_events_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/philly-nice/philly-nice-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_philly_nice_philly_nice_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/philly-nice/philly-nice-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_philly_nice_philly_nice_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/philly-nice/philly-nice.json") @:noCompletion #if display private #end class __ASSET__assets_data_philly_nice_philly_nice_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/stageList.txt") @:noCompletion #if display private #end class __ASSET__assets_data_stagelist_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/cocoa/cocoa-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_cocoa_cocoa_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/cocoa/cocoa-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_cocoa_cocoa_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/cocoa/events.json") @:noCompletion #if display private #end class __ASSET__assets_data_cocoa_events_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/cocoa/cocoa.json") @:noCompletion #if display private #end class __ASSET__assets_data_cocoa_cocoa_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/senpai/senpai-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_senpai_senpai_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/senpai/senpai-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_senpai_senpai_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/senpai/senpaiDialogue.txt") @:noCompletion #if display private #end class __ASSET__assets_data_senpai_senpaidialogue_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/senpai/senpai.json") @:noCompletion #if display private #end class __ASSET__assets_data_senpai_senpai_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/smash/smash.json") @:noCompletion #if display private #end class __ASSET__assets_data_smash_smash_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/satin-panties/events.json") @:noCompletion #if display private #end class __ASSET__assets_data_satin_panties_events_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/satin-panties/satin-panties-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_satin_panties_satin_panties_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/satin-panties/satin-panties-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_satin_panties_satin_panties_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/satin-panties/satin-panties.json") @:noCompletion #if display private #end class __ASSET__assets_data_satin_panties_satin_panties_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/winter-horrorland/events.json") @:noCompletion #if display private #end class __ASSET__assets_data_winter_horrorland_events_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/winter-horrorland/winter-horrorland-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_winter_horrorland_winter_horrorland_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/winter-horrorland/winter-horrorland-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_winter_horrorland_winter_horrorland_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/winter-horrorland/winter-horrorland.json") @:noCompletion #if display private #end class __ASSET__assets_data_winter_horrorland_winter_horrorland_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/south/south-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_south_south_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/south/south-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_south_south_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/south/south.json") @:noCompletion #if display private #end class __ASSET__assets_data_south_south_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/milf/events.json") @:noCompletion #if display private #end class __ASSET__assets_data_milf_events_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/milf/milf-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_milf_milf_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/milf/milf-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_milf_milf_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/milf/milf.json") @:noCompletion #if display private #end class __ASSET__assets_data_milf_milf_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/bopeebo/bopeebo-boobs.json") @:noCompletion #if display private #end class __ASSET__assets_data_bopeebo_bopeebo_boobs_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/bopeebo/events.json") @:noCompletion #if display private #end class __ASSET__assets_data_bopeebo_events_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/bopeebo/bopeebo.json") @:noCompletion #if display private #end class __ASSET__assets_data_bopeebo_bopeebo_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/bopeebo/bopeebo-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_bopeebo_bopeebo_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/bopeebo/bopeebo-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_bopeebo_bopeebo_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/characterList.txt") @:noCompletion #if display private #end class __ASSET__assets_data_characterlist_txt extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/monster/monster.json") @:noCompletion #if display private #end class __ASSET__assets_data_monster_monster_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/monster/monster-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_monster_monster_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/monster/monster-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_monster_monster_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/blammed/blammed.json") @:noCompletion #if display private #end class __ASSET__assets_data_blammed_blammed_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/blammed/events.json") @:noCompletion #if display private #end class __ASSET__assets_data_blammed_events_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/blammed/blammed-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_blammed_blammed_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/blammed/blammed-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_blammed_blammed_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/dad-battle/dad-battle.json") @:noCompletion #if display private #end class __ASSET__assets_data_dad_battle_dad_battle_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/dad-battle/dad-battle-hard.json") @:noCompletion #if display private #end class __ASSET__assets_data_dad_battle_dad_battle_hard_json extends haxe.io.Bytes {}
@:keep @:file("assets/preload/data/dad-battle/dad-battle-easy.json") @:noCompletion #if display private #end class __ASSET__assets_data_dad_battle_dad_battle_easy_json extends haxe.io.Bytes {}
@:keep @:file("assets/videos/put-your-videos-here.txt") @:noCompletion #if display private #end class __ASSET__assets_videos_put_your_videos_here_txt extends haxe.io.Bytes {}
@:keep @:file("assets/songs/roses/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_roses_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/roses/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_roses_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/eggnog/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_eggnog_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/eggnog/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_eggnog_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/tutorial/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_tutorial_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/high/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_high_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/high/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_high_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/thorns/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_thorns_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/thorns/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_thorns_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/test/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_test_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/test/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_test_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/spookeez/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_spookeez_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/spookeez/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_spookeez_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/fresh/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_fresh_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/fresh/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_fresh_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/pico/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_pico_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/pico/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_pico_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/philly-nice/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_philly_nice_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/philly-nice/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_philly_nice_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/cocoa/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_cocoa_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/cocoa/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_cocoa_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/senpai/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_senpai_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/senpai/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_senpai_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/satin-panties/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_satin_panties_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/satin-panties/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_satin_panties_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/winter-horrorland/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_winter_horrorland_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/winter-horrorland/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_winter_horrorland_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/south/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_south_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/south/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_south_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/milf/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_milf_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/milf/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_milf_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/bopeebo/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_bopeebo_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/bopeebo/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_bopeebo_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/monster/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_monster_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/monster/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_monster_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/blammed/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_blammed_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/blammed/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_blammed_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/dad-battle/Inst.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_dad_battle_inst_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/songs/dad-battle/Voices.mp3") @:noCompletion #if display private #end class __ASSET__assets_songs_dad_battle_voices_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/music/breakfast.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_music_breakfast_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/music/gameOverEnd.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_music_gameoverend_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/music/gameOver.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_music_gameover_mp3 extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/stage_light.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_stage_light_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/good.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_good_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/shit.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_shit_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/combo.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_combo_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/weebTrees.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebtrees_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/weebStreet.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebstreet_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/weeb/weebTrees.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebtrees_txt extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/weeb/weebSchool.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebschool_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/weeb/weebSky.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_weeb_weebsky_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/stagecurtains.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_stagecurtains_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/pauseAlt/bfLol.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_bflol_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/pauseAlt/bfLol.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_bflol_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/pauseAlt/pauseUI.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_pauseui_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/pauseAlt/pauseUI.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_pauseui_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/pauseAlt/pauseBG.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_pausealt_pausebg_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/ready.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_ready_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/set.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_set_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/dialogue/BF_Dialogue.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_dialogue_bf_dialogue_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/dialogue/BF_Dialogue.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_dialogue_bf_dialogue_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/dialogue/GF_Dialogue.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_dialogue_gf_dialogue_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/dialogue/GF_Dialogue.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_dialogue_gf_dialogue_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/eventArrow.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_eventarrow_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/timeBar.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_timebar_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/healthBar.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_healthbar_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/go.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_go_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/lkimg/lk1.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_lkimg_lk1_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/lkimg/lk1.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_lkimg_lk1_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/stagefront.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_stagefront_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/speech_bubble.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_speech_bubble_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/speech_bubble.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_speech_bubble_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/stageback.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_stageback_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/sick.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_sick_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/characters/senpai.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_senpai_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/senpai.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_senpai_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/bfCar.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfcar_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/bfCar.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfcar_xml extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/Mom_Assets.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_mom_assets_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/Mom_Assets.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_mom_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/bfChristmas.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfchristmas_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/bfChristmas.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfchristmas_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/gfPixel.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfpixel_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/gfPixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfpixel_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/characters/spirit.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_spirit_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/characters/Pico_FNF_assetss.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_pico_fnf_assetss_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/bfPixelsDEAD.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfpixelsdead_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/bfPixelsDEAD.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfpixelsdead_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/Pico_FNF_assetss.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_pico_fnf_assetss_xml extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/gfChristmas.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfchristmas_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/gfChristmas.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfchristmas_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/spooky_kids_assets.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_spooky_kids_assets_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/spooky_kids_assets.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_spooky_kids_assets_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/characters/bfPixel.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfpixel_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/bfPixel.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_bfpixel_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/mom_dad_christmas_assets.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_mom_dad_christmas_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/mom_dad_christmas_assets.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_mom_dad_christmas_assets_xml extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/spirit.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_spirit_txt extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/Monster_Assets.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_monster_assets_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/Monster_Assets.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_monster_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/monsterChristmas.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_monsterchristmas_xml extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/momCar.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_momcar_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/momCar.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_momcar_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/characters/monsterChristmas.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_monsterchristmas_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/characters/gfCar.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfcar_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/GF_assets.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gf_assets_xml extends haxe.io.Bytes {}
@:keep @:file("assets/shared/images/characters/gfCar.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gfcar_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/GF_assets.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_gf_assets_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/characters/DADDY_DEAREST.xml") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_daddy_dearest_xml extends haxe.io.Bytes {}
@:keep @:image("assets/shared/images/characters/DADDY_DEAREST.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_characters_daddy_dearest_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/bad.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_bad_png extends lime.graphics.Image {}
@:keep @:image("assets/shared/images/grafix.png") @:noCompletion #if display private #end class __ASSET__assets_shared_images_grafix_png extends lime.graphics.Image {}
@:keep @:file("assets/shared/images/images-go-here.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_images_images_go_here_txt extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/GF_3.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_3_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/GF_2.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_2_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/GF_1.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_1_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/GF_4.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_gf_4_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/intro2.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro2_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/clickText.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_clicktext_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/intro3.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro3_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/Metronome_Tick.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_metronome_tick_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/intro1.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_intro1_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/ANGRY.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_angry_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/fnf_loss_sfx.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_fnf_loss_sfx_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/dialogue.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_dialogue_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/badnoise1.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_badnoise1_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/dialogueClose.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_dialogueclose_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/badnoise2.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_badnoise2_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/introGo.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_introgo_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/badnoise3.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_badnoise3_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/missnote1.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_missnote1_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/ChartingTick.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_chartingtick_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/sounds-go-here.txt") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_sounds_go_here_txt extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/missnote3.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_missnote3_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/missnote2.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_missnote2_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/soundTest.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_soundtest_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/shared/sounds/ANGRY_TEXT_BOX.mp3") @:noCompletion #if display private #end class __ASSET__assets_shared_sounds_angry_text_box_mp3 extends haxe.io.Bytes {}
@:keep @:image("assets/week2/images/halloween_bg_low.png") @:noCompletion #if display private #end class __ASSET__assets_week2_images_halloween_bg_low_png extends lime.graphics.Image {}
@:keep @:file("assets/week2/images/halloween_bg.xml") @:noCompletion #if display private #end class __ASSET__assets_week2_images_halloween_bg_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week2/images/halloween_bg.png") @:noCompletion #if display private #end class __ASSET__assets_week2_images_halloween_bg_png extends lime.graphics.Image {}
@:keep @:file("assets/week2/sounds/thunder_2.mp3") @:noCompletion #if display private #end class __ASSET__assets_week2_sounds_thunder_2_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week2/sounds/thunder_1.mp3") @:noCompletion #if display private #end class __ASSET__assets_week2_sounds_thunder_1_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week2/week2_stuff_here.txt") @:noCompletion #if display private #end class __ASSET__assets_week2_week2_stuff_here_txt extends haxe.io.Bytes {}
@:keep @:image("assets/week3/images/philly/street.png") @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_street_png extends lime.graphics.Image {}
@:keep @:image("assets/week3/images/philly/train.png") @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_train_png extends lime.graphics.Image {}
@:keep @:image("assets/week3/images/philly/city.png") @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_city_png extends lime.graphics.Image {}
@:keep @:image("assets/week3/images/philly/win4.png") @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_win4_png extends lime.graphics.Image {}
@:keep @:image("assets/week3/images/philly/behindTrain.png") @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_behindtrain_png extends lime.graphics.Image {}
@:keep @:image("assets/week3/images/philly/win1.png") @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_win1_png extends lime.graphics.Image {}
@:keep @:image("assets/week3/images/philly/win0.png") @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_win0_png extends lime.graphics.Image {}
@:keep @:image("assets/week3/images/philly/win2.png") @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_win2_png extends lime.graphics.Image {}
@:keep @:image("assets/week3/images/philly/win3.png") @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_win3_png extends lime.graphics.Image {}
@:keep @:image("assets/week3/images/philly/sky.png") @:noCompletion #if display private #end class __ASSET__assets_week3_images_philly_sky_png extends lime.graphics.Image {}
@:keep @:file("assets/week3/sounds/train_passes.mp3") @:noCompletion #if display private #end class __ASSET__assets_week3_sounds_train_passes_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week3/week3_stuff_here.txt") @:noCompletion #if display private #end class __ASSET__assets_week3_week3_stuff_here_txt extends haxe.io.Bytes {}
@:keep @:image("assets/week4/images/limo/dumb.png") @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_dumb_png extends lime.graphics.Image {}
@:keep @:image("assets/week4/images/limo/fastCarLol.png") @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_fastcarlol_png extends lime.graphics.Image {}
@:keep @:file("assets/week4/images/limo/limoDancer.xml") @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_limodancer_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week4/images/limo/limoDancer.png") @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_limodancer_png extends lime.graphics.Image {}
@:keep @:image("assets/week4/images/limo/limoSunset.png") @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_limosunset_png extends lime.graphics.Image {}
@:keep @:image("assets/week4/images/limo/bgLimo.png") @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_bglimo_png extends lime.graphics.Image {}
@:keep @:file("assets/week4/images/limo/bgLimo.xml") @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_bglimo_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week4/images/limo/limoDrive.png") @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_limodrive_png extends lime.graphics.Image {}
@:keep @:file("assets/week4/images/limo/limoDrive.xml") @:noCompletion #if display private #end class __ASSET__assets_week4_images_limo_limodrive_xml extends haxe.io.Bytes {}
@:keep @:file("assets/week4/images/gore/stupidBlood.xml") @:noCompletion #if display private #end class __ASSET__assets_week4_images_gore_stupidblood_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week4/images/gore/stupidBlood.png") @:noCompletion #if display private #end class __ASSET__assets_week4_images_gore_stupidblood_png extends lime.graphics.Image {}
@:keep @:image("assets/week4/images/gore/metalPole.png") @:noCompletion #if display private #end class __ASSET__assets_week4_images_gore_metalpole_png extends lime.graphics.Image {}
@:keep @:image("assets/week4/images/gore/coldHeartKiller.png") @:noCompletion #if display private #end class __ASSET__assets_week4_images_gore_coldheartkiller_png extends lime.graphics.Image {}
@:keep @:image("assets/week4/images/gore/noooooo.png") @:noCompletion #if display private #end class __ASSET__assets_week4_images_gore_noooooo_png extends lime.graphics.Image {}
@:keep @:file("assets/week4/images/gore/noooooo.xml") @:noCompletion #if display private #end class __ASSET__assets_week4_images_gore_noooooo_xml extends haxe.io.Bytes {}
@:keep @:file("assets/week4/sounds/carPass0.mp3") @:noCompletion #if display private #end class __ASSET__assets_week4_sounds_carpass0_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week4/sounds/carPass1.mp3") @:noCompletion #if display private #end class __ASSET__assets_week4_sounds_carpass1_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week4/sounds/dancerdeath.mp3") @:noCompletion #if display private #end class __ASSET__assets_week4_sounds_dancerdeath_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week4/week4_stuff_here.txt") @:noCompletion #if display private #end class __ASSET__assets_week4_week4_stuff_here_txt extends haxe.io.Bytes {}
@:keep @:image("assets/week5/images/christmas/bgEscalator.png") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_bgescalator_png extends lime.graphics.Image {}
@:keep @:file("assets/week5/images/christmas/upperBop.xml") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_upperbop_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week5/images/christmas/upperBop.png") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_upperbop_png extends lime.graphics.Image {}
@:keep @:image("assets/week5/images/christmas/evilTree.png") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_eviltree_png extends lime.graphics.Image {}
@:keep @:image("assets/week5/images/christmas/bottomBop.png") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_bottombop_png extends lime.graphics.Image {}
@:keep @:file("assets/week5/images/christmas/bottomBop.xml") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_bottombop_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week5/images/christmas/bgWalls.png") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_bgwalls_png extends lime.graphics.Image {}
@:keep @:image("assets/week5/images/christmas/evilBG.png") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_evilbg_png extends lime.graphics.Image {}
@:keep @:file("assets/week5/images/christmas/santa.xml") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_santa_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week5/images/christmas/santa.png") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_santa_png extends lime.graphics.Image {}
@:keep @:image("assets/week5/images/christmas/fgSnow.png") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_fgsnow_png extends lime.graphics.Image {}
@:keep @:image("assets/week5/images/christmas/christmasTree.png") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_christmastree_png extends lime.graphics.Image {}
@:keep @:image("assets/week5/images/christmas/evilSnow.png") @:noCompletion #if display private #end class __ASSET__assets_week5_images_christmas_evilsnow_png extends lime.graphics.Image {}
@:keep @:file("assets/week5/sounds/Lights_Shut_off.mp3") @:noCompletion #if display private #end class __ASSET__assets_week5_sounds_lights_shut_off_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week5/sounds/Lights_Turn_On.mp3") @:noCompletion #if display private #end class __ASSET__assets_week5_sounds_lights_turn_on_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week5/week5_stuff_here.txt") @:noCompletion #if display private #end class __ASSET__assets_week5_week5_stuff_here_txt extends haxe.io.Bytes {}
@:keep @:file("assets/week6/music/Lunchbox.mp3") @:noCompletion #if display private #end class __ASSET__assets_week6_music_lunchbox_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week6/music/gameOver-pixel.mp3") @:noCompletion #if display private #end class __ASSET__assets_week6_music_gameover_pixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week6/music/gameOverEnd-pixel.mp3") @:noCompletion #if display private #end class __ASSET__assets_week6_music_gameoverend_pixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week6/music/LunchboxScary.mp3") @:noCompletion #if display private #end class __ASSET__assets_week6_music_lunchboxscary_mp3 extends haxe.io.Bytes {}
@:keep @:image("assets/week6/images/weeb/weebTreesBack.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_weebtreesback_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/pixelUI/hand_textbox.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_hand_textbox_png extends lime.graphics.Image {}
@:keep @:file("assets/week6/images/weeb/pixelUI/dialogueBox-pixel.xml") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_dialoguebox_pixel_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week6/images/weeb/pixelUI/dialogueBox-pixel.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_dialoguebox_pixel_png extends lime.graphics.Image {}
@:keep @:file("assets/week6/images/weeb/pixelUI/dialogueBox-senpaiMad.xml") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_dialoguebox_senpaimad_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week6/images/weeb/pixelUI/dialogueBox-senpaiMad.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_dialoguebox_senpaimad_png extends lime.graphics.Image {}
@:keep @:file("assets/week6/images/weeb/pixelUI/dialogueBox-evil.xml") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_dialoguebox_evil_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week6/images/weeb/pixelUI/dialogueBox-evil.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_pixelui_dialoguebox_evil_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/spiritFaceForward.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_spiritfaceforward_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/evilSchoolFG.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_evilschoolfg_png extends lime.graphics.Image {}
@:keep @:file("assets/week6/images/weeb/petals.xml") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_petals_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week6/images/weeb/petals.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_petals_png extends lime.graphics.Image {}
@:keep @:file("assets/week6/images/weeb/bgGhouls.xml") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bgghouls_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week6/images/weeb/bgGhouls.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bgghouls_png extends lime.graphics.Image {}
@:keep @:file("assets/week6/images/weeb/senpaiCrazy.xml") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_senpaicrazy_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week6/images/weeb/senpaiCrazy.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_senpaicrazy_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/senpaiPortrait.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_senpaiportrait_png extends lime.graphics.Image {}
@:keep @:file("assets/week6/images/weeb/senpaiPortrait.xml") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_senpaiportrait_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week6/images/weeb/animatedEvilSchool_low.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_animatedevilschool_low_png extends lime.graphics.Image {}
@:keep @:file("assets/week6/images/weeb/bgFreaks.xml") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bgfreaks_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week6/images/weeb/bgFreaks.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bgfreaks_png extends lime.graphics.Image {}
@:keep @:image("assets/week6/images/weeb/bfPortrait.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bfportrait_png extends lime.graphics.Image {}
@:keep @:file("assets/week6/images/weeb/bfPortrait.xml") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_bfportrait_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week6/images/weeb/animatedEvilSchool.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_animatedevilschool_png extends lime.graphics.Image {}
@:keep @:file("assets/week6/images/weeb/animatedEvilSchool.xml") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_animatedevilschool_xml extends haxe.io.Bytes {}
@:keep @:image("assets/week6/images/weeb/evilSchoolBG.png") @:noCompletion #if display private #end class __ASSET__assets_week6_images_weeb_evilschoolbg_png extends lime.graphics.Image {}
@:keep @:file("assets/week6/sounds/fnf_loss_sfx-pixel.mp3") @:noCompletion #if display private #end class __ASSET__assets_week6_sounds_fnf_loss_sfx_pixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week6/sounds/pixelText.mp3") @:noCompletion #if display private #end class __ASSET__assets_week6_sounds_pixeltext_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week6/sounds/Senpai_Dies.mp3") @:noCompletion #if display private #end class __ASSET__assets_week6_sounds_senpai_dies_mp3 extends haxe.io.Bytes {}
@:keep @:file("assets/week6/week6_stuff_here.txt") @:noCompletion #if display private #end class __ASSET__assets_week6_week6_stuff_here_txt extends haxe.io.Bytes {}
@:keep @:file("art/readme.txt") @:noCompletion #if display private #end class __ASSET__do_not_readme_txt extends haxe.io.Bytes {}
@:keep @:font("export/debug/html5/obj/webfont/vcr.ttf") @:noCompletion #if display private #end class __ASSET__assets_fonts_vcr_ttf extends lime.text.Font {}
@:keep @:file("assets/fonts/fonts-go-here.txt") @:noCompletion #if display private #end class __ASSET__assets_fonts_fonts_go_here_txt extends haxe.io.Bytes {}
@:keep @:font("export/debug/html5/obj/webfont/pixel.otf") @:noCompletion #if display private #end class __ASSET__assets_fonts_pixel_otf extends lime.text.Font {}
@:keep @:file("/Users/ljg/haxe/flixel/4,11,0/assets/sounds/flixel.mp3") @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_mp3 extends haxe.io.Bytes {}
@:keep @:file("/Users/ljg/haxe/flixel/4,11,0/assets/sounds/beep.mp3") @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_mp3 extends haxe.io.Bytes {}
@:keep @:file("/Users/ljg/haxe/flixel/4,11,0/assets/sounds/beep.ogg") @:noCompletion #if display private #end class __ASSET__flixel_sounds_beep_ogg extends haxe.io.Bytes {}
@:keep @:file("/Users/ljg/haxe/flixel/4,11,0/assets/sounds/flixel.ogg") @:noCompletion #if display private #end class __ASSET__flixel_sounds_flixel_ogg extends haxe.io.Bytes {}
@:keep @:font("export/debug/html5/obj/webfont/nokiafc22.ttf") @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font {}
@:keep @:font("export/debug/html5/obj/webfont/monsterrat.ttf") @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font {}
@:keep @:image("/Users/ljg/haxe/flixel/4,11,0/assets/images/ui/button.png") @:noCompletion #if display private #end class __ASSET__flixel_images_ui_button_png extends lime.graphics.Image {}
@:keep @:image("/Users/ljg/haxe/flixel/4,11,0/assets/images/logo/default.png") @:noCompletion #if display private #end class __ASSET__flixel_images_logo_default_png extends lime.graphics.Image {}
@:keep @:image("/Users/ljg/haxe/flixel-ui/2,4,0/assets/images/dropdown_mark.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_dropdown_mark_png extends lime.graphics.Image {}
@:keep @:image("/Users/ljg/haxe/flixel-ui/2,4,0/assets/images/plus_mark.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_plus_mark_png extends lime.graphics.Image {}
@:keep @:image("/Users/ljg/haxe/flixel-ui/2,4,0/assets/images/radio.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_radio_png extends lime.graphics.Image {}
@:keep @:image("/Users/ljg/haxe/flixel-ui/2,4,0/assets/images/button_arrow_left.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_left_png extends lime.graphics.Image {}
@:keep @:image("/Users/ljg/haxe/flixel-ui/2,4,0/assets/images/button_thin.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_thin_png extends lime.graphics.Image {}
@:keep @:image("/Users/ljg/haxe/flixel-ui/2,4,0/assets/images/tab.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tab_png extends lime.graphics.Image {}
@:keep @:image("/Users/ljg/haxe/flixel-ui/2,4,0/assets/images/finger_big.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_finger_big_png extends lime.graphics.Image {}
@:keep @:image("/Users/ljg/haxe/flixel-ui/2,4,0/assets/images/invis.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_invis_png extends lime.graphics.Image {}
@:keep @:image("/Users/ljg/haxe/flixel-ui/2,4,0/assets/images/chrome_inset.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_inset_png extends lime.graphics.Image {}
@:keep @:image("/Users/ljg/haxe/flixel-ui/2,4,0/assets/images/tooltip_arrow.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tooltip_arrow_png extends lime.graphics.Image {}
@:keep @:image("/Users/ljg/haxe/flixel-ui/2,4,0/assets/images/button_arrow_right.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_right_png extends lime.graphics.Image {}
@:keep @:image("/Users/ljg/haxe/flixel-ui/2,4,0/assets/images/radio_dot.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_radio_dot_png extends lime.graphics.Image {}
@:keep @:image("/Users/ljg/haxe/flixel-ui/2,4,0/assets/images/chrome.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_png extends lime.graphics.Image {}
@:keep @:image("/Users/ljg/haxe/flixel-ui/2,4,0/assets/images/check_box.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_check_box_png extends lime.graphics.Image {}
@:keep @:image("/Users/ljg/haxe/flixel-ui/2,4,0/assets/images/button_toggle.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_toggle_png extends lime.graphics.Image {}
@:keep @:image("/Users/ljg/haxe/flixel-ui/2,4,0/assets/images/button_arrow_up.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_up_png extends lime.graphics.Image {}
@:keep @:image("/Users/ljg/haxe/flixel-ui/2,4,0/assets/images/minus_mark.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_minus_mark_png extends lime.graphics.Image {}
@:keep @:image("/Users/ljg/haxe/flixel-ui/2,4,0/assets/images/chrome_flat.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_flat_png extends lime.graphics.Image {}
@:keep @:image("/Users/ljg/haxe/flixel-ui/2,4,0/assets/images/swatch.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_swatch_png extends lime.graphics.Image {}
@:keep @:image("/Users/ljg/haxe/flixel-ui/2,4,0/assets/images/chrome_light.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_chrome_light_png extends lime.graphics.Image {}
@:keep @:image("/Users/ljg/haxe/flixel-ui/2,4,0/assets/images/hilight.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_hilight_png extends lime.graphics.Image {}
@:keep @:image("/Users/ljg/haxe/flixel-ui/2,4,0/assets/images/check_mark.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_check_mark_png extends lime.graphics.Image {}
@:keep @:image("/Users/ljg/haxe/flixel-ui/2,4,0/assets/images/tab_back.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_tab_back_png extends lime.graphics.Image {}
@:keep @:image("/Users/ljg/haxe/flixel-ui/2,4,0/assets/images/box.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_box_png extends lime.graphics.Image {}
@:keep @:image("/Users/ljg/haxe/flixel-ui/2,4,0/assets/images/finger_small.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_finger_small_png extends lime.graphics.Image {}
@:keep @:image("/Users/ljg/haxe/flixel-ui/2,4,0/assets/images/button.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_png extends lime.graphics.Image {}
@:keep @:image("/Users/ljg/haxe/flixel-ui/2,4,0/assets/images/button_arrow_down.png") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_img_button_arrow_down_png extends lime.graphics.Image {}
@:keep @:file("/Users/ljg/haxe/flixel-ui/2,4,0/assets/xml/default_popup.xml") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_default_popup_xml extends haxe.io.Bytes {}
@:keep @:file("/Users/ljg/haxe/flixel-ui/2,4,0/assets/xml/default_loading_screen.xml") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_default_loading_screen_xml extends haxe.io.Bytes {}
@:keep @:file("/Users/ljg/haxe/flixel-ui/2,4,0/assets/xml/defaults.xml") @:noCompletion #if display private #end class __ASSET__flixel_flixel_ui_xml_defaults_xml extends haxe.io.Bytes {}
@:keep @:file("") @:noCompletion #if display private #end class __ASSET__manifest_default_json extends haxe.io.Bytes {}



#else

@:keep @:expose('__ASSET__assets_fonts_vcr_ttf') @:noCompletion #if display private #end class __ASSET__assets_fonts_vcr_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/vcr"; #else ascender = 1800; descender = 0; height = 2000; numGlyphs = 204; underlinePosition = -292; underlineThickness = 150; unitsPerEM = 2048; #end name = "VCR OSD Mono"; super (); }}
@:keep @:expose('__ASSET__assets_fonts_pixel_otf') @:noCompletion #if display private #end class __ASSET__assets_fonts_pixel_otf extends lime.text.Font { public function new () { #if !html5 __fontPath = "assets/fonts/pixel"; #else ascender = 1125; descender = -250; height = 1375; numGlyphs = 262; underlinePosition = -143; underlineThickness = 20; unitsPerEM = 1000; #end name = "Pixel Arial 11 Bold"; super (); }}
@:keep @:expose('__ASSET__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__flixel_fonts_nokiafc22_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/nokiafc22"; #else ascender = 2048; descender = -512; height = 2816; numGlyphs = 172; underlinePosition = -640; underlineThickness = 256; unitsPerEM = 2048; #end name = "Nokia Cellphone FC Small"; super (); }}
@:keep @:expose('__ASSET__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__flixel_fonts_monsterrat_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "flixel/fonts/monsterrat"; #else ascender = 968; descender = -251; height = 1219; numGlyphs = 263; underlinePosition = -150; underlineThickness = 50; unitsPerEM = 1000; #end name = "Monsterrat"; super (); }}


#end

#if (openfl && !flash)

#if html5
@:keep @:expose('__ASSET__OPENFL__assets_fonts_vcr_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_vcr_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_vcr_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_pixel_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_pixel_otf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_pixel_otf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_nokiafc22_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_monsterrat_ttf ()); super (); }}

#else
@:keep @:expose('__ASSET__OPENFL__assets_fonts_vcr_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_vcr_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_vcr_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__assets_fonts_pixel_otf') @:noCompletion #if display private #end class __ASSET__OPENFL__assets_fonts_pixel_otf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__assets_fonts_pixel_otf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_nokiafc22_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_nokiafc22_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_nokiafc22_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__flixel_fonts_monsterrat_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__flixel_fonts_monsterrat_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__flixel_fonts_monsterrat_ttf ()); super (); }}

#end

#end
#end

#end
