# Kiwi

Simple flight search App.

![kiwi](https://user-images.githubusercontent.com/43984788/207322887-92462f32-d58e-4046-b0e2-2cf113a2f0b1.gif)


It is divided into four Swift Packages - Core, Feature, SDK and Infrastructure. The iOS app (Kiwi.swift) has dependency only on part of the Core..

The Core package containts core features of the App. So far there is only Root but other features such as Login, Dashboard, could be added here. This package can have dependecy on all Feature, SDK and Infrastrcture package if needed.

The Feature package contains features of the App, specificaly Search of flights to a random city. This package uses SDK and Infrastructure as its dependencies.

SDK contains Clients aka the app business logic (implemented via Protocol Witnesses). This package uses Infrastrcture as its dependency.

Infrastructure contains tools and helpers used all over the app, such as UI components, extensions (in the future Networking client, DB client, ...).
