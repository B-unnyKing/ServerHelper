module Scanner;

import std;

void scanModernPluginServer(string fileName, ref string serverVersion, ref string serverType) {


}

void scanModernVanillaServer(string fileName, ref string serverVersion, ref string serverType) {
    auto serverZipFile = new ZipArchive(read(fileName));
    string versionFilePath = "version.json";
    string json;
    if (versionFilePath in serverZipFile.directory) {
        auto versionFile = serverZipFile.directory[versionFilePath];
        string versionContent = cast(string)versionFile.expandedData;
        writeln("Version file content:\n", versionContent);
        JSONValue versionJson = parseJSON(versionContent);
        if ("name" in versionJson) {
            writeln("Server version: ", versionJson["name"].str);
            serverVersion = versionJson["name"].str;
        }
        
    } else {
        writeln("Version file not found in the JAR.");
        writeln("This is unusual and the server JAR may be corrupted or not a valid Minecraft server JAR.");
    }


}