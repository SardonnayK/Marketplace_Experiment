# Marketplace_Experiment
Checking out a couple of market place platforms

The dockerfile provided does not seem to build successfully on my machine. 
The error I get has to do with the following line in the Dockerfile: [line:10](./Dockerfile)
```
    composer create-project bitbag/open-marketplace project
```

The line does not seem to create the project files and the subsequent lines fail because of this.
I have gotten the image working initially by removing the lines that require the project 
and running those lines manually in the docker image.


# Findings

## Situation:

We need to find a robust market place solution that can handle multi vendor support. The solution will help future ecommerce platforms get off the ground a lot quicker and provide a proven framework to build on top of.

## Task:

We attempted to make use of the open source platforms that can be run independently and will purely handle the e-commerce side of things. The chosen platform should be able to handle the following:

### Required

- [ ]  Product Management
- [ ]  Inventory Management
- [ ]  Order Management
- [ ]  Checkout/Payment Integrations
- [ ]  Headless

### Optional

- [ ]  Delivery Integration
- [ ]  Self Hosting


## Action:

We attempted to run the project in a docker container to play around in a sandbox environment. We created the dockerfile that would have all the requirements for the project. The [symfony](https://hub.docker.com/r/sylius/standard/) base image was used as it has a lot of requirements pre-installed.

## Result:

- The software does not have a headless solution at the moment so it fails one or our requirements.
- The Software had a couple of bugs that prevented it from being started.
    - This was a major flag as we cannot trust the software for production use cases if it is failing out of the box
    - With the php tech stack we won’t be able to easily debug any issues or make an informed decision about the code optimization.