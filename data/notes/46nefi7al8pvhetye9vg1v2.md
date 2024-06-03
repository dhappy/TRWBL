* **[[Spaces|13-13s.axes.projects.spaces]]: ^spaces** Based in a 3D model of the spaces under the jurisdiction of the game, `Spaces` has three primary functions:
  * Each user *should* have a space allotted to them at every point in time. `Spaces` keeps track of where everyone controls.
  * Areas within the system will need maintenance. `Spaces` allows land holders to specify what they desire to have done and for those staying to claim tasks to reduce their rent.
  * Improvements will be made to the areas and `Spaces` tracks planned building and facilitates the decision making process for determining what will be done.

* **[[Duos|13-13s.axes.projects.duos]]: ^duos** A cornerstone of the game are pairs of people riding around in cars and performing a variety of tasks dependent on the need. `Duos` tracks the location of everyone. Publicly location data is published in terms of [[waypoints|philosophy.waypoint]], but trusted parties will have more specific data so as to make better plans.

* **Dashcam: ^dashcam** This will be a ride-along companion for the duos. It will perform several functions:
  * Record the activities of the vehicle capturing the GPS data as an associated subtitle stream.
  * Monitor the video for police cars & collaboratively maintain a map of their known locations both for avoiding them and involving them as quickly as possible when necessary.
  * If the car is detained by law enforcement, connect the cameras via a livestream with someone to provide legal advice and a list of potentially interested parties.

* **[[Ship|13-13s.axes.projects.ship]]: ^ship** Homed at [ship.via.autos](https://ship.via.autos) the shipping system tracks the location of all the parcels, the Holders where they can be stored, and their eventual destinations.

* **[[The New Black Market|13-13s.axes.projects.market]]: ^substances** An interface for selling things with digital testing certificates. Aimed in large part at the violence, dilution, & theft-free distribution of substances, regardless of their provenance.

* **[[Serial Mobbing|13-13s.axes.projects.mob]]: ^pairs** Development of these projects is through a series of mob programming meetings where the developers interleave their comings and goings to maintain continual work on a project. Peers review the process, and, based on their evaluations, reputations are formed.

* **Mïmis: ^mimis** A distributed graph database holding a set of overlay graphs which serve to contextualize a collection of IPFS CIDs. It maintains a versioned filestore with knowledge graphs describing the conceptual relationships on top.

  Use Cases: universal library, anonymous reviews, event recommendation

* **Skin: ^skin** An interface to take the images in [[Mïmis|#^mimis]] and allow collaborative combinations destined to be printed into a skin for one of thirteen vehicles to be the initial [[Duos|#^duos]] network.

* **Stuff: ^stuff** What does the world hold, where is it located, and who owns it. It also allows for transfer of ownership & [[shipping|13-13s.axes.projects.ship]].

* **When: ^when** The revolution doesn't use the Christian / Babylonian time-keeping systems. Instead, time is tracked on the Sidereal Zodiac for ceremonial events & the Hijri for the production calendar, both using a 10-hour day w/ 100 minutes per hour / 100 seconds per minute. `When` encompasses using those time metrics throughout all the systems.

* **Ring: ^ring** Part of rules enforcement relies on the credible threat of physical force. This is determined by peer-reviewed recordings of fights.

* **Lists: ^lists** Many of the systems rely on some party to order a priority queue, be it for content recommendation for a given semiotic point, or bids for a particular programming slot, or events to fill a block of time.

The recommendations for events are based primarily on the probability that the involved parties will think of it as optimum at points in the future.

---***---

This is the system to plan & evaluate the building of the software I think will change the world.

There are 13 *(of course)* interwoven projects. It's a constantly shifting set, but currently:
 ➀ Courier: Tells the blind delivery service where to pick up & drop off stuff. If the courier is stopped, it connects to legal representation that intercedes between you & the police.
 ➁ Fight: Evaluations of recordings of battles used to determine genuine physical threatningness for use in rules enforcement.
 ➂ Rules: There is a massive map of the world with 3D representations allowing the precise rental of all spaces. The renter of each will determine the ruleset for that area. Worst case scenario is generally expulsion from an area & in that case force may be applied, thus the need for dangerous people.
 ➃ Mïmis: A "filesystem" in a graph database with easy interfaces for creating new subgraphs. Contains all information regardless of copywrite claim. Chunks of the graph are fed to various AIs. 
 ➄ Lease: Conveys the ability to stay in occupied spaces. Also to coordinate the occupation of spaces. Leases in different areas will not be available to all the teams at all times. There is a pattern to the alternation of Red Alliance, Purple Alliance, Blue Alliance, Purple Alliance, Red Alliance, etc.
 ➅ The Veilid Network: An anonymizing layer created mobile-first. It creates a virtual overlay network within which information is routed without knowledge of the underlying (TC/UD)P/IP-based internet. It allows us to have Mïmis propagate itself including copyrighted information.
