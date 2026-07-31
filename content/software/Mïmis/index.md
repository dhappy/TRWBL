---
tags:
  - software
website: https://mimis.dhappy.org
repository: https://github.com/MetaFam/mimis/
---
		## Structure

Mïmis is backed by a set of graphs stored in a [Tinkerpop](https://tinkerpop.apache.org/)-comaptible instance. Initially, it is simply a set of directory trees which contextualize blobs stored in IPFS.

It's a little different than the traditional folder and file idiom for a couple reasons.

The path information is stored on the edges of the graph rather than in the nodes, so that the `path` property on `CONTAINS` edges is what drives a deterministic finite automata to find some terminal node with a label of `Spot`.

From that node, the system can check for adjoining edges:
* `REPRESENTATION` edges have a `mimetype` property which must be unique for that node. At any given time there is one particular representation that is considered best for a given Spot in the enöosphere.
* `PREVIOUS`: The property graph is built by unioning together graph fragments. Each user has some unioned set of devices that they may or may not control to produce their feed. Each device will publish under a unique key, and an aggregate feed will be produced from them. Some types of reads take the first instance of a node & use it. Others will union the properties of the nodes so that any property appearing anywhere will have the most recent value shown. A `PREVIOUS` edge is a link to the instance that was in place when this one was introduced.
* `EQUALS`: Each node and edge has a user-defined UUID at the point of creation. An `EQUALS` edge represents that this node and another have the same UUID & represent the same conceptual Spot. It essentially lets one build hypergraphs by allowing an edge to connect to many nodes. It could be used to let users connect their graphs together and annotate each others' spaces.

Unlike a traditional file system which generally has a single location for a file, the files in Mïmis are represented by their IPFS CID and will frequently have many directory paths which resolve to a file.

Ideally, all coherent unique paths which can be used to reference a file will resolve.

Mïmis aims to be an enhancement to the existing existing server-based HTTP-driven web. It will differ by having the ability to evaluate a set of files and choose a best candidate for a given path based on all the user trees. Also, it will contain information about the relationships between files and how they interrelate.
## Use Cases

### Content Recommendation

Users will create ordered lists of content at locations in the directory tree. For example, `/meme/funny/capitalism/` might be a list of the funniest memes about capitalism.

The rankings aren't simply a 1–*n* list. For a given rank, there can be more than one entry. Also, it is possible to have zero entries for a given rank.

These lists are combined to produce a composite ranking recommending content either through simple weighted averages, or more complex means such as training a neural network.
### View Tracking

A very important data set in considering which content to provide will be which pieces has the user been presented with in the past & how did they react to them.

Tinkerpop runs “property graphs” which allow storing attributes on nodes and relationships. Eventually, these will be used to track which content has been presented to the user and give them the ability to respond with arbitrary iconography *(emojis and images; think Discord)*. 
### Resource Conversion

When working with content, it is often the case that the file format used is less than ideal. Documents in PDF rather than something better for responsive layout like HTML or EPUB are a frequent problem.

Mïmis will allow publishing of source documents and holding incremental conversions to new formats, allowing multiple contributors to go toward producing a new format.
### Curation

A current issue facing AI researchers is generating high-quality training data.

Mïmis will conglomerate, curate, & circulate collections of calibration corpora.

