require "open-uri"

puts "Cleaning database..."
UserQuest.destroy_all
Quest.destroy_all
GuildChoice.destroy_all
Guild.destroy_all
User.destroy_all


puts "Creating users..."

gerard = User.create(nickname:"gege",  password: "azerty", email: "gerard@zoo.com", level: 1)
jeanfrancois = User.create(nickname:"jeanjean", password: "azerty", email: "jeanfrancois@zoo.com", level: 1)
xavier = User.create(nickname:"xavier", password: "azerty", email: "xavier@zoo.com", level: 1)
marty = User.create(nickname:"marty", password: "azerty", email: "marty@zoo.com", level: 1)

puts "Creating guilds..."

adventurer = Guild.create!(name: "Adventurer", description: "the guild of the brave")

adventurericon = URI.open('https://res.cloudinary.com/df6z4mw2e/image/upload/v1654089596/Heroes%20app/Icons/tiodwiyanto210500649_atmstm.jpg')
adventurer.icon.attach(io: adventurericon, filename: 'adventurericon.jpg', content_type: 'image/jpg')

mage = Guild.create(name: "Mage", description: "the guild of the curious")

wizardicon = URI.open('https://res.cloudinary.com/df6z4mw2e/image/upload/v1654078662/Heroes%20app/Icons/wizard_gcrlju.png')
mage.icon.attach(io: wizardicon, filename: 'wizardicon.png', content_type: 'image/png')

puts "Creating quests..."

adventurer_level_1_quest_1 = Quest.create!(level: 1, title: "5 qualities a day, keep insecurities away", content: "Choose 5 qualities that best define you",
  tips: "Think of someone you admire, what do you have in common ?
  It may be easier to begin with general qualities ('I am kind') before diving deeper !", occurences: 1, guild: adventurer)
adventurer_level_1_quest_2 = Quest.create(level: 1, title: "Friends will guide you", content: "Let's keep going with your progress ! Now that you have defined 5 qualities by yourself, ask 3 friends what they think your qualities are",
  tips: "Asking other will reveal your 'blind spots', which are aspects of yourself that you don't realise ! Enjoy a coffee and share a positive moment with your friend.", occurences: 1, guild: adventurer)
adventurer_level_1_quest_3 = Quest.create(level: 1, title: "A Padawan needs a Jedi", content: "Who do you admire ? Who was your hero when you were younger? Choose at least 2 persons (fictional or real) that inspire you. What values do they have ? ",
  tips: "Let these persons guide you ! Copy what you like about them and let their experiences become your own.", occurences: 1, guild: adventurer)
adventurer_level_1_quest_4 = Quest.create(level: 1, title: "Small talk with the an outside player", content: "Today, when you go to the grocery shop, do some small-talk with the seller ! They might give you a side quest... ",
  tips: "Smile ! People are more likely to answer if you begin with a smile. Begin small : make eye contact and see if they welcome the interaction. And most of all : have fun ! ", occurences: 1, guild: adventurer)
adventurer_level_1_quest_5 = Quest.create(level: 1, title: "A positive icon", content: " For the next hour only talk in positive sentence. Heroes need to be positive in order to overcome the difficulties they might face.",
  tips: "You might think negatively but don't say it out loud, this the key in succeeding this challenge !
  Your objective : when facing a dragon think 'nice, finally someone strong!' and not 'oh no, he's too strong' ", occurences: 1, guild: adventurer)


adventurer_level_2_quest_1 = Quest.create(level: 2, title: "Breathing exercices under the waterfall", content: "When you talk in a group, you might feel like cold water has been splashed to your face. Take a deep breathe, recenter yourself, release the knot in your stomach. Repeat each time you open your mouth",
  tips: "It's alright to miss the timing of the conversation. Having the intention and preparing the action is already a big step. Each small step counts. Repeat this exercise during 4 days to master it !", occurences: 4, guild: adventurer)
adventurer_level_2_quest_2 = Quest.create(level: 2, title: "Don't worry for I am here !", content: "After you wake up take a 'hero pose' during 2 minutes : hands on the hips, back straight, legs wide.",
  tips: "Enjoy the confidence boost that this position gives you. The reason heroes are so confident is because they do it all the time !", occurences: 1, guild: adventurer)
adventurer_level_2_quest_3 = Quest.create(level: 2, title: "Walking, running, flying", content: "Healthy mind, healthy body ! Both need to be worked together to become a hero. Exercise at least 2 times this week",
  tips: "If you're a beginner, walking 30 minutes also counts ! If you feel up to the challenge, you can check out Darebee for some epic workout inspiration", occurences: 2, guild: adventurer)
adventurer_level_2_quest_4 = Quest.create(level: 2, title: "I am a hero", content: "Today we're going to visualize our goals! Find somewhere quiet, get comfortable, close your eyes and picture in your mind the things that you want in your life.",
  tips: "Too hard ? Do a visualization board instead : print pictures of your dream life, and glue them on a big piece of paper. Put the final product somewhere where you can always see it", occurences: 1, guild: adventurer)
adventurer_level_2_quest_5 = Quest.create(level: 2, title: "Peaceful kingodom", content: "Take an inventory of your quests so far:your successes, your failures, your likes and dislikes. You're only at the beginning of your journey, it's normal to struggle. You can't expect to slay a dragon so early in the game...",
  tips: "Accept limitations : you can't control everything. Didn't finish a challenge ? What can I change about myself or the situation to make it better ? If it's outside of your control, let it go.", occurences: 1, guild: adventurer)



mage_level_1_quest_1 = Quest.create(level: 1, title:"TRY SOMETHING NEW mage", content: "Lorem ipsum", tips: "Lorem ipsum", occurences: 1, guild: mage)

puts "Creating Guild choice"

GuildChoice.create(user: gerard, guild: adventurer)
GuildChoice.create(user: jeanfrancois, guild: adventurer)
GuildChoice.create(user: xavier, guild: mage)
GuildChoice.create(user: marty, guild: adventurer)

puts "Creating quest for guild"


puts "Finished!"

file = URI.open('https://res.cloudinary.com/df6z4mw2e/image/upload/v1654078662/Heroes%20app/Icons/wizard_gcrlju.png')
