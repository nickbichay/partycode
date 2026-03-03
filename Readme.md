# partycode


Easily convert party codes from one dataset to another to facilitate merging. Returns a vector of new coding ids.


## Usage

```R
partycode(partyid, from=NULL, to=NULL)
```

#### Arguments:

partyid: Vector which contains party ids to be converted

from: Coding scheme of original party id (see partyfacts for compatible schemes)

to: New coding scheme to use (see partyfacts for compatible schemes)

## Example

```R
load("data")
data$parlgov_id <- partycode(data$comparative_manifesto, from = "manifesto", to = "parlgov")
```
