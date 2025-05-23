---
id: ibxtuerfge4563456erttg-13131313131313131313131313
title: To @Omka & to @lerner concerning program ideas
desc: ''
updated: 1730223712004
created: 1730223712004
nav_order: 120
---

Ok, the online classroom is definitely an idea that's come, but unfortunately that's evidinced by a bunch of serious players on the scene.

I'd like to take a little time & try to write two apps I've been contemplating for doing local “Find My Device” that would work without Internet.

The core application published an mDNS entry with:
● the port it is listening on with a Quic *(HTTP/3)* server on both TCP & UDP
● a nonce it created
● a signature over that port & nonce from which its public key can be derived

mDNS is broadcast into the local network & and visible to everyone on the LAN, so anyone local should be able to talk to that server.

I want to then create a Gossipsub network, like is used to back IPFS, to get those machines talking to each other.

So the app listens on its Quic servers, and can receive instruction that are theoretically safe so long as the sanctity of the local network is not compromised.

More sophistocated levels of trust are built on top of the base certainty that you are more than likely dealing with a single persistent other party through time.

So, after Bob proves his identity to Alice through some third party channel *(like Signal, you* need *to install Signal)*, she'll know it's him consistently in the future, because all messages are signed with the key Bob included as part of his mDNS entry.

*(The actual key exchange might involve the peer ids used by IPFS nodes. You can see one in the screenshot below… I'm not sure exactly what they entail. They might just be a public key, but I don't want to just publish a key, it needs to be a signature so I prove I have it.)*

One of the commands, could be, "play your speaker really loud for ten minutes or until someone picks you up".

There's really two separate programs: one for receiving instructions & one for sending them. I would like the server to be either a Node.js or Rust application. I'd really like for it to be Rust, intimidating though that be.

One of the core topics in this Gossipsub network are information about updates to the CAR-encoded CBOR DAGs associated with updates to a shared context tree.

Information is dispersed by creating new connections within the network. Rather than transferring files a connection is made within the users context tree providing informed access to some new datum.

The are two options for how the CAR files will be packed. I can *either* take two DAGs with lots of different changes & generate the nodes of a CBOR *(binary cousin of JSON)* DAG where the CAR file is a collection of all those changes in a bundle. This model is something akin to `commit` points in the `git` workflow. The alternative is to put each node in it's own CAR file & insert it independently.

The first way is much more efficient, and it allows related changes to move together. The second, I think, is online traversable in a way the other isn't. Really there's places for both methods.

In any case, these two servers will talk to each other & exchange some trees of descriptors where *all* coherent paths are meant to resolve & partially-coherent paths will generate an ordered list of possibilities.

It's sort of like a normal directory tree, except all the context information is present in the path. You would write `.../book/by/Charles Stross/Lobsters/epub.epub` or `.../book/Charles Stross ― Accelerando/html.html` or `.../collection/World's Best Science Fiction 1987/4/Charlse Stross ― Overtime`. *(I have to repeat the extension twice because currently alot of programs get grumpy without them.)*

This massive DAG that's getting broadcast all over the local network can be used for message passing in a public forum ala. Discord.

You could create a Markdown file and store it in a location like `.../messenges/to/@Omka/56/md.md` which is also linked to by `.../messenges/to/@Omka/2024⁄10⁄29@4ʜ77.337/md.md`. One of the programs processing information for the Qwik listeners can watch the network for broadcasts of new additions to a directory when it's alphabetically sorted. *(The second date formatted entry alphabetically sorts with newest last, so when a new tail end of the list appears on the network, a program is executed to deliver that message.)*

I want to do the current notifications bar on the phone with the swipe to dismiss behavior, but I want to make it much more picture oriented.

The particularly interesting software though is to aid with a transaction flow I've been developing for person-to-person transactions. The buyer inputs their offer price, the seller puts in the number of units they want, and a total is calculated. Afterward, the price is then written as `<amount paid> = <market price> - <discount> - <outstanding debt>` where `<market price> = <asking price ⅌> * <number of units>`, so Candy did `$490 = $497½ - $7½` or paid me `$490` for `$497½` worth of stuff & I have a sheet of paper where I wrote the price ⅌ & she wrote the number taken.

Finally, the seller puts in how much money they verify that they received & everyone signs the whole transaction.

I want to do a digital version of this, but I'd really like to do a dynamic SVG version where the digital signatures are embedded in an SVG showing the reciept as well as customizably positions individualized logos for the involved parties.

Where I'd really like to go with it is to tie Optimism in as a way to make payments. The receipt could be automatically generated upon reception of a payment to an address. Optimism or Filecoin's network *(I like the idea of working in Rust)*, or IOTA. *(I still think IOTA could be the breakout winner in the crypro wars because it is WASM compatible* (like Filecoin) *& it doesn't use a blockchain. Message senders randomly verify some number of messages that came beforehand. The most messages going out the more verifiers.)* Definitely Monero. :catsmile:. Something digital.

Ultimately, where I want to go with this is buyer & seller transact online &, post payment, the seller drops the purchase into a blind courier network that gets it to the seller.

I'd really like to try and do a Flutter app *(which would be written in Dart)*. Particularly, I am thinking about trying to do a Dart implementation of the [Storacha](https://storacha.network) program [`pail`](https://github.com/storacha/specs/blob/4163e28d7e6a7c44cff68db9d9bffb9b37707dc6/pail.md) which is a key-value store distributed as a CBOR DAG. I'm still digging into how it works, but a Dart implementation would let me use it in my Flutter app.

What I was thinking about doing first is a Flutter version of [small caps]() which will give different Unicode equivalents for strings. Like I might type in “small caps” & it'll give me: . I think maybe it'd be better if my first Flutter app wasn't the DAG transferring program.
