# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

emails = ['peterpan@neverland.co.uk', 'crocodile@ticktack.de', 'crazyhorse@america.com']
tags = ['#cool', '#awesome', '#news', '#sad', '#terrible', '#impeach', '#movies2018']
content = [
	"Those trying to follow the sun, in circles they soon run.",
	"Sittin' round at night, life ain't all that bright.",
	"Kill your horse - great remorse.",
	"What has yellow skin and writes? - A ball-point banana!",
	"Please fill in these paper forms, ensuring us that you conform.",
	"You can trust me - have no fear. Now, please sign right here.",
	"Flick the switch - burn the witch.",
	"We are villains of circumstance.",
	"Sicher deinen Arbeitsplatz, Riesterrente, Zahnersatz."]

# for each of the 3 users...
emails.each do |email|
	# create new user
	user = User.new()
	user.email = email
	user.password = '#$123456'
	user.save!

	# randomly create between 1 and 3 tweets
	rand(1..3).times do

		# create with random timestamp and words sampled from content
		tweet = Tweet.create(
			time_posted: Time.at(rand(1..1000000000)),
			content: content.sample(1)[0],
			author: email)

		# add 2 randomly selected tags per tweet
		tags.sample(2).each do |tag|
			tweet.tags << Tag.create(tag: tag)
		end

		# add to user, database entry is created
		user.tweets << tweet
	end
end