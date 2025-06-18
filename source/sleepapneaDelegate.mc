import Toybox.Lang;
import Toybox.WatchUi;

class sleepapneaDelegate extends WatchUi.BehaviorDelegate {

    function initialize() {
        BehaviorDelegate.initialize();
    }

    /*function onMenu() as Boolean {
        WatchUi.pushView(new Rez.Menus.MainMenu(), new sleepapneaMenuDelegate(), WatchUi.SLIDE_UP);
        return true;
    }*/

    function onKey (key) {
        if (key.getKey() == WatchUi.KEY_START) {
            System.println("Start key pressed");
        }
        else if (key.getKey() == WatchUi.KEY_UP) {
            System.println("Up key pressed");
        }
        else if (key.getKey() == WatchUi.KEY_DOWN) {
            System.println("Down key pressed");
        }
        return true;
    }

}