---
tags:
  - software
website: https://mimis.dhappy.org
repository: https://github.com/MetaFam/mimis/
---
## Structure

Mïmis is backed by a set of graphs stored in a Neo4j instance. Initially, it is simply a set of directory trees which contextualize blobs stored in IPFS.

Unlike a traditional file system which generally has a single location for a file, the files in Mïmis are represented by their IPFS CID and will frequently have many directory paths which resolve to a file.

Ideally, all coherent unique paths which can be used to reference a file will resolve.

Each user, identified by an Ethereum signature, has their own tree.The trees represent a versioned file system.

Mïmis aims to be an enhancement to the existing existing server-based HTTP-driven web. It will differ by having the ability to evaluate a set of files and choose a best candidate for a given path based on all the user trees. Also, it will contain information about the relationships between files and how they interrelate.
## Use Cases

### Content Recommendation

Users will create ordered lists of content at locations in the directory tree. For example, `/meme/funny/capitalism/` might be a list of the funniest memes about capitalism.

The rankings aren't simply a 1–*n* list. For a given rank, there can be more than one entry. Also, it is possible to have zero entries for a given rank.

These lists are combined to produce a composite ranking recommending content either through simple weighted averages, or more complex means such as training a neural network.
### View Tracking

A very important data set in considering which content to provide will be which pieces has the user been presented with in the past & how did they react to them.

Neo4j is a “property graph” which allows storing attributes on nodes and relationships. Eventually, these will be used to track which content has been presented to the user and give them the ability to respond with arbitrary iconography *(emojis and images; think Discord)*. 
### Resource Conversion

When working with content, it is often the case that the file format used is less than ideal. Documents in PDF rather than something better for responsive layout like HTML or EPUB are a frequent problem.

Mïmis will allow publishing of source documents and holding incremental conversions to new formats, allowing multiple contributors to go toward producing a new format.
### Curation

A current issue facing AI researchers is collecting corpora of high-quality training data.

Mïmis will conglomerate collections of training data and make them generally available.