/*
 * Jakefile
 * website
 *
 * Created by You on November 8, 2011.
 * Copyright 2011, Your Company All rights reserved.
 */

var ENV = require("system").env,
    FILE = require("file"),
    JAKE = require("jake"),
    task = JAKE.task,
    FileList = JAKE.FileList,
    stream = require("narwhal/term").stream,
    app = require("cappuccino/jake").app,
    configuration = ENV["CONFIG"] || ENV["CONFIGURATION"] || ENV["c"] || "Debug",
    OS = require("os");

app ("website", function(task)
{
    task.setBuildIntermediatesPath(FILE.join("Build", "website.build", configuration));
    task.setBuildPath(FILE.join("Build", configuration));

    task.setProductName("website");
    task.setIdentifier("com.yourcompany.website");
    task.setVersion("1.0");
    task.setAuthor("Your Company");
    task.setEmail("feedback @nospam@ yourcompany.com");
    task.setSummary("website");
    task.setSources((new FileList("**/*.j")).exclude(FILE.join("Build", "**")));
    task.setResources(new FileList("Resources/**"));
    task.setIndexFilePath("index.html");
    task.setInfoPlistPath("Info.plist");

    if (configuration === "Debug")
        task.setCompilerFlags("-DDEBUG -g");
    else
        task.setCompilerFlags("-O");
});

task ("default", ["website"], function()
{
    printResults(configuration);
});

task ("build", ["default"]);

task ("debug", function()
{
    ENV["CONFIGURATION"] = "Debug";
    JAKE.subjake(["."], "build", ENV);
});

task ("release", function()
{
    ENV["CONFIGURATION"] = "Release";
    JAKE.subjake(["."], "build", ENV);
});

task ("run", ["debug"], function()
{
    OS.system(["open", FILE.join("Build", "Debug", "website", "index.html")]);
});

task ("run-release", ["release"], function()
{
    OS.system(["open", FILE.join("Build", "Release", "website", "index.html")]);
});

task ("deploy", ["release"], function()
{
    FILE.mkdirs(FILE.join("Build", "Deployment", "website"));
    OS.system(["press", "-f", FILE.join("Build", "Release", "website"), FILE.join("Build", "Deployment", "website")]);
    printResults("Deployment")
});

task ("desktop", ["release"], function()
{
    FILE.mkdirs(FILE.join("Build", "Desktop", "website"));
    require("cappuccino/nativehost").buildNativeHost(FILE.join("Build", "Release", "website"), FILE.join("Build", "Desktop", "website", "website.app"));
    printResults("Desktop")
});

task ("run-desktop", ["desktop"], function()
{
    OS.system([FILE.join("Build", "Desktop", "website", "website.app", "Contents", "MacOS", "NativeHost"), "-i"]);
});

function printResults(configuration)
{
    print("----------------------------");
    print(configuration+" app built at path: "+FILE.join("Build", configuration, "website"));
    print("----------------------------");
}

task("deploy-pages", /*["deploy"],*/ function() {

    // OS.system(buildCmd([["cd", "Build/Release/website/"], ["ls", "-lsa"]]));

    OS.system(buildCmd([["cp", "-R","Build/Release/", "../Pages"]]));

    OS.system(buildCmd([["git", "checkout","gh-pages"], ["ls", "-lsa"], ["cp", "-R","../Pages/website/*", "../website"],["git", "add","."], ["git", "commit", "-m", "\"Pushing a new version of the web site\""],["git", "push","origin","gh-pages"]]));


    OS.system(buildCmd([["git", "checkout","master"]]));


    colorPrint("Cleaning", "green");
    // OS.system(buildCmd([["rm", "-r", "../Pages"]]));
    colorPrint("Everything was okay", "green");

});

function colorize(/* String */ message, /* String */ color)
{
    var matches = color.match(/(bold(?: |\+))?(.+)/);

    if (!matches)
        return;

    message = "\0" + matches[2] + "(" + message + "\0)";

    if (matches[1])
        message = "\0bold(" + message + "\0)";

    return message;
}

function colorPrint(/* String */ message, /* String */ color)
{
    stream.print(colorize(message, color));
}


function buildCmd(arrayOfCommands)
{
    return arrayOfCommands.map(function(cmd) {
        return cmd.map(OS.enquote).join(" ");
    }).join(" && ");
}

