## Overview

In this workshop, we will learn how to setup CI/CD (continuous integration/continuous deployment) with Github actions and Azure! We will start from the ground up from creating a Github repo, creating a .Net MVC project, implement unit tests, pull request templates, tying pull requests to issues, using infrastructure as code (specifically Bicep), and deploying the finished product to Azure! We will also deploy to multiple environments to show the benefit of infrastructure as code and manual approvals to promote releases from environments to environments!

When we finish this workshop you will have a working CI/CD pipeline, that is running automated testing, requesting manual approvals from a dev to prod env, and an API you can hit!

## Prerequisites

There are a few tools we want to make sure we have prior to starting this workshop we want to make sure we have [.Net Core CLI](https://dotnet.microsoft.com/en-us/download/dotnet) make sure you pick the latest LTS version, a code editor like [VS Code](https://code.visualstudio.com), [git cli](https://git-scm.com/downloads), and an [Azure Account](https://portal.azure.com).

## Init Repo

The first step to create a repository on Github we will need to create a GitHub account! You will need to go to [github.com](https://github.com) and create an account. This is a free account that you account that will be used to store our code. If you are not familiar with Github as a whole feel free to dig a little deeper, but my TLDR explanation is Github is a code source repository acquired by Microsoft and the houser of many Open Source Software Projects! We can use Github for free, and can chose to make our repos public or private. There are also many enterprise options for Github too!

Now that you have an account we can create a Github repository! ![Here](media/sc1.png "New Repo Button") you will want to click on new repository and name it something you can find later! You have two options public (meaning the whole world can see it) or private that unless you add others only you can see it! My recommendation at this point is private, but if you plan to do this as a resume booster or what to share with a friend or colleague pick public.

Now that you have a repository you should have a green code button with a drop down. Click download zip and extract the folder. Then you want to open up VS code with that folder. After that you want to go to Terminal => New Terminal (works on both Mac and PC).

## Create MCV App

Now if everything is done right we should see a terminal that is similar ![to here](media/terminal.png "terminal image"). Now that we are here our terminal is in an empty directory. What we are going to do is setup a run of the mill Azure MCV app. Nothing fancy, but just something with an endpoint we can hit and see do things. In order to do that in our terminal we are going to run `dotnet new webapi`. That will create a .Net backend sample app. If you want to see what it does run `dotnet run`. \*Note it may ask for you to add something to your keychain on mac this is so you can hit the api and trust the dev cert. Once it starts your terminal should look similar to this ![photo](media/terminal2.png "dotnet terminal output") Now that you have the app running you can hit the https url with /WeatherForecast and that will look like ![this](media/OutputOfDotnetApp.png) Now that we can have the app running we know what the behavior we want Azure to have! Let's go to https://portal.azure.com

## Create 2 RGs

Now that we have our Azure account setup we are going to do the rest of this lab within the day. You should be able to do this on the free tier of Azure, but to minimize spend we are going to finish this point on in a day. I'll do my best to call out things that cost money, why we are choosing what we are choosing so in the real world you'll be able to alter this walkthrough to fit your needs. We are going to create 2 resource groups to hold our two environments. Typically in practice you will create a resource group per environment and they are like a bucket to hold all of the resources related to that environment. You will then typically tag all resources for the same project with the same tag so you can see what your spend is per project. You can also segment costs by resource group so your higher compute/support production environments can be separated in a cost breakdown from the rest.

The first thing we are going to do is search for the resource group. You may ask since we are going to use infrastructure as code why are we manually creating these? There's two main reason Azure doesn't allow you to create resource groups via Bicep or ARM, and when we create a token to publish from Github we are going to scope it to just a particular resource group and not the whole Azure subscription. This is best practice in case it is every compromised they only get access to one resource group not everything. Go ahead and name your resource groups something like resource-group-nonprod and resource-group-prod. Region shouldn't matter, but in practice it's best to pick the one nearest to your main user pool. I'll go with US East since that's the default. Lastly, I'm going to tag it ACW-Tutorial just so I know the costs of running this versus whatever else might be in my subscription. \*Note Azure bills at a subscription level and you can use tags to help filter down costs. By default they will help filter you down by resource type too, but that's not really scalable past a few resource groups.

Now that we have 2 resource groups we need to create the Azure

## Setup Azure Connection

## Setup Default MVC

## Setup testing

## Setup test run on PR and main

## Deploy to 2 envs
