import Toybox.Lang;
import Toybox.System;
import Toybox.WatchUi;

class sleepapneaMenuDelegate extends WatchUi.MenuInputDelegate {
    var timer;
    var heartRate;

    function initialize() {
        MenuInputDelegate.initialize();
    }

    function onMenuItem(item as Symbol) as Void {
        if (item == :item_1) {
            System.println("item 1");
        } else if (item == :item_2) {
            System.println("item 2");
        }
    }

}