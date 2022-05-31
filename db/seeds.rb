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
mage = Guild.create(name: "Mage", description: "the guild of the curious")

puts "Creating quests..."
adventurer_level_1_quest_1 = Quest.create!(level: 1, title: "La confiance en soi", content: "Cite 3 de tes qualité !",
  tips: "Tu peux commencer par un qualité simple (ex: la gentillesse) puis aller vers une qualité plus recherchée.", occurences: 1, guild_id: gerard.id)

adventurer_level_1_quest_2 = Quest.create!(level: 1, title: "La confiance en soi", content: "Demande à 3 amis de citer 3 de tes qualités.",
  tips: "On va ici aller plus loin dans cet exercice en te faisant constater le regard bienveillant de ton entourage et ce que tu leur apportes de positif", occurences: 1, guild_id: gerard.id)

adventurer_level_1_quest_3 = = Quest.create!(level: 1, title: "La confiance en soi", content: "Réfléchis à 1, 2, 3 mentors inspirants",
  tips: "Un mentor est une personne que tu admires par sa personnalité ou ses actions, ce peut être une personne de ton entourage ou non. Les mentors te permettront de t'inspirer !", occurences: '1', guild_id: gerard.id)

adventurer_level_2_quest_1 = Quest.create!(level: 2, title: "La psychologie positive", content: "Pendant la prochaine heure, tourne toutes tes phrases de façon positive !",
  tips: "Plus de négation (ne...pas...ect).", occurences: 1, guild_id: gerard.id)

adventurer_level_2_quest_2 = Quest.create!(level: 2, title: "La prise de parole", content: "Prend une respiration entre chaque phrase lorsque tu parles en publique/en groupe social.",
  tips: "Ce la pose ton discours et te permet de ralentir le stress lié à la prise de parole", occurences: 1, guild_id: gerard.id)

adventurer_level_2_quest_3 = Quest.create!(level: 2, title: "La prise de parole", content: "Fait une pause de super-héros en privé avant ta prise de parole.",
  tips: "Poser deux minutes les mains sur les hanches augmente la testostérone de 20%, autrement dit l’hormone de la dominance, tandis que cela fait baisser la cortisol de 25%, autrement dit l’hormone du stress. ",
  occurences: 1, guild_id: gerard.id)

mage_level_1_quest_1 = Quest.create(level: 1, title:"TRY SOMETHING NEW mage", content: "Lorem ipsum", tips: "Lorem ipsum", occurences: 1, guild: mage)

puts "Creating Guild choice"

guild_aventurer = Guild.create(name: "Aventurier", description: "Prends confiance en toi !")
guild_wizard = Guild.create(name: "Sorcier", description: "Apprends à prioriser !")
guild_scientist = Guild.create(name: "Scientifique", description: "Observe et analyse ton environnement !")

GuildChoice.create(user: gerard, guild: adventurer)
GuildChoice.create(user: jeanfrancois, guild: adventurer)
GuildChoice.create(user: xavier, guild: mage)
GuildChoice.create(user: marty, guild: adventurer)

puts "Creating quest for guild"
UserQuest.create(status: "pending", user_occurences: 1, quest: adventurer_level_1_quest_1, user: gerard)
UserQuest.create(status: "pending", user_occurences: 1, quest: adventurer_level_1_quest_2, user: gerard)
UserQuest.create(status: "pending", user_occurences: 1, quest: adventurer_level_1_quest_3, user: gerard)

puts "Finished!"
