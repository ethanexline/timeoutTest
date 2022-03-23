//sets all event listeners
function idleLogout() {
    setListeners();
    $("#sessionEndingModal").on('hide.bs.modal', resetListeners);
    $("#sessionEndingModal").on('show.bs.modal', resetButton);
}

// This is where the modal is launched, and begins final 10 second countdown to logout
function warning() {
    removeListeners();
    var timeleft = 9;
    var downloadTimer = setInterval(function () {
        if (timeleft <= 0) {
            clearInterval(downloadTimer);
        }
        document.getElementById("StayLoggedIn").innerText = "Stay Logged In (" + timeleft + ")";
        timeleft -= 1;
    }, 1000);

    setTimeout(forceLogout, 10000); //10 seconds
    $("#sessionEndingModal").modal('show');
    console.log("warning");
}

//function set as event listener to launch warning modal after 20 seconds of complete idleness
function resetTimer() {
    //the following four lines clear all existing timeouts
    var id = window.setTimeout(function () { }, 0);
    while (id--) {
        window.clearTimeout(id);
    }

    setTimeout(warning, 20000); //20 seconds
    console.log("resetTimer");
}

//resets text on logout button
function resetButton() {
    document.getElementById("StayLoggedIn").innerText = "Stay Logged In (10)";
}

//resets all the listeners and the timer
function resetListeners() {
    removeListeners();
    setListeners();
    resetTimer();
}

//fires removeListeners() via event listener on modal hide event set at load
function dismissModal() {
    $("#sessionEndingModal").modal('hide');
}

//on page load and when the warning modal is dismissed
function setListeners() {
    console.log('setListeners');
    window.addEventListener('load', resetTimer, false);
    window.addEventListener('mousemove', resetTimer, false);
    window.addEventListener('mousedown', resetTimer, false);
    window.addEventListener('click', resetTimer, false);
    window.addEventListener('keydown', resetTimer, false);
    window.addEventListener('scroll', resetTimer, false);
}

//when the warning modal launches
function removeListeners() {
    console.log('removeListeners');
    window.removeEventListener('onload', resetTimer);
    window.removeEventListener('mousemove', resetTimer);
    window.removeEventListener('mousedown', resetTimer);
    window.removeEventListener('click', resetTimer);
    window.removeEventListener('keydown', resetTimer);
    window.removeEventListener('scroll', resetTimer);
}

//in the case of being "booted"
function forceLogout() {
    window.location.href = 'Page1.aspx?booted=true';
}

//in the case of legitimately signing out
function signOut() {
    window.location.href = 'Page1.aspx?signout=true';
}

//on document load, run this
$(function () {
    idleLogout();
})