package com.wighawag.application;

import nme.display.Sprite;
import nme.display.StageAlign;
import nme.display.StageScaleMode;
import nme.events.Event;
import nme.Lib;


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
