---
title: "README.md"
author: "Hilary Condon"
date: "April 10, 2016"
---

Exploratory Data Analysis Project 1
========

I forked and cloned the following Github Repository to create this Repo: 
[https://github.com/rdpeng/ExData_Plotting1](https://github.com/rdpeng/ExData_Plotting1)

## Introduction

This assignment uses data from
the <a href="http://archive.ics.uci.edu/ml/">UC Irvine Machine
Learning Repository</a>, a popular repository for machine learning
datasets. In particular, we will be using the "Individual household
electric power consumption Data Set" which I have made available on
the course web site:


* <b>Dataset</b>: <a href="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip">Electric power consumption</a> [20Mb]

* <b>Description</b>: Measurements of electric power consumption in
one household with a one-minute sampling rate over a period of almost
4 years. Different electrical quantities and some sub-metering values
are available.


The following descriptions of the 9 variables in the dataset are taken
from
the <a href="https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption">UCI
web site</a>:

<ol>
<li><b>Date</b>: Date in format dd/mm/yyyy </li>
<li><b>Time</b>: time in format hh:mm:ss </li>
<li><b>Global_active_power</b>: household global minute-averaged active power (in kilowatt) </li>
<li><b>Global_reactive_power</b>: household global minute-averaged reactive power (in kilowatt) </li>
<li><b>Voltage</b>: minute-averaged voltage (in volt) </li>
<li><b>Global_intensity</b>: household global minute-averaged current intensity (in ampere) </li>
<li><b>Sub_metering_1</b>: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered). </li>
<li><b>Sub_metering_2</b>: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light. </li>
<li><b>Sub_metering_3</b>: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.</li>
</ol>

## Loading the data

When loading the dataset into R, please consider the following:

* The dataset has 2,075,259 rows and 9 columns. First
calculate a rough estimate of how much memory the dataset will require
in memory before reading into R. Make sure your computer has enough
memory (most modern computers should be fine).[15Mb]
+ Estimate calculated by multiplying number of rows by number of columns by 8 bytes/numeric.
+ Allow for Approximately 2x Memory Required for Dataset. [30Mb]

<b>NOTE: </b>
* The four scripts present in this repository require that the dataset below is present in a subfolder entitled "data" located in your current working directory. Please ensure that this is the case or modify the script accordingly. If this is not the case, the script will throw an error and will not run. 

* Please confirm that your computer has enough memory before runnning these scripts - at LEAST 30 MB available. Each script will throw a warning that 30 MB of memory is required, as each code file **includes code for reading the data** so that the plot can be fully reproduced, in addition to the code to create the png file.



## Making Plots

Our overall goal here is simply to examine how household energy usage
varies over a 2-day period in February, 2007. The four scripts included in this repo reconstruct the plots below, all of which have been constructed using the base plotting system.

Each plot is constructed and saved as a PNG file with a width of 480 x 480 pixels by the corresponding R code file (plot1.R creates plot1.png, etc.).

All 8 files (plot1.R,plot1.png,plot2.R,plot2.png,plot3.R,plot3.png,plot4.R,and plot4.png) have been added to this repository, which now contains 4 png files and 4 R code files, in addition to this modified README.md file, the files originally in the repository, and the data. 


The four plots that you will need to construct are shown below. 


### Plot 1


![plot of chunk unnamed-chunk-2](figure/unnamed-chunk-2.png) 


### Plot 2

![plot of chunk unnamed-chunk-3](figure/unnamed-chunk-3.png) 


### Plot 3

![plot of chunk unnamed-chunk-4](figure/unnamed-chunk-4.png) 


### Plot 4

![plot of chunk unnamed-chunk-5](figure/unnamed-chunk-5.png) 

