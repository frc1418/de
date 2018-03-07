# `dep`
A helpful CLI tool for deploying code to FRC robots. Designed to take time out of the robot code deploy process by removing steps such as network connection.

## Features
* Automatically switch to robot network before deploy and back to previous network afterward
* Warn of uncommitted changes before deploy
* Deploy over ethernet if interface available
* Aesthetically pleasing logging

## Background
[Team 1418](https://github.com/frc1418) created this script in 2018 for easily deploying code to our robot. `dep` began as a simple three-line bash script in [2018-robot](https://github.com/frc1418/2018-robot), and later swelled as we added features. Eventually, we decided to spin off the tool into a separate repository such that it can continue to be used and updated across seasons, as well as be more accessible to other teams.

The original development history (before March 7th, 2018) can be seen on the [2018-robot](https://github.com/frc1418/2018-robot/commits/master) history.
