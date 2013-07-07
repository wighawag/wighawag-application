/****
* Wighawag License:
* - free to use for commercial and non commercial application
* - provided the modification done to it are given back to the community
* - use at your own risk
* 
****/

package wighawag.application;

import flash.display.Sprite;
import flash.display.StageAlign;
import flash.display.StageScaleMode;
import flash.events.Event;
import flash.Lib;


class Application extends Sprite{

    private var applicationManager:ApplicationManager;

    public function new(applicationManager : ApplicationManager) {
        super();
        this.applicationManager = applicationManager;
        addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
    }

    function onRemovedFromStage(e:Event):Void {
        removeEventListener(Event.REMOVED_FROM_STAGE, onRemovedFromStage);
    }

    function onAddedToStage(event:Event) {
        removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
        addEventListener(Event.REMOVED_FROM_STAGE, onRemovedFromStage);

        stage.scaleMode = StageScaleMode.NO_SCALE;
        stage.align = StageAlign.TOP_LEFT;

        ready();
    }


    function ready() : Void{
        applicationManager.start();
    }
}
