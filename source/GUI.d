module GUI;

import std;
import arsd.minigui;

void serverGUI() {

    auto window = new Window("Server Helper", 400, 300);

    auto button = new Button("Create New Server", window);

    button.addEventListener("triggered", (Event event) {
    // Your code here
        createNewServerGui();
    });

    window.loop();
}

void createNewServerGui() {
    auto createWindow = new Window("Create New Server", 400, 300);

    auto topRow = new HorizontalLayout(createWindow);
    auto sideRow = new VerticalLayout(createWindow);

    auto serverLabel = new TextEdit(topRow);

    auto installButton = new Button("Install Server", topRow);
    ComboboxBase versionList = new DropDownSelection(createWindow);

    versionList.addOption("1.20.1");
    versionList.addOption("1.20.2");
    versionList.addOption("1.20.3");
    versionList.addOption("1.20.4");

    createWindow.loop();
}