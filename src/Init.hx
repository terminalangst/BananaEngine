package;

import flixel.FlxG;
import flixel.FlxState;

class Init extends FlxState {
    override public function create() {
        // Why were these even in TitleState of all places dude.
        ClientPrefs.loadPrefs();
        Language.reloadPhrases();
        if (FlxG.save.data.fullscreen != null) FlxG.fullscreen = FlxG.save.data.fullscreen;
        if (FlxG.save.data.weekCompleted != null) states.StoryMenuState.weekCompleted = FlxG.save.data.weekCompleted;

        // Flixel defaults !
        FlxG.game.focusLostFramerate = 60;
        FlxG.keys.preventDefaultKeys = [TAB];
		FlxG.mouse.visible = false;

        super.create();

        // This method is ASS, KILL YOURSELF KELSEY FROM SEPTEMBER 2025.
        if (FlxG.save.data.flashing == null && !states.FlashingState.leftState) {
            FlxTransitionableState.skipNextTransIn = FlxTransitionableState.skipNextTransOut = true;
            MusicBeatState.switchState(new states.FlashingState());
        } else MusicBeatState.switchState(new states.TitleState());
    }
}