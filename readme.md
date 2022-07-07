# DevOps From Novice To Dangerous

This continuous delivery cloud workshop is adapted from the original Microsoft Cloud Workshop that was licensed under MIT and will be retired as of 7/30/2022. For the legacy offering in the original Microsoft Cloud Workshop format, [review this repository](https://github.com/Microsoft/MCW-Continuous-Delivery-in-Azure-DevOps)

The purpose of this workshop is to continue to provide the excellent training mechanism of a cloud workshop for continuous delivery in GitHub.

This workshop has been updated and enhanced to utilize .Net 6 and to teach additional concepts for CI/CD development in GitHub.

In your quest to learn through this workshop, you may choose to take the 'challenge' approach, or you may just complete the walkthrough. Either way, it is our sincere hope that you will learn through this process and enjoy the activities.

## Additional Notes

As this training module was adapted from an original MCW, a number of the same concepts will be applied. This training is intended for use to enhance your learning, particularly when studying for the AZ-400 exam or when you just want to become better with DevOps technologies in Azure.

As Azure has a number of paths and approaches you can take, it is noted that this workshop only represents one of the possible ways to accomplish tasks with CI/CD solutions.

## Tech Stack

This workshop uses a .Net Core API for the actual deployment, however most backend technologies should work as long as app services support them. We are also using GitHub, YML pipelines, and Bicep for our full CI/CD approach.

## Overview

In this workshop, you have been hired with almost no experience to build out a CI/CD pipeline in GitHub using GitHub actions, Azure, and infrastructure as code. You final goal is to build out two separate environments a non-prod and a prod that require a manual approval to move from non-prod to Prod. This is due to compliance and separation of duties that only a specific person can approve releases. All code should deploy straight to non-prod once merged into main.

## Technologies

The following technologies will be leveraged in this workshop:

| **Technology**                                                                                                 | **Purpose**                                                               |
| -------------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| [GitHub](https://docs.github.com/en)                                                                           | Our source control and build runner                                       |
| [Azure App Service Plan](https://docs.microsoft.com/en-us/azure/app-service/overview-hosting-plans)            | The server running our deployed api                                       |
| [Azure App Service](https://azure.microsoft.com/en-us/services/app-service)                                    | Part of service plan provisioned to run our app and have our https domain |
| [GitHub Actions](https://docs.github.com/en/actions/learn-github-actions/essential-features-of-github-actions) | The pipeline building and deploying our app                               |
| [Azure Bicep](https://github.com/Azure/bicep)                                                                  | Azure Infrastructure as code choice                                       |
| [.Net](https://docs.microsoft.com/en-us/dotnet/)                                                               | Our API we are using for this deployment                                  |
| [Federated Sign On](https://docs.microsoft.com/en-us/azure/active-directory/hybrid/whatis-fed)                 | This is the type of auth we are using to connect to Azure                 |

## Architecture Overview

The following image shows the intended architecture for the solution:

![CI/CD Arch](./GuidedWalkthroughs/media/CI_CD.drawio.png)

## Code

Some code will be provided in any path, and sometimes you will need to generate the solutions yourself and write or use the provided code to solve the problems at hand.

## Approach

Since this is geared at a little more of a novice level this will only have one type of way through. Later parts will have challenges more with the idea of assuming you start here satisfy the next group of AC.

- WalkThrough

In the Challenge approach, you will be given acceptance criteria and you must meet them to complete the challenges.

In the WalkThrough you will be given step-by-step guidance on one way to implement this solution. In the walk through, you could provision a number of resources up front, or provision them as you need them. The walkthrough will build from the ground up in a 'just-in-time' approach.

It is critical, however, that you group them in a way that allows you to easily manage this solution (typically one resource group and single region provisioning).

## Prerequisites

To complete this workshop, you should prepare your environment with the following tools:

- Visual Studio Code (optional/instead of VS2022) [Get it Here](https://code.visualstudio.com/)
- GIT [&& GIT Bash] [Get GIT here](https://git-scm.com/downloads)
- A GitHub Account where you can create some repositories [get one here](https://github.com/join)
- An active Azure subscription [get a free Azure Subscription](https://azure.microsoft.com/en-us/free/?WT.mc_id=AZ-MVP-5004334)
- .Net 6 SDK [get it here](https://dotnet.microsoft.com/en-us/download/dotnet/6.0)
- Experiential and Experimental attitude [if something doesn't work as expected, willing to ensure you've tried everything and taken the chance to learn more while trying to fix the issue]

## Legal Stuff

In no way, shape, or form will we be responsible for what you do with this code, nor will we make any guarantees to it's complete accuracy and correct utilization. Therefore, you agree to use what you learn here and any code at your own risk, and completely exonerate the creators and hosts of this repo from any liabilities or damages you incur from utilization of the concepts and code found in this workshop.

## Final Thoughts

The main purposes for these training workshops is to help you engage with the technologies at Azure for learning and study purposes, but we also encourage any speakers to leverage this information for conference workshops and/or talks. Our only ask is that you would let us know if you decide to use this for anything so we can see that it is having a positive impact.
