var config = {
    // << Main Settings >> //
    lang: 'EN', // UI Langs: [ EN / AR ] or you can add your language (locales/sh_locales_ui.js).
    rtl: false, // Convert text and menus from right to left (RTL) (for Arabic language: true).

    sounds: true, // Enable UI sound effects (hovers, clicks, etc.).
    bgOpacity: '0.610', // Background opacity ranging from 0 to 1 [e.g., 0.610].

    closeNUIButton: 122, // (Normal: F11 [122]) Get Key number from here: https://www.toptal.com/developers/keycode

    leftArrowKey: 37, // (Normal: [37]) Get Key number from here: https://www.toptal.com/developers/keycode
    rightArrowKey: 39, // (Normal: [39]) Get Key number from here: https://www.toptal.com/developers/keycode

    // << Dynamic Hover-Based Transparency >> //
    lessOpcityWhenMouseOut: {
        /// The Hover-Based Transparency feature makes the dispatch block fade a little.
        /// when the mouse moves away, so users can see what's behind it better.
        active: true, // Enable Dynamic Hover-Based Transparency. // This is the default setting (This setting only applies to new users and does not affect all users).
        opacity: '0.17', // Opacity when the mouse moves away.
    },

    // << Colors >> //
    colors: {
        /// For the best color harmony, please avoid using the standard colors.
        /// A special file for colors has been created, and you can check it in the config.
        //// = Main Colors = ////
        bg: "#1a1d2c", // (Normal: #1a1d2c)
        main: "#0eb9e0", // (Normal: #0eb9e0)
        error: "#f86969", // (Normal: #f86969)
        busy: "#FFCB56", // (Normal: #FFCB56)
        dispatch: {
            gradient_1: "#1a1d29f2", // (Normal: #1a1d29f2)
            gradient_2: "#222530f7", // (Normal: #222530f7)
        }
    },

    // << Pages Settings >> //
    pages: {
        chat: true, // Enable chat page
        bolos: true, // Enable flagged cars (BOLO) page
        archives: true, // Enable archives page
        duty: true, // Enable duty section in options page
    },

    // << Main Units List Settings >> //
    // This is the main setting. It does not change those whose settings is saved.
    listing: {
        LocationButton: true, // Show location button on officer block.
        RadioButton: true, // Show radio button on officer block.
        OfficerRank: true, // Display officer Rank on officer block.
    },
    // << Alerts Settings >> //
    alerts: {
        Enable: true, // Enable Alerts System.
        splitBlock: false, // Split Calls Menu (Alerts) // This is the default setting (This setting only applies to new users and does not affect all users).
        autoDelete: 10, // Remove Alert After (by minutes) // This is the default setting (This setting only applies to new users and does not affect all users).
        transitionsSound: true, // Enables a sound when switching between alerts in the alert box.
        volume: 0.23, // Alerts sounds volume from 0 to 1 [e.g., 0.610].
        sounds: {
            // Transition Sound (don't change the name).
            "transition": 'assets/sounds/6o6.mp3', // Sound effect for transitions between calls (Alerts).
            // Alerts Sounds (don't change the name)
            // You can add or modify sounds as needed.
            "1": 'assets/sounds/6o6.mp3', // Alert Sound [1].
            "2": 'assets/sounds/alert2.mp3', // Alert Sound [2].
            "3": 'assets/sounds/alert3.mp3', // Alert Sound [3].
        }
    },

    // << Map Settings >> //
    map: {
        mapImage: "assets/images/atlas.jpg", // Map Image.
        mapBGColor: "#0fa8d2", // Map Background Color.
        enableUnitsLocations: true, // Show officer locations on UI maps.
        enableCamsLocations: true, // Show camera locations on UI maps.
    },

    // << Dispatch Settings >> //
    dispatch: {
        showNotesForDispatchersOnly: true, // Show (add notes button) only for dispatchers? (true = yes).
    },  
};

console.log('UI CONFIG LOADED');