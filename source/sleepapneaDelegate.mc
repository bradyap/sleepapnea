import Toybox.Lang;
import Toybox.WatchUi;

var loggingStatus = 0; // 0: stopped, 1: logging

class sleepapneaDelegate extends WatchUi.BehaviorDelegate {

    function initialize() {
        BehaviorDelegate.initialize();
    }

    /*function onMenu() as Boolean {
        WatchUi.pushView(new Rez.Menus.MainMenu(), new sleepapneaMenuDelegate(), WatchUi.SLIDE_UP);
        return true;
    }*/

    function onKey(key) {
        if (key.getKey() == WatchUi.KEY_ENTER) {
            System.println("Enter key pressed");

            if (loggingStatus == 0) {
                // Start logging
                System.println("Set logging status to 1");
                loggingStatus = 1;
            } else {
                // Stop logging
                System.println("Set logging status to 0");
                loggingStatus = 0;
            }

            
        }
        else if (key.getKey() == WatchUi.KEY_DOWN) {
            System.println("Down key pressed");
        }
        else if (key.getKey() == WatchUi.KEY_UP) {
            System.println("Up key pressed");
        }
        else if (key.getKey() == WatchUi.KEY_ESC) {
            // exit app
            System.println("Back key pressed, exiting app");
            WatchUi.popView(WatchUi.SLIDE_DOWN);
        }
        
        return true;  // Return true to indicate the key was handled
    }

}