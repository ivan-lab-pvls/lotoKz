import 'package:cached_network_image/cached_network_image.dart';
import 'package:card_shark_app/model/news_item.dart';
import 'package:card_shark_app/pages/description_news_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  List<NewsItem> newsList = [
    NewsItem(
      title:
          '"dawoudski" Eliminates The Entire \$100,000 Mystery Bounty Main Event Final Table at 888poker',
      text:
          'Every poker players wants to head into an online poker tournament series in good form to maximize their chances of coming away with a victory and a bankroll-boosting prize. Denmark\'s "dawoudski" did precisely that over the weekend, coming out on top in the \$100,000 Mystery Bounty Main Event for \$10,602 at 888poker, with the \$2.3 million guaranteed XL Spring Series less than a week away. A field of 918 entrants in this weekend\'s Mystery Bounty Main Event meant an overlay of \$8,200, but that did not affect the mystery bounty payments, with one weighing in at \$10,000. That chunky payout went to Ukraine\'s "TitovSerj" despite them falling in 141st position, the second ladder of the payout structure. Their bounty plus prize money meant "TitovSerj" walked away with the most prize money, namely \$10,605. The \$100,000 Mystery Bounty Main Event\'s final table often explodes into life, and sees several players bust in the opening 20-minutes or so. This week\'s edition was different; it took 25 minutes for the first player to lose their stack; "mepaminondas" was that player. "dawoudski" min-raised to 160,000 from middle position with six-four of spades, "mepaminondas" three-bet all-in for 526,152 with ace-ten from the cutoff, and the original raiser called. A six on the flop proved enough to send "mepaminondas" home in eighth. It may have taken 25 minutes for the first finalist to bust but only another 40 minutes to reduce the player count to one. "rekych.kg" looked down at ace-jack and moved all-in for 958,308 from the button during the 40,000/80,000/10,000a level. "dawoudski" called from the big blind with king-queen before flopping a full house to leave the at-risk player drawing almost dead. A brick on the turn locked up the hand for "dawoudski" and their Vietnamese opponent crashed out. The final six became five on the half hour mark when Belarusia\'s "frostinho" bowed out., Again, it was "dawoudski" who did the damage, min-raising to 160,000 from the cutoff with ace-jack and calling the 1,384,502 shove from "frostinho" in the small blind. "frostinho" showed the dominated ace-nine, which was drawing dead on the flop courtesy of two jacks rearing their heads.',
      image: 'https://pnimg.net/w/articles/4/663/a5fde35353.jpg',
    ),
    NewsItem(
      title: 'Win Your Way to World Poker Tour Montreal This May on WPT Global',
      text:
          'WPT Global continues to serve as the exclusive online poker gateway to World Poker Tour live events, with the next destination on the radar being the eagerly anticipated WPT Montreal stop, featuring a staggering prize pool of over \$3.5 million CAD. As a premier online platform, WPT Global offers players the opportunity to qualify for the Championship event and even secure a spot in Day 2 by participating in Day 1s for both the WPT Prime and WPT500 events. Additionally, players can immerse themselves in the action-packed atmosphere with the WPT Meet Up cash game night, where bomb pots and enticing prizes will keep the excitement flowing throughout the evening. WPT500 Online Day One - Wednesday May 8, 7:45 p.m. CDT With a buy-in of \$440 USD, this event guarantees a prize pool of \$500,000 CAD. Day 1 unfolds online, leading to the final 15%, followed by the top 5% battling it out live at the Playground Poker Club for the coveted title and a lion\'s share of the prize money. WPT Prime Online Day One - Sunday May 12, 7:25 p.m. CDT Players can secure their spot in the WPT Prime event with an \$850 USD buy-in. 12.5% of the field will advance to the live Day 2, where they will vie for the top prize. WPT Montreal Championship Satellite - Sunday May 12, 8:25 p.m. CDT On the same night, players can enter a satellite with a \$220 USD buy-in for a chance to win one of at least three seats to the \$3,500 CAD buy-in WPT Montreal Championship, featuring a remarkable \$2,000,000 CAD guarantee. Securing a seat through WPT Global paves the way for competing for the illustrious Mike Sexton WPT Champions Cup.',
      image: 'https://pnimg.net/w/articles/4/663/a3fa353ec0.jpg',
    ),
    NewsItem(
      title:
          'Add Some Mystique to the PokerStars SCOOP Grind with the Mystery Bounty Events',
      text:
          'Mystery bounty tournaments are relatively new at PokerStars but that has not stopped the online poker giant from running three dozen such tournaments during the 2024 Spring Championship Of Online Poker (SCOOP). Every Wednesday, Thursday, and Saturday, mystery bounty tournaments are on the SCOOP schedule, waiting for you to get involved and win big. What Are Mystery Bounty Tournaments? Mystery bounty tournaments are one of the most exciting additions to the poker tournament world in recent years. They play like any other traditional tournament before morphing into something entirely different. You wouldn\'t know you were playing in a PokerStars mystery bounty tournament until you reached the money places because they play like every other multi-table tournament you have ever played. However, once the money bubble bursts, the prize pool reserved for bounties is divided up, and an unknown, or mystery, bounty is placed on the head of every remaining player. Eliminating an opponent claims their bounty. That bounty\'s value remains a mystery until the PokerStars software opens the mystery bounty envelope and reveals your prize. Most of the mystery bounties are on the smaller side, but there are always some substantial prizes waiting to be pulled. Once the mystery bounties are in play, you can check the tournament lobby to see their value and how many of each size remain. Upcoming PokerStars SCOOP Mystery Bounty Events History will be made at 5:30 p.m. BST on May 8, when the first-ever SCOOP mystery bounty events shuffle up and deal. One of those inaugural SCOOP mystery bounty tournaments is crammed full of value, with a cool \$200,000 guaranteed for only a \$55 buy-in. SCOOP 22-L: \$55 NLHE Wednesday Mystery is the tournament you are looking for if you want an affordable buy-in but a chunky prize pool. At least \$100,000 will be awarded from the regular prize pool, with another \$100,000 being shared via mystery bounty payments once the money bubble bursts.',
      image: 'https://pnimg.net/w/articles/4/663/a2be6ce0be.jpg',
    ),
    NewsItem(
      title: 'Card Sharp Exposes How Texas Poker Room Dealer "100% Cheated"',
      text:
          'Last week, a video surfaced apparently showing a false shuffle taking place at Legends Poker Room in Houston. On Monday, a known card sharp who co-founded the Hollywood high-stakes poker game that inspired the book and movie, Molly\'s Game, released a video exposing how he claims the dealer cheated, and provided some valuable advice for poker players. The incident at Legends, a controversial scandal-ridden Texas poker room, was exposed by Shaun Deeb, who released a video on X that was sent to him by another poker player. Most who commented on the tweet agreed that a rigged deck or false shuffle occurred, while some suggested perhaps the dealer was just inexperienced. But Houston Curtis, author of Billion Dollar Hollywood Heist, left little doubt about what transpired at Legends in a detailed YouTube video. Curtis created two videos on dealer cheating in Texas poker clubs with Part I having been released Monday, and that one focuses on the aforementioned Legends Poker Room incident. In Part II, he will discuss a separate but similar incident at another Texas card room. Before getting into Part I, let\'s take a quick look at the video Deeb shared on X. If you watch closely, it appears the bottom cards are never shuffled in with the rest of the deck. Curtis is confident this was done by no accident, and that the dealer is "100% cheating." "He puts the cut card out in front of him first. That is no-no number one," Curtis explains before going on to say that players should ask the dealer to stop shuffling the deck if they catch the dealer place the cut card in front of the deck before riffling begins. Curtis then goes on to explain the dealer is performing a push-through shuffle as opposed to properly shuffling in the cards, and then gave a breakdown on how it all went down at Legends.',
      image: 'https://pnimg.net/w/articles/4/663/8faffab137.jpg',
    ),
    NewsItem(
      title:
          'Global Poker Rattlesnake Open VII Running May 6-26 Has Big Guarantees',
      text:
          'The latest Global Poker series gets underway today with the Rattlesnake Open VII, a series taking place May 6-26 that has some massive guarantees attached. The 21-day poker extravaganza will be one to remember with Gold Coins 965,000,000 and Sweeps Coins 2,220,000 in total prizes guaranteed. The Main Events boast GC 40,000,000 and SC 200,000 in total prizes. There are also 108 Gold Coin and 108 Sweeps Coin events and a total of 216 Rattlesnake Open VII trophies up for grabs. A freeroll event on May 5 kicked off the series, offering participants a chance to snag GC 2,000,000 and SC 5,000 in Rattlesnake Open VII entries. Weekend popup freerolls will fuel even more excitement as they take place every Saturday and Sunday until May 19. There is also a new mystery bounty event that will take place on Saturdays. Gold Coin event participants will have the opportunity to win exclusive Rattlesnake Open Champion Packs, and there are plenty of other pieces of Rattlesnake Open-specific merch up for grabs. Players can also fight for the prestigious Global Poker Champion Pack, which includes a Rattlesnake Open t-shirt, cap, and the iconic Rattlesnake trophy. The RattleSnake Open has grown into one of the most popular poker tournament series on Global Poker. Last year, "Donkeychem" took down the GC Main Event for 8,160,000, while "Nobsfor1" emerged victorious in the SC Main Event to win SC 34,420. Other winners during last May\'s series include "Toughtobeat", "TheRealCappy", "Muppet Baby" and Team PokerNews streamer Kyle "KAA17" Anderson. For registration information and a breakdown of the prizes, visit GlobalPoker.com. The full Gold and Sweeps Coins schedules for the Rattlesnake Open VII are available in the tables below.',
      image: 'https://pnimg.net/w/articles/4/663/697f3aa7e3.png',
    ),
    NewsItem(
      title:
          'Aleksey Savenkov Claims Victory in the \$1,100 Luxon Pay Mystery Bounty',
      text:
          'The final day of the \$1,100 Luxon Pay Mystery Bounty, running at the Merit Royal Diamond Hotel and Casino in Northern Cyprus as part of the 2024 Mediterranean Poker Party, has now concluded. It took more than 18 hours of grinding on Day 2 for Aleksey Savenkov to emerge as the winner, taking home the grand prize of \$85,000 plus bounties. A total of 1,207 entries were made to the event throughout five flights, to create a prize pool of \$1,207,000, surpassing the \$1,000,0000 guarantee. 181 players returned for the final day of action, and the bustouts came fast and furious, losing losing almost half of the field by the third level of the day. Savenkov dominated the entire final table, single handedly eliminating six of the final nine. Maxim Brovko was first to bust after the final table commenced when he jammed jack-ten suited but couldn’t defeat the ace-queen of Tamazi Skhirtladze despite flopping a straight a flush draw. Although Aleksandr Kirichenko was unable to make it to the final table, he managed to pull the largest bounty worth \$70,000 early in the day. Action continued to be rapid, with only about 20 minutes passing before David Boyaciyan felt the wrath of Savenkov as well, finisihing in 8th place as he couldn’t win the race with ace-king against pocket sixes. With seven left, action came to a halt, with nobody exiting the tournament for a little over two hours. Eventually, another victim of Savenkov fell as Damir Gabdullin who had just doubled up, immediately got his stack in the middle with pocket jacks, but ran into pocket queens. It was deja vu as Ebrahim Ehghaghi had gotten his stack in the middle before the flop with pocket jacks once again, against Savenkov. This time he was up against five-three suited, and despite make a set of jacks, he still was forced to leave the tournament as Savenkov made a flush.',
      image: 'https://pnimg.net/w/articles/4/663/933245e844.jpg',
    ),
    NewsItem(
      title:
          'More Than \$2.3 Million Guaranteed During the 888poker XL Spring Festival in May',
      text:
          '888poker is gearing up for the latest edition of its ever-popular XL Spring Series. Running from May 12-28, the XL Spring series features 43 numbered events and more than a dozen side events thawith combined guaranteed prize pools tipping the scales at over \$2.3 million. The 888poker XL Spring Festival shuffles up and deals on May 12 with its first four numbered events, each being a mystery bounty tournament. 888poker has embraced the mystery bounty craze, and the site\'s players love them. The four opening events come with buy-ins of \$11, \$55, \$109, and \$525, and combined guarantees worth \$212,000! The \$109 Opening Event Mystery Bounty boasts a \$120,000 guarantee on its prize pool, and a jackpot mystery bounty weighing in at \$12,000! The 888poker Twitch channel will stream the final table\'s action on May 13. Two XL Spring Series Main Events catch the eye. Event #40 is the Mystery Bounty Mini Event, a \$25 buy-in affair with \$100,000 guaranteed. Several Day 1s are scheduled from May 12 right through to May 27, which is when the second and final day occurs. Guaranteeing a cool \$1 million is the 41st event of the 888poker XL Spring Series. Day 1s costing \$888 began in late April and continue up to and including May 27. Day 2 shuffles up and deals on May 27, ending when only the final table remains. Those eight finalists then return to the action on May 28 to crown the worthy champion under the watchful eyes of the 888poker Twitch viewers. The 2023 XL Spring Series Main Event was a \$250 buy-in No-Limit Hold\'em mystery bounty tournament with a \$500,000 guarantee. "lxiltxZtKQn" outlasted 1,685 opponents on their way to scooping \$38,263, including bounty payments. "Lokiape" of the United Kingdom pulled a massive \$50,000 mystery bounty before they busted, resulting in them taking home the largest slice of the prize pool. This year\'s Main Event has a \$1 million guarantee, which means a jackpot bounty of \$100,000! While the \$888 buy-in for this tournament is high, 888poker is running dozens of satellites, some from as little as \$2.20, opening the door for everyone to have a shot at a seven-figure prize pool.',
      image: 'https://pnimg.net/w/articles/4/663/3794c794dc.png',
    ),
    NewsItem(
      title: 'Action-Packed Sunday as PokerStars SCOOP Gets Underway',
      text:
          'Welcome to PokerNews and our daily coverage of the 2024 Spring Championship of Online Poker (SCOOP) on PokerStars. Over the next three weeks, we\'ll be bringing you all the latest from the festival, checking in on the performance of PokerStars Ambassadors, and keeping tabs on the all-important SCOOP League, where poker fans can enter to win a trip to the UKIPT Malaga festival. So, without further ado, let\'s dive into the first day\'s action! After his 11th place finish in the 2024 EPT Monte Carlo Main Event, it\'s clear that Adrian "Amadi_017" Mateos has swapped the live felt for the online tables and looks ready to add to his five SCOOP titles. He leads seven-time SCOOP champion Simon "C. Darwin2" Mattsson as one of 13 survivors in SCOOP 04-H: \$5,200 Titans, the biggest buy-in event of the opening night. Plenty of big names came and went, including PokerStars Ambassador Lex "L. Veldhuis" Veldhuis, who fired three times but finished short of the money. Mateos\' first SCOOP titles came in 2017, with another following three years later and a hat-trick the following in 2021. All five of Mateos\' titles have come in four-figure buy-in events — can he add another in this event? The final table of SCOOP 03-H looks set to be massive, with Estonian player "DingeBrinker" leading the final nine. From an initial field of 184, these players have 22 SCOOP titles between them — but "DingeBrinker" isn\'t one of them! Will he have what it takes to come out on top? He holds a slight lead from Juan "Malaka\$tyle" Pardo (five SCOOP titles), with Patrick "pads1161" Leonard and Simon "C. Darwin2" Mattsson (both seven SCOOP titles) sandwiching "13santoy13" (one SCOOP title) in midfield.',
      image: 'https://pnimg.net/w/articles/4/663/896339ae17.jpg',
    ),
    NewsItem(
      title:
          'Kasey Lyn Mills is Believing in Herself and it\'s Translating into a Career Year',
      text:
          'Kasey Lyn Mills added another cash to her stellar year on Sunday in the \$3,800 buy-in World Poker Tour (WPT) Choctaw Championship, and she still has a healthy stack playing for her share of a \$2.1 million prize pool. On the Day 2 dinner break, the Oklahoma native who now resides in Dallas, Texas spoke with PokerNews to discuss her background in poker and to share her thoughts on why she\'s taken her tournament game to the next level in 2024. At the time of publishing, 76 players remained in the WPT Choctaw Championship at Choctaw Casino & Resort in Durant, Oklahoma. Mills exited the tournament room on dinner break with 475,000 chips, and the blinds were at 4,000/8,000. With now surpassing \$140,000 in The Hendon Mob cashes in 2024 — and potentially much more depending how she finishes in this event — she\'s already having the best year of her tournament career. "I think I\'ve been leaning into really believing in myself and my skillset," Mills said of her performance this year. "I think I had some confidence issues previously. We all do at times, and they still pop up from here and there. But I really have worked on mindset as well as my game over a lot of years. But mindset has made a huge difference for me, and self-confidence." Mills, a sponsored pro for the Poker Now online poker club, is fresh off a seventh place finish in the \$5,000 buy-in WPT Voyage Championship event, which paid \$42,000. But her career-best score came in a World Series of Poker Circuit (WSOPC) \$1,000 buy-in Monster Stack event in January, beating out 352 entrants for \$66,609. That was her first career Circuit ring, and then she won her second just two days later in a \$400 buy-in tournament for another \$22,433. Both of those events took place at Choctaw, the same casino she\'s attempting to reach her first official World Poker Tour final table. What makes her tournament accomplishments in 2024 (and also 2023) so impressive is that she doesn\'t grind the tournament circuit like many pros. In fact, she only plans to enter "six or seven" events this summer at the World Series of Poker (WSOP).',
      image: 'https://pnimg.net/w/articles/4/663/8231f58877.jpg',
    ),
    NewsItem(
      title: '8 More WSOP Rules You Didn\'t Know Existed',
      text:
          'There are plenty of bounty tournaments on the 2024 WSOP schedule, with each player receiving a special Bounty marker that can then be redeemed for the value of the bounty, which will vary from event to event. However the rules, under Section 39c, stipulate that if you lose your bounty marker you will be required to pay the bounty value to receive another one. This money then goes straight into the prize pool. Not so bad in the \$1,000 Super Turbo Bounty, but what about the \$10,000 Super Turbo Bounty. And if you\'re playing either the Mystery Millions or a Mystery Bounty event? Listen up. If you are found to be playing in either of these events without a bounty marker, you may be subject to a penalty AND be required to pay the average value of all remaining bounties at that point in the tournament. Remember: The Mystery Millions guarantees the top bounty is \$1 million, which could cause a headache for someone should it stay in. However, rest assured that if the bounty marker is later found, the penalty payment will be returned to the participant No one wants to be sat next to a smelly player, but did you know that the WSOP rules make specific reference to players like this? Under the \'Participant Conduct\' section, WSOP Tournament Staff may implement sanctions on any Participant whose personal hygiene has become "disruptive" to other players at the table, and refuses to "remedy the situation". In the last article, we mentioned that "Excessive Chatter" was a punishable offense. This time we\'re here to tell you that "Taunting" is also explicitly outlawed as per the WSOP rules. The official wording is that any player who taunts another player "through theatrics or gestures" is subject to penalty. This also covers any form of "inappropriate behavior" intended to disrupt other players at the table. Under \'Communication\', the WSOP rules state that all cell phones must be silenced during Tournament play, and although players are allowed to use their phones at the table — providing they\'re not in a hand — a special rule is in place for texting someone at the same table. In short, if you attempt to communicate with someone at the same table as you — you\'re both disqualified.',
      image: 'https://pnimg.net/w/articles/4/645/a86c2d985f.jpg',
    ),
    NewsItem(
      title:
          'The Grand Prix Turbo Series Miami Edition Returns to Global Poker From May 3-5',
      text:
          'Get ready to put the pedal to the metal this weekend because the Grand Prix Turbo Series Miami Edition returns to Global Poker from May 3-5. This online event is the first of four exhilarating rides throughout 2024, giving Global Poker players the chance to play for some amazing prizes. The exciting Grand Prix Turbo Series Miami features 24 tournaments — 12 for Gold Coins (GC) and 12 for Sweeps Coins (SC) – and the chance for Global Poker players to get their hands on exclusive Global Poker and Scuderia Ferrari merchandise. It may only span across the weekend but the Global Poker x Grand Prix Turbo Series will be a thrill-a-minute and is a must-play for any social poker player. Global Poker x Grand Prix Turbo Series Miami Gold Coins Events GC125,000,000 by the time the 12th and final tournament concludes on May 5. Four Gold Coins events take place each day, with tournament entries weighing in at GC11, GC33, and GC99, and guarantees of up to GC15,000,000. The four Grand Prix Turbo Series Miami tournaments on May 3 are played as a mystery bounty event, with play switching to a Progressive Bounty format on May 4. The final day\'s action on May 5 sees the tournaments\' format swap to a 1R1A, which means one rebuy and one add-on are permitted while late registration is open. Pay close attention to the tournament starting at 5:00 p.m. ET on May 5 because it is the Gold Coins Main Event. The tournament entry is set at GC99,000, and a whopping GC50,000,000 is guaranteed! Sweeps Coins players can get in on the action and burn some rubber down the home straight with 12 tournaments of their own. The Sweeps Coins tournaments follow the same format as their Gold Coins cousins, except the tournament entries and prize pools are in Sweeps Coins. Tournament entries of SC11, SC33, and SC99 are available each day, while guarantees start at SC4,000 and increase all the way to SC100,000. That juicy amount is reserved for the Sweeps Coins Main Event at 5:00 p.m. ET on May 5.',
      image: 'https://pnimg.net/w/articles/4/663/4c8a54f098.jpeg',
    ),
    NewsItem(
      title:
          'The EA Poker Tour Heads to Dusk Till Dawn For an 11-Day Extravaganza',
      text:
          'The EA Poker Tour (EAPT) is currently in sunny Cyprus, where it is part of the Mediterranean Poker Party and the EAPT Grand Final but plans are already afoot for when those festivals end. Between May 15 and May 26, the EAPT will take over the home of British poker, Dusk Till Dawn for the EAPT UK festival. Most EAPT Main Events cost €560 and have guaranteed prize pools of €200,000, but Dusk Till Dawn rarely does anything by halves and has slapped a £500,000 guarantee in the EAPT UK Main Event\'s prize pool. To help reach that bumper guarantee, the EAPT UK has five £560 flights held at Dusk Till Dawn, one £560 online Day 1 hosted on GGPoker, and at least 90 seats guaranteed to be won in live satellites at Dusk Till Dawn. The EAPT UK Main Event is not the only tournament on the schedule with a six-figure prize pool. The £340 Luxon Pay Mystery Bounty boasts a £100,000 guarantee, the same amount guaranteed in the £1,100 No-Limit Hold\'em High Roller. You should also check out the £230 buy-in, £50,000 guaranteed DTD Cup, and the series-ending £230 No-Limit Hold\'em Deepstack Turbo that has £20,000 guaranteed. Don\'t worry if you can\'t make it to EAPT UK Main Event because the PokerNews live reporting team is heading to Dusk Till Dawn and bringing you all of the action as it happens. Our team will be there from the first cards pitched on Day 1A until the final hand concludes and the champion is crowned. Maybe that champion will be you? The EAPT has existed since 2013 but recently underwent a complete rebranding. In June 2023, it stopped in Rozvadov and has since stopped in Milan, Barcelona, Bucharest, Bratislava, Madrid, and Malta. EAPT Malta ran in April 2024 and saw Lorenzo Di Blasi take home €50,225 for his victory in the €560 EAPT Malta Main Event. Amazingly, just three days before his Main Event victory, Di Blasi took down the €120 No-Limit Hold\'em Flight to MPP tournament for €8,500.',
      image: 'https://pnimg.net/w/articles/4/663/39ff3a640a.jpg',
    ),
    NewsItem(
      title:
          'Warm Up for Summer with 888poker LIVE Barcelona & Qualify for Less Than \$1',
      text:
          'Get ready to mark your calendars because 888poker LIVE is gearing up for its next exciting stop in the vibrant city of Barcelona, Spain! From May 8-20, 2024, all roads lead to the illustrious Casino Barcelona, nestled along the picturesque seafront. This edition promises to deliver an unforgettable fusion of thrilling poker action, stunning surroundings, and warm Mediterranean weather. The focal point of the series is undoubtedly the eagerly anticipated 888poker Main Event, featuring a €888 buy-in. With multiple flights scheduled from May 16-19, players have ample opportunities to secure their spot in this prestigious tournament. The final showdown will take place on May 20, where the poker elite will battle it out for glory and a share of the prize pool. Adding to the excitement, 888poker Team Ambassadors and Streamers will grace the event with their presence, ensuring a lively atmosphere and unforgettable experiences for all attendees. For those unable to join the festivities in person, fear not! Most of the tournament will be live-streamed directly from Casino Barcelona on the 888pokerTV Twitch channel. Prepare to witness the drama unfold in real-time and cheer on your favorite players from anywhere in the world. Dreaming of experiencing the thrill of 888poker LIVE Barcelona firsthand? You can turn that dream into reality through a variety of online satellites and qualifiers. With buy-ins starting at just 1₵, players of all levels have the chance to secure their perfect poker getaway. Now is the perfect time to join 888poker. If you have not already done so, remember to download 888poker via PokerNews and create your free account. Be sure to check out our 888poker review by clicking the button below to find out about all the amazing welcome bonuses that the site has on offer. The information is kept up to date, so you are guaranteed to find the best 888poker bonus and offers',
      image: 'https://pnimg.net/w/articles/4/662/24fd045c7d.png',
    ),
    NewsItem(
      title: 'Five Questions to Ask Yourself at Your First WSOP',
      text:
          'The 2024 World Series of Poker takes place from May 28-July 17 at Bally\'s, Las Vegas. And with the countdown to the crown jewel of the poker calendar underway, thousands upon thousands of poker fanatics are starting to plan out their jaunt in Sin City for potentially the biggest WSOP of all time. For many players, the WSOP is a dream come true, and the experience can be both thrilling and overwhelming, especially for those attending for the first time. For those popping their Vegas cherry, we\'ve given you five questions to ask yourself at your first WSOP that should help you make the most of your experience. The WSOP can be a long and gruelling tournament series, with dozens of events spanning several weeks. Before you arrive, it\'s essential to set realistic goals for yourself. Are you looking to win a bracelet? Do you want to cash in at least one event? Or are you simply there to gain experience and have fun? Whatever your goals may be, make sure they\'re specific, measurable, and realistic. Having clear goals will help you stay focused and motivated throughout the tournament series. Playing in WSOP events can be expensive, with buy-ins ranging from a few hundred dollars to tens of thousands. Before you register for an event, make sure you have a solid understanding of your bankroll and how much you can afford to spend. You don\'t want to find yourself busting out of multiple events and unable to play in the events you really want to play in. It\'s essential to be honest with yourself about your bankroll so you don\'t end up putting yourself in a tough financial situation. Below is a table of the number of events within a specific buy-in range for you to see what options are available. The WSOP can be a high-pressure environment, with the stakes and competition at an all-time high. It\'s important to have a plan for how you\'ll handle the stress and pressure that comes with playing in these events.',
      image: 'https://pnimg.net/w/articles/4/65d/735455686b.jpg',
    ),
    NewsItem(
      title: 'Did Dealer Rig the Deck at Scandal-Ridden Texas Poker Room?',
      text:
          'A dealer at the popular but controversial Legends Poker Room in Houston has been accused of rigging a deck in a cash game. Shaun Deeb, fresh off his 13-bullet Texas Poker Open Main Event run at nearby Champions Club, shared a video sent to him from a player at Legends that might be a bit concerning to those who frequent the poker club. "Got a pretty disgusting video from a player down here about the legend poker room down in Houston [sic] seems there was a few mechanic dealers down there," Deeb tweeted. In the initial low-quality video, it appears to show a dealer failing to properly shuffle a deck, and instead placing some cards in a specific order. It\'s unclear if the dealer is just improperly trained or if the shuffling manner was intentional. Cheating accusations are nothing new at Legends Poker Room. One player who commented on the tweet claims to have a "friend" who was cheated in a \$20,000 "setup" hand at the Houston area card club. Early Wednesday morning, Deeb shared the same video clip but with a clearer picture along with a few extra details. He claims to have spoken with a floor manager at Legends who informed him that multiple dealers in the past month were fired for "messing with the decks." The dealer appears to keep the bottom section cards from the deck in the same spot throughout, never shuffling those cards in with the rest of the deck. But how the hand transpired and whether a cooler was dealt is unclear. Deeb\'s tweet generated numerous responses, some X users sharing personal stories, none of which were positive, about playing at Legends Poker Room, which is one of the busiest card rooms in Houston. "Legends is rife with this, and they don\'t just setup the hands to make you lose either. They will also set it to make u win when you first sit down to reel you in," @loch_bryan claims. "I have never stepped foot in that place and never will. So many good rooms in Houston to choose from," Carl Nece wrote. Some players who aren\'t familiar with poker in Texas discovered from this video that card shufflers aren\'t found in most Longhorn State poker clubs. But that doesn\'t mean shady behavior among dealers is a regular occurrence in the top rooms in the state, such as Texas Card House, The Lodge, and others.',
      image: 'https://pnimg.net/w/articles/4/663/192847a2ab.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 65, 16, 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                      padding: const EdgeInsets.fromLTRB(12, 4, 12, 4),
                      decoration: BoxDecoration(
                          color: const Color(0xFFF8624F),
                          borderRadius: BorderRadius.circular(32)),
                      child: Image.asset('assets/arrow_back.png')),
                ),
                const Text(
                  'News',
                  style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
                const Text(
                  'News',
                  style: TextStyle(
                      fontFamily: 'SF Pro Text',
                      color: Colors.transparent,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [getNews()],
              ),
            )),
          ),
        ],
      ),
    );
  }

  Widget getNews() {
    List<Widget> list = [];
    for (var news in newsList) {
      list.add(InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute<void>(
                builder: (BuildContext context) => DescriptionNewsPage(
                      news: news,
                    )),
          );
        },
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.white.withOpacity(0.08)),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Container(
                height: 98,
                width: 98,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: CachedNetworkImageProvider(
                          news.image!,
                        ))),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Expanded(
              child: Row(
                children: [
                  Flexible(
                    child: Text(
                      news.title!,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontFamily: 'SF Pro Text',
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ));
      list.add(const SizedBox(
        height: 8,
      ));
    }
    return Column(
      children: list,
    );
  }
}
