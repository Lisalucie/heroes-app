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

adventurer = Guild.create!(name: "Adventurer")


mage = Guild.create!(name: "Mage")

adventurericon = URI.open('https://res.cloudinary.com/df6z4mw2e/image/upload/v1654167316/Heroes%20app/Icons/pxArt_2_ihrfi7.png')
adventurer.icon.attach(io: adventurericon, filename: 'adventurericon.jpg', content_type: 'image/jpg')

wizardicon = URI.open('https://res.cloudinary.com/df6z4mw2e/image/upload/v1654167323/Heroes%20app/Icons/pxArt_wpthzz.png')
mage.icon.attach(io: wizardicon, filename: 'wizardicon.png', content_type: 'image/png')

puts "Creating quests..."
# physical, mental, intellectual

# social_category_icon = URI.open('app/assets/images/social.png')
# social_category.icon.attach(io: social_category_icon, filename: 'social.png', content_type: 'image/png')

# mental_category_icon = URI.open('app/assests/images/mental.png')
# mental_category.icon.attach(io: mental_category_icon, filename: 'mental.png', content_type: 'image/png')

# physical_category_icon = URI.open('app/assets/images/physical.png')
# physical_category.icon.attach(io: physical_category_icon, filename: 'physical.png', content_type: 'image/png')

# jean_image = URI.open("https://res.cloudinary.com/df6z4mw2e/image/upload/v1653407563/1200px-diplodocus_model_okdf4h.jpg")
# jean_jean.photo.attach(io: jean_image, filename: 'nes.jpg', content_type: 'image/jpg')
adventurer_level_1_quest_1 = Quest.create(level: 1, categorie: "Physical", title: "Breathing exercices under the waterfall", content: "When you talk in a group, you might feel like cold water has been splashed to your face. Take a deep breathe, recenter yourself, release the knot in your stomach. Repeat each time you open your mouth",
  tips: "It's alright to miss the timing of the conversation. Having the intention and preparing the action is already a big step. Each small step counts. Repeat this exercise during 4 days to master it !", occurences: 1, guild: adventurer)
adventurer_level_1_quest_2 = Quest.create(level: 1, categorie: "Social", title: "Friends will guide you", content: "Let's keep going with your progress ! Now that you have defined 5 qualities by yourself, ask 3 friends what they think your qualities are",
  tips: "Asking other will reveal your 'blind spots', which are aspects of yourself that you don't realise ! Enjoy a coffee and share a positive moment with your friend.", occurences: 1, guild: adventurer)
adventurer_level_1_quest_3 = Quest.create(level: 1, categorie: "Mental", title: "A Padawan needs a Jedi", content: "Who do you admire ? Who was your hero when you were younger? Choose at least 2 persons (fictional or real) that inspire you. What values do they have ? ",
  tips: "Let these persons guide you ! Copy what you like about them and let their experiences become your own.", occurences: 1, guild: adventurer)
adventurer_level_1_quest_4 = Quest.create(level: 1, categorie: "Social", title: "Small talk with an outside player", content: "Today, when you go to the grocery shop, do some small-talk with the seller ! They might give you a side quest... ",
  tips: "Smile ! People are more likely to answer if you begin with a smile. Begin small : make eye contact and see if they welcome the interaction. And most of all : have fun ! ", occurences: 1, guild: adventurer)
adventurer_level_1_quest_5 = Quest.create(level: 1, categorie: "Mental", title: "A positive icon", content: "For the next hour only talk in positive sentence. Heroes need to be positive in order to overcome the difficulties they might face.",
  tips: "You might think negatively but don't say it out loud, this the key in succeeding this challenge !
  Your objective : when facing a dragon think 'nice, finally someone strong!' and not 'oh no, he's too strong' ", occurences: 1, guild: adventurer)

adventurer_level_2_quest_1 = Quest.create(level: 2, categorie: "Physical", title: "Don't worry for I am here !", content: "After you wake up take a 'hero pose' during 2 minutes : hands on the hips, back straight, legs wide.",
  tips: "Enjoy the confidence boost that this position gives you. The reason heroes are so confident is because they do it all the time !", occurences: 4, guild: adventurer)
adventurer_level_2_quest_2 = Quest.create!(level: 2, categorie: "Mental", title: "5 qualities to keep insecurities away", content: "Choose 5 qualities that best define you",
  tips: "Think of someone you admire, what do you have in common ?
  It may be easier to begin with general qualities ('I am kind') before diving deeper !", occurences: 1, guild: adventurer)
adventurer_level_2_quest_3 = Quest.create(level: 2, categorie: "Physical", title: "Walking, running, flying", content: "Healthy mind, healthy body ! Both need to be worked together to become a hero. Exercise at least 2 times this week",
  tips: "If you're a beginner, walking 30 minutes also counts ! If you feel up to the challenge, you can check out Darebee for some epic workout inspiration", occurences: 2, guild: adventurer)
adventurer_level_2_quest_4 = Quest.create(level: 2, categorie: "Mental", title: "I am a hero", content: "Today we're going to visualize our goals! Find somewhere quiet, get comfortable, close your eyes and picture in your mind the things that you want in your life.",
  tips: "Too hard ? Do a visualization board instead : print pictures of your dream life, and glue them on a big piece of paper. Put the final product somewhere where you can always see it", occurences: 1, guild: adventurer)
adventurer_level_2_quest_5 = Quest.create(level: 2, categorie: "Mental", title: "Peaceful kingdom", content: "In a journal, take an inventory of your quests so far : your successes, your failures, your likes and dislikes.",
  tips: "Accept limitations : you can't control everything. If it's outside of your control, let it go. You're only at the beginning of your journey, it's normal to struggle. You can't expect to slay a dragon so early in the game...", occurences: 1, guild: adventurer)



adventurer_level_3_quest_1 = Quest.create(level: 3, categorie: "Physical", title: "Somehow I'll make a hero out of you", content: "Meditating helps you sharpen your mind, and therefore your senses and your attention. It is an advantage in every battle ! Meditate at least 3 times this week.",
  tips: "If you're a beginner 10min of meditation will seem extremely hard, don't worry if you fail. Try to refocus every time you loose track !If you don't know where to begin type 'Guided meditation' on Youtube", occurences: 3, guild: adventurer)
adventurer_level_3_quest_2 = Quest.create(level: 3, categorie: "Physical", title: "Daily quest, daily experience", content: "Change your routine ! Leave early, park further away from work and take a walk.",
  tips: "Remember : baby steps ! Your change can be as simple as tidying up your desk.", occurences: 5, guild: adventurer)
adventurer_level_3_quest_3 = Quest.create(level: 3, categorie: "Social", title: "Be nice, with Brice", content: "Do one nice thing for someone today. To become a hero, you must help those in need !",
  tips: "Try volunteering, walking dogs at an animal shelter or cleaning up a beach. Helping other players is a must during your journey !", occurences: 1, guild: adventurer)
adventurer_level_3_quest_4 = Quest.create(level: 3, categorie: "Mental", title: "Don't worry, be happy", content: "When you obsess about tomorrow, you???re too busy judging what hasn???t happened yet to experience what???s happening in the moment. Be more mindful of what's happening right now: concentrate on your breathing and look around you",
  tips: "Tomorrow is a mystery, yesterday is history, and today is a gift. That is why they call it the present. - A very wise turtle", occurences: 1, guild: adventurer)
adventurer_level_3_quest_5 = Quest.create(level: 3, categorie: "Mental", title: "Wors case scenario: a dragon appears", content: "Stuck in your comfort zone? Make a list of your fears, and try to see what could be the worst and the best that could happen if they became real.",
  tips: "It's hard, getting outside your comfort zone, but you get used to it. Slaying a dragon once ? Very hard. Slaying a dragon thrice ? Easy peasy.", occurences: 1, guild: adventurer)



adventurer_level_4_quest_1 = Quest.create(level: 4, categorie: "Social", title: "speak in public", content: "Dare to speak in front of a group of at least 20 people.",
  tips: "You have worked on your breathing in a previous quest, apply this during your speech.
  Remember all the quests you have done so far, they have prepared you for this one.
  Before you begin your speech, tell yourself that you are a lion in front of a group of gazelles, you are Simba and you are the King.
  Run to conquer your territory.", occurences: 1, guild: adventurer)
adventurer_level_4_quest_2 = Quest.create(level: 4, categorie: "Mental", title: "the auto suggestion", content: "Every morning and evening for five days, repeat several times positive phrases that concern you, for example (I believe in myself and will succeed).",
  tips: "Repeat to yourself the positive phrase of your choice while imagining yourself fully confident, doing things you would never have done before.", occurences: 5, guild: adventurer)
adventurer_level_4_quest_3 = Quest.create(level: 4, categorie: "Social", title: "Go out to a bar", content: "Congratulations on reaching this stage. Now, go out on the town, to a bar or a nightclub with friends. At the party, ask someone to dance and engage in conversation if the volume allows.",
  tips: "Ask a friend to help you approach the person if you wish. This is not a failure, you move faster with more than one person !!!", occurences: 1, guild: adventurer)
adventurer_level_4_quest_4 = Quest.create(level: 4, categorie: "Physical", title: "Relax, be peaceful", content: "Take the time during two days to relax for 10 or 15 minutes, do a yoga session, meditation. This will allow you to breathe and to evacuate the negative thoughts that pull you down.",
  tips: "Let yourself go, the goal here is to clear your mind to better move forward.", occurences: 2, guild: adventurer)
adventurer_level_4_quest_5 = Quest.create(level: 4, categorie: "Social", title: "free hugs", content: "Get out of your comfort zone, stand in a busy place holding a sign in front of your chest FREE HUGS! You are the best, don't forget it.",
  tips: "Giving back confidence to the people you meet will give you a lot of confidence.", occurences: 1, guild: adventurer)


mage_level_1_quest_1 = Quest.create(level: 1, title:"Let it go, Let it goooooooo", content: "You'll never know and control everything, choose how you react !", tips: "A dragon appears. not good. Choose your option: you fight, you flee", occurences: 1, guild: mage)

puts "Creating Guild choice"


GuildChoice.create(user: gerard, guild: adventurer)
GuildChoice.create(user: jeanfrancois, guild: adventurer)
GuildChoice.create(user: xavier, guild: mage)
GuildChoice.create(user: marty, guild: adventurer)

puts "Creating quest for guild"


puts "Finished!"

file = URI.open('https://res.cloudinary.com/df6z4mw2e/image/upload/v1654078662/Heroes%20app/Icons/wizard_gcrlju.png')
