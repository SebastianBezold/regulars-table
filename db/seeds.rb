# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

employees = Employee.create([
  {
    first_name: 'Sebastian',
    last_name: 'Bezold',
    email: 'SebastianBezold@googlemail.com',
    password: 'Sebastian',
    password_confirmation: 'Sebastian'
  },
  {
    first_name: 'Michael',
    last_name: 'Sprauer',
    email: 'Michael@sprauer.net',
    password: 'MichaelSp',
    password_confirmation: 'MichaelSp'
  }])

teams = Team.create([
  {
    name: 'DHBW'
  },
  {
    name: 'CAS'
  }])

events = Event.create([
  {
    name: 'Rails coding session',
    date: DateTime.strptime("05/30/2015 17:00", "%m/%d/%Y %H:%M"),
    location: 'DHBW meeting room',
    creator: employees.first # creator
  }])

sebastian = employees.first
sebastian.teams = teams
sebastian.save

michael = employees.second
michael.team_ids = [teams.first.id]
michael.save
