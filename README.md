# Changr

* [The Idea](#the-idea)
* [User Stories](#user-stories)
* [App Snapshots & Video](#app-snapshots-and-video)
* [Download Instructions](#download-instructions)

## The Idea

Working in an agile team we built an iOS app in **Swift**, a language none of us had any prior experience with. With this project we wanted to help those who are homeless in our society to receive donations on the fly using a location-aware app thanks to **Bluetooth Beacons**.

The idea is that a homeless person is assigned an **Estimote Beacon** that could transmit a bluetooth signal to a smartphone. Then, whenever somebody walks past this person they receive a **notification** on their phone detailing information about this particular person. More importably, when they swipe the notification and open up the app they are given the opportunity to donate some money via **PayPal** to the homeless person.

Using a TDD approach, we had to write [an ad-hoc mock](https://github.com/samover/FirebaseMock) for **Firebase** in Swift, which we tested using **Quick/Nimble**. Unit testing was done through **XCTest**.

## User Stories

The presentation video of the app can be found on [Youtube](https://youtu.be/AyVZJ511cqI?t=96)

How to install?
---------------
* Make sure you have XCode 7.2 installed
* Clone the project
* Add Carthage frameworks running `carthage bootstrap`
* Add [Paypal SDK](https://github.com/paypal/PayPal-iOS-SDK) to the project files. You probably want to import them into your project.
* Add Firebase Framework to project. Follow these [instructions](https://www.firebase.com/docs/ios/alternate-setup.html)
* Plug in your phone and build the app

How to contribute?
------------------
This was a two week project. We would love to bring this app forward. Contact [the makers](mailto:changr@samover.33mail.com) if you are interested.
