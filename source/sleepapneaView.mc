import Toybox.Graphics;
import Toybox.WatchUi;
using Toybox.Lang;
using Toybox.System;
using Toybox.Timer;

class sleepapneaView extends WatchUi.View {
    var todLabel;
    var timerLabel;
    var hrLabel;

    var timer;
    var seconds = 0;


    function initialize() {
        View.initialize();
    }

    // Load your resources here
    function onLayout(dc as Dc) as Void {
        setLayout(Rez.Layouts.MainLayout(dc));
        todLabel = findDrawableById("todLabel");
        timerLabel = findDrawableById("timerLabel");
        hrLabel = findDrawableById("hrLabel");
    }

    // Called when this View is brought to the foreground. Restore
    // the state of this View and prepare it to be shown. This includes
    // loading resources into memory.
    function onShow() as Void {
        timer = new Timer.Timer();
        timer.start(method(:update), 1000, true);
    }

    // Update the view
    function onUpdate(dc as Dc) as Void {
        dc.clear();

        // TOD
        var clockTime = System.getClockTime();
        var hour = clockTime.hour;
        var ampm = "AM";
        
        // Convert to 12-hour format
        if (hour >= 12) {
            ampm = "PM";
        if (hour > 12) {
            hour = hour - 12;
        }
        } else if (hour == 0) {
            hour = 12;
}
        var timeString = Lang.format("$1$:$2$ $3$", [hour, clockTime.min.format("%02d"), ampm]);
        todLabel.setText(timeString);

        // Timer
        var timerString = Lang.format("$1$:$2$", [seconds / 60, seconds % 60]);
        timerLabel.setText(timerString);

        // Heart Rate
        var hr = Sensor.getInfo().heartRate;
        hrLabel.setText(Lang.format("$1$ bpm", [hr]));
        
        View.onUpdate(dc);
    }

    // Called when this View is removed from the screen. Save the
    // state of this View here. This includes freeing resources from
    // memory.
    function onHide() as Void {

    }

    function update() as Void {
        // Update the view
        WatchUi.requestUpdate();

        // Add second to timer
        seconds += 1;
    }

}
