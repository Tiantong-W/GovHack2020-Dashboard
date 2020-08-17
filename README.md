# GovHack 2020 - Citizen Science Challenge - Realtime Data Dashboard


[![](https://github.com/Tiantong-W/GovHack2020-Dashboard/blob/master/Images/Youtube.png)](https://www.youtube.com/watch?v=dFROOQToiVk)


## Realtime Tableau DashBoard

The Tableau dashboard is functionated as the interactive platform between our team and the citizens, future Moblie APP users, govenment and other organizations. Our dashboard is connected with the MongoDB server, while the collected data is updated in realtime. Individuals and organizations can make use of this dashboard by checking the portion of mask wearers to help in decision making. The data could also be analyzed in a modeling as a statistically significant feature.

### HeatMap of analystics on Mask Wearers by postcode

The user can set filters on dates and time to get self-defined data, while also able to see the mask wearing trend in different areas by time.

### Infographics

The infographics and highlighted statistics help users be aware of the mask wearing issue, which encourages them to download the mobile app.

### Mobile Version - could be incorporated in the MaskCount App 

The Mobile version dashboard imporved user experience.

### Data We Used in Desmonstration

Because we are aiming at developing a mobile application for collecting data, the mock-data we used is purely randomly generated and not biased, which would be use for the demonstration only.

### Future Possibilities on Data Science

There could be a lot of perspectives on how to use and analyse the collected data of mask wearing, including finding its correlation with the majority human race in different areas by postcode, its correlation with police forces, its correlation with the Covid-19 daily growth rates. We could also generate new features like classifications on mask consumption for Data Science modeling usage. 

***

# Our Project

# GovHack 2020 - Citizen Science

[![Click for Video](https://github.com/DVacirca/govhack_citizen_science/blob/master/src/assets/ViedoYoutube.png)](https://www.youtube.com/watch?v=mDHmGwBYiac&feature=youtu.be "Click for Video")

https://www.youtube.com/watch?v=mDHmGwBYiac&feature=youtu.be

## Introduction

Victoria is currently in the middle of their second lockdown and to control the spread of coronavirus, for the first time in history, wearing face coverings is now mandatory for all of Victoria. We spoke to some people in Melbourne, and they’ve seen a lot of people not doing the right thing. There are even anti-mask protestors. Our problem statement is, how do we measure the level of compliance around wearing masks, so that messages provided by the government is effective in keeping people vigilant and doing their part to flatten the curve?
Our solution leverages the power of Citizen Science by providing a counting tool to measure mask-wearing compliance across Victoria.

## The MaskCount App

We’ve created a simple citizen science app called MaskCount where Australians can opt in to help collect data and contribute to science and our understanding of what is happening in Victoria. Volunteers will go outside within restrictions, count the number of mask-wearers and non-mask wearers, from as little as 10 minutes to an hour (but safely of course) and help collect these numbers based on location and time.

![](https://github.com/DVacirca/govhack_citizen_science/blob/master/src/assets/maskCountDemo.gif)

## The Data - Dashboard

The data collected will populate a heat map visualization in real-time. Phone GPS coordinates will be matched to postcode boundaries (https://discover.data.vic.gov.au/dataset/vicmap-admin) This will allow us to demonstrate the proportion of those wearing masks compared to the total individuals observed within all postcodes.

[![Dashboard](https://github.com/DVacirca/govhack_citizen_science/blob/master/src/assets/dashboardYoutube.png)](https://www.youtube.com/watch?v=dFROOQToiVk "Dashboard")

## Impact

Our citizen science app and the data collected will help scientists in the future understand the impact of a modern pandemic and unprecedented restrictions on Australians. It will also assist government in allocating monitoring/surveillance resources to control the spread

## Technologies used

- Python
- React native
- Tableau
- Figma
- MongoDB

![](https://github.com/DVacirca/govhack_citizen_science/blob/master/src/assets/ArchitecturalDiagram.png)

## Project Repositories

- [mobile-application]
  - https://github.com/DVacirca/govhack_citizen_science
- [app services]
  - https://github.com/willymacoy/govhack2020
- [data visualisation]
  - https://github.com/Tiantong-W/GovHack-CitizenScience

## Team Members

Dante Vacirca, Mike Edmonds, Claudia Wang, Tri Huynh, Peggy Wei

***

## Video Script:

Hello everyone from GovHack 2020! We are team Citizen Scientists and we met each other for the first time on Friday. Our team members are Dante, Tri, Claudia, Mike, Theo and myself, Peggy and we come from all around Australia and NZ. For the last 46 hours we’ve been working on a solution to help understand what is happening in Victoria during this global pandemic we are in right now.

Victoria is currently in the middle of their second lockdown and to control the spread of coronavirus, for the first time in history, wearing face coverings is now mandatory for all of Victoria. We spoke to some people in Melbourne and they've seen a lot of people not doing the right thing. There are even anti-mask protestors. How do we measure the level of compliance around wearing masks so that messages provided by the government is effective in keeping people vigilant and doing their part to flatten the curve?

Our solution leverages the power of Citizen Science by providing a counting tool to measure mask-wearing compliance across Victoria.

### The App

Volunteers will go outside within restrictions, count the number of mask-wearers and non-mask wearers, from as little as 10 minutes to an hour (but safely of course) and help collect these numbers based on location and time.

### The Data

The data collected from the app will populate a heat map visualization in real-time, within postcode boundaries we obtained from data.vic. Here you can see the blue regions show higher levels of mask compliance based on proportion of wearers over total people observed, and orange as lower compliance. You can filter this data by different days, or even by the hour.

We've also got some informative statistics here on COVID cases, to correlate mask wearing with number of cases.
You can also show the data gathered from the app by postcodes. This also updates in real time. Here, blue indicates number of mask wearers and orange as non mask wearers.

You can also see a measure of mask wearing compliance throughout different times of the day.
We've also included the infographics here to help make people more aware of wearing masks when they're going out, to encourage them to download our app.
By the way, You can also view this in mobile.

### Architectural Diagram

So altogether, here is how it all works. Every time a volunteer uses MaskCount, we know exactly where they are based on GPS coordinates, and this gets resolved into a postcode to send back to the app. The location, date, experiment data all gets stored in our database which we can then visualise in Tablueau.

At a state level, this could help assist the government to improve communication to the public around mandatory restrictions but also in the future, this can help scientists and researchers better understand the impact of a global pandemic on Australians when we look back on 2020.


![alt text](https://github.com/Tiantong-W/GovHack-CitizenScience/blob/master/DashBoard%20%26%20Infographics/Dashboard-general.png "DashBoard") 

