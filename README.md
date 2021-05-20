<div align="center">
  <img src="images/header-logo.JPG"><br>
</div>

-----------------

# Table of Contents
- [What is it](#what_is_it)
- [Main Features](#main-features)  
- [Project Structure](#project_structure)
- [How to Run ETS_Inventory_WA](#how-to-run)
- [Architure Diagrams](#digs)   
- [Discussion and Development](#dev)
- [Contribution](#contri)


# ETS-Inventory (v0.0.1) : A tool to manage simple inventory tracking and notification


# What is it? <a name="what_is_it"></a>

This repository is a host for the code I write as part of an Inventory tool built for the [Engineering Technology Services](https://www.engr.colostate.edu/ets/) at CSU. 
It consists of a thin client-server tool accessible via hosting it on an IIS server. I use a simple SQLite Database file to store and retrieve records.
I've set up the IIS , .NET Framework and libraries required to host and run applications on a machine in the Engineering Department(win-compute-12).
This version of the tool (v0.0.1) has 2 different pages: One for Labs, and One for Inventory.

# Main Features <a name="main-features"></a>

- View/Insert/Update your inventory stock, all in one Single Page Application. 
- Filter by Lab, Category and even item name!
- Specify how much of each item is a "warning-low" and how much is "alert-low". ( this is useful later. )
- Search and update records feature neatly tucked away in a cool sidebar.(Hint, check the Hamburger on the top-right) 
- Clear color-coded Red/Orange highlights for alert/warning quantity items in stock.
- Inbuilt functionality to send low-stock alert emails to your inbox on click or at a fixed time every day.(Provided the app is running).
- Working on an email service to do the above feature without needing the app to be run. (background C# windows service)
- Database Schema built to handle several configurable extensions to the code via the appconfigs table.

# Project Structure <a name="project_structure"></a>
    /DatabaseInterface      # Class to interact and query the SQLite DB 
    /Pages        # where Inventory and Lab ASPX Pages and CS codebehind for the client are stored
    /Properites   # where VS2017 stores assembly information
    /Temp         # backups and experiments with Master Page features for the app. 
    /dependencies # jQuery and Bulma CSS dependencies 
    /bin          # contains the dlls and compiled files for the debug/release versions of the app.
    /backup-db    # name says it all
    sample_inventory.db   # the SQLite DB being accessed by the app.
    log4net.config   # config file for the logging library being used by the app
    Web.config    # Main Config file for the solution
    properties.xml # place to store extensible config values(other than the DB)
        

# Where to use it <a name="where-to-use"></a>
Work in Progress

# How to run <a name="how-to-run"></a>
1. Clone the repository
2. Navigate to the Inventory_WebApp directory
3. Open the solution in Visual Studio 2017+
4. Run a clean-build of the app in `Debug` mode. (regular build is okay, but good practice)
6. The sample webserver will be started by VS running it on your local system.

# Architecture Diagrams <a name="digs"></a>
<div align="center">
  <img src="images/architecture-dig.JPG"><br>
</div>

<div align="center">
  <img src="images/db-schema.JPG"><br>
</div>


# Discussion and Development <a name="dev"></a>
All development and discussion was done with Nick Stratton, Jeff Penn and the Engineering Technology Services team at the Dept of Engineering. This Project was developed as an proposed proposed internal tool to aid in the management of inventory at the various [labs](https://www.engr.colostate.edu/ets/lab-and-classroom-overview/) in the Engineering Department.

# Contributing to PerfFlow <a name="contri"></a>
All contributions, bug reports, bug fixes, documentation improvements, enhancements, and ideas are welcome.

#### Created by [Sanket Mehrotra](https://github.com/mehrotrasan16)



