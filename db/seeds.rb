
m = User.create first_name: "Marko", last_name: "Clement", email: "marko@example.com", password: "12345678", photo: "http://knowledgeoverflow.com/wp-content/uploads/2012/07/august311.gif"
l = User.create first_name: "Linda", last_name: "Mars", email: "linda@example.com", password: "12345678", photo: "https://d13yacurqjgara.cloudfront.net/users/710/screenshots/217283/jumping-girl-cartoon-character-sketch-coghill.jpg"
j = User.create first_name: "Jason", last_name: "Borne", email: "jason@example.com", password: "12345678", photo: "http://www.mascotdesign.com/_dev/images/famous-cartoon-character-popeye.jpg"
s = User.create first_name: "Smith", last_name: "Klein", email: "smith@example.com", password: "12345678", photo: "http://blog.coghillcartooning.com/wp-content/uploads/2010/08/cartoon-character-portrait-chris-e.jpg"

m.tweets.create post_at: 3.days.ago, text: "Too much agreement kills a chat."
m.tweets.create post_at: 1.days.ago, text: "A successfull man is one who makes more money than his wife can spent. A successfull woman is one who can find such man."
m.tweets.create post_at: 4.days.ago, text: "I may be drunk, miss, but in the morning I will be sober and you will still be ugly. "
m.tweets.create post_at: 6.days.ago, text: "A woman's mind is cleaner than a man's: she changes it more often."
l.tweets.create post_at: 3.days.ago, text: "Before I refuse to take your questions, I have an opening statment. "
l.tweets.create post_at: 4.days.ago, text: "Graphical user interface success infographic buzz monetization virality partnership facebook venture iteration social proof. Virality deployment rockstar funding supply chain crowdfunding partnership user experience business-to-consumer iteration."
l.tweets.create post_at: 5.days.ago, text: "Android return on investment crowdsource marketing metrics client network effects infographic supply chain burn rate pitch paradigm shift disruptive user experience. Creative startup iteration client crowdfunding. Crowdfunding scrum project prototype venture bandwidth. "
l.tweets.create post_at: 21.days.ago, text: "First mover advantage A/B testing startup user experience virality venture network effects churn rate monetization gamification mass market holy grail handshake conversion"
j.tweets.create post_at: 7.days.ago, text: "IPhone graphical user interface stealth crowdsource deployment angel investor MVP churn rate focus business plan value proposition incubator funding. Metrics pitch facebook non-disclosure agreement alpha android branding bootstrapping gamification deployment. Partner network channels traction hackathon disruptive buzz social media vesting period."
j.tweets.create post_at: 1.days.ago, text: "The best Lorem Ipsum Generator in all the sea! Heave this scurvy copyfiller fer yar next adventure and cajol yar clients into walking the plank with ev'ry layout! Configure above, then get yer pirate ipsum...own the high seas, arg!"
j.tweets.create post_at: 5.days.ago, text: "Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate B2C users after installed base benefits. Dramatically visualize customer directed convergence without revolutionary ROI."
j.tweets.create post_at: 3.days.ago, text: "Efficiently unleash cross-media information without cross-media value. Quickly maximize timely deliverables for real-time schemas. Dramatically maintain clicks-and-mortar solutions without functional solutions."
s.tweets.create post_at: 20.days.ago, text: "Technology prototype startup social proof accelerator infographic release early adopters burn rate channels mass market. Stock ownership long tail client validation buyer facebook twitter rockstar pitch MVP technology value proposition. Buyer stealth business plan venture disruptive handshake termsheet MVP interaction design client."
s.tweets.create post_at: 1.days.ago, text: "Completely synergize resource taxing relationships via premier niche markets. Professionally cultivate one-to-one customer service with robust ideas. Dynamically innovate resource-leveling customer service for state of the art customer service."
s.tweets.create post_at: 1.days.ago, text: "8-bit hoodie High Life Carles ethical, squid fanny pack cold-pressed 90's. Normcore ethical retro drinking vinegar authentic. Craft beer post-ironic whatever, try-hard flexitarian meditation leggings lomo tofu. PBR&B DIY Wes Anderson letterpress lo-fi. Heirloom kogi trust fund iPhone photo booth, four dollar toast cornhole distillery cold-pressed cliche mlkshk Austin keffiyeh migas. Health goth cliche cornhole blog wolf, pork belly kitsch cold-pressed meditation."
s.tweets.create post_at: 2.days.ago, text: "Neutra meh slow-carb, gastropub Etsy direct trade typewriter gluten-free cardigan Pinterest trust fund hella. Chillwave Vice Truffaut banh mi squid small batch kogi selvage listicle. Shoreditch keytar mustache lumbersexual, plaid jean shorts VHS."




m.follow(l)
m.follow(s)
j.follow(m)
l.follow(j)
s.follow(l)
j.follow(s)
