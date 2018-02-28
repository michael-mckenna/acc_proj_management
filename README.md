# Aggie Coding Club Project Management App

### Summary

The Aggie Coding Club is seeking a development team willing to build a project management app. As a project-focused organization, we have tons of opportunities for hundreds of members to join and gain valuable experience; because of this, we need a project management tool to help organize everything.

### Features

Display a list of projects
Enable a member to join a project
Members must be limited to be in only one project at a time
Enable members to submit a project idea
Enable admins to view project ideas and choose to officially display it on the official Projects page
Allow an admin to create a project
Project should have a name, description, and list of members
4.  View analytics on project participation 
	1. See meeting attendance
	2. Integrate with the GitHub API to see team commit actiity
5.  Member check-in for meetings
6.  Create a cron job for optional meeting reminders
	1. Twilio for SMS reminders
	2. Mailgun for email reminders

### Goals

With this project management app, we aim to increase project participation by holding members accountable. By leveraging a check-in system and being able to view fellow members’ GitHub activity in a consolidated pace, we will be able to achieve this. Additionally, sending appointment reminders will help improve attendance.

Since we have hundreds of members, and many of which come to the club with project ideas, we need a way to consolidate those ideas in one place so we can filter the good ideas from the bad (i.e. yet another event app). This project management app will provide the functionality this functionality to help streamline ideas.

Lastly, this app will allow members to join projects on their own accord. Since the organization is growing so fast, it has become impractical to correspond with every member wishing to join a project. 

## Requirements
1. Ruby 2.5.0

## Build
1. `bundle`
2. `rake db:migrate`
3. `rails s` to start server or `rake` to run test suite

## Dependencies
TODO
