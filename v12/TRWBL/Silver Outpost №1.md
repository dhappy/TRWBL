---
tags:
  - spaces
---
![Silver Yggdrasil Outpost №1](images/Yggdrasil%20Outposts/Silver/№1/svg.svg)
The front of the location is couches where dealings may be done, or clients can rent a couch for an extended stay.

There is one couch reserved for the Monitor who is on site to safeguard everything and help the guests with anything they might want.

Behind a curtain is a set of electronically controlled lockers. Trusted customers are able to buy the codes to open lockers without any human interaction.

The lockers have doors on both sides, so they can both be opened by someone in the locker room, and by someone in the back room from the other side.

In the back room there is a safe cemented to the ground such that it'll take someone more than fifteen minutes to compromise it. A Grocer is able to distribute items by creating a unique NFC tag for every item in the system, placing the item in a locker, and advertizing it for sale.

There are a few standard types of NFC tags available:

| Name         | Size                    | Durability    | Cost |
| ------------ | ----------------------- | ------------- | ---- |
| NTag-213     | 144 bytes               | 50,000 scans  | ¿?   |
| NTag-215<br> | 504 bytes               | 200,000 scans | 30¢  |
| NTag-216     | 888 bytes               | 500.000 scans | 50¢  |
| Arx HaLo     | 64 bytes + secp256 keys | ¿?            | $6   |

The Arx Halo chips are neat because they keep internal secret keys and only release signatures based off those keys.

For the NTag chips, anything on it can theoretically be duplicated on another chip. Even the UUID that's burnt in at manufacture can be written on certain chips. Regardless, if we capture that UUID & write a reasonable amount of randomness ourselves, we should be able to reasonably verify authenticity.

[The shipping system](Leviathon) will know of, eventually, a sea of tags it is tracking for locations and parcels. A user could be asked to scan the item tag then the location tag known to be nearby to increase the probability the scan is genuine.

The system could regularly change the value stored on the location NFC tag so that when a value is read, you know that the only way it was compromised is by a very limited of people who had access to that value.