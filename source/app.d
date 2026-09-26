import std.stdio;
import std.zip;
import std.file;
import std.string;
import GUI;
import CLI;

void main()
{

	writeln("Please choose GUI or CLI mode");
	writeln("to use CLI mode type 'cli' and to use GUI mode type 'gui' then press enter");
	string mode = readln().strip();
	chooseMode(mode);
	
	string[] minecraft_server_files = ["server.jar", "minecraft_server.jar", "minecraft-server.jar"];

	string JAR_name = "";

	writeln("Starting...");
	writeln("looking for server JAR files...");
	
	




}

void chooseMode(string mode) {
	if (mode == "cli") {
		writeln("CLI mode selected");
		CLI.serverCLI();
	} else if (mode == "gui") {
		writeln("GUI mode selected");
		GUI.serverGUI();
	} else {
		writeln("Invalid input. Please type 'cli' or 'gui'.");
		chooseMode(readln().strip());
	}
}

