

Mïmis is an append-only store. The ID of any given node in the graph is the CID of that node in the CBOR-DAG representation of the update.

Each node has a link to the `PREVIOUS` version which points to the update node that was the most current when the update was published.