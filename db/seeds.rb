require "open-uri"

puts "Cleaning database..."
UserQuest.delete_all
Quest.destroy_all
GuildChoice.delete_all
Guild.delete_all
User.destroy_all

puts "Creating users..."

gerard = User.create(nickname:"gege",  password: "azerty", email: "gerard@zoo.com", level: 1)
jeanfrancois = User.create(nickname:"jeanjean", password: "azerty", email: "jeanfrancois@zoo.com", level: 1)
xavier = User.create(nickname:"xavier", password: "azerty", email: "xavier@zoo.com", level: 1)
marty = User.create(nickname:"marty", password: "azerty", email: "marty@zoo.com", level: 1)

puts "Creating guilds..."

adventurer = Guild.create!(name: "Adventurer", description: "the guild of the brave")

adventurericon = URI.open('https://res.cloudinary.com/df6z4mw2e/image/upload/v1654078662/Heroes%20app/Icons/wizard_gcrlju.png')
adventurer.icon.attach(io: adventurericon, filename: 'wizardicon.png', content_type: 'image/png')

mage = Guild.create(name: "Mage", description: "the guild of the curious")

wizardicon = URI.open('https://res.cloudinary.com/df6z4mw2e/image/upload/v1654078662/Heroes%20app/Icons/wizard_gcrlju.png')
mage.icon.attach(io: wizardicon, filename: 'wizardicon.png', content_type: 'image/png')

puts "Creating quests..."

adventurer_level_1_quest_1 = Quest.create!(level: 1, title:"TRY SOMETHING NEW", content: "Lorem ipsum", tips: "Lorem ipsum", occurences: 1, guild: adventurer)
adventurer_level_1_quest_2 = Quest.create(level: 1, title:"TRY SOMETHING NEW 2", content: "Lorem ipsum", tips: "Lorem ipsum", occurences: 1, guild: adventurer)
adventurer_level_1_quest_3 = Quest.create(level: 1, title:"TRY SOMETHING NEW 3", content: "Lorem ipsum", tips: "Lorem ipsum", occurences: 1, guild: adventurer)
mage_level_1_quest_1 = Quest.create(level: 1, title:"TRY SOMETHING NEW mage", content: "Lorem ipsum", tips: "Lorem ipsum", occurences: 1, guild: mage)

puts "Creating Guild choice"

GuildChoice.create(user: gerard, guild: adventurer)
GuildChoice.create(user: jeanfrancois, guild: adventurer)
GuildChoice.create(user: xavier, guild: mage)
GuildChoice.create(user: marty, guild: adventurer)

puts "Creating quest for guild"
UserQuest.create(status: "pending", user_occurences: 1, quest: adventurer_level_1_quest_1, user: gerard)
UserQuest.create(status: "pending", user_occurences: 1, quest: adventurer_level_1_quest_2, user: gerard)
UserQuest.create(status: "pending", user_occurences: 1, quest: adventurer_level_1_quest_3, user: gerard)

puts "Finished!"

file = URI.open('https://res.cloudinary.com/df6z4mw2e/image/upload/v1654078662/Heroes%20app/Icons/wizard_gcrlju.png')
