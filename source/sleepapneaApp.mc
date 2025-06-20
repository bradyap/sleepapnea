import Toybox.Application;
import Toybox.Lang;
import Toybox.WatchUi;

class sleepapneaApp extends Application.AppBase {

    function initialize() {
        AppBase.initialize();
    }

    // onStart() is called on application start up
    function onStart(state as Dictionary?) as Void {
        System.println("App starting");
    }

    // onStop() is called when your application is exiting
    function onStop(state as Dictionary?) as Void {
        System.println("App stopping");
    }

    // Return the initial view of your application here
    function getInitialView() as [Views] or [Views, InputDelegates] {
        return [ new sleepapneaView(), new sleepapneaDelegate() ];
    }

}

function getApp() as sleepapneaApp {
    return Application.getApp() as sleepapneaApp;
}