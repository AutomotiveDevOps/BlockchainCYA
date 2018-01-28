# Blockchain CYA - 0.1

## Regulated Industries

One of the realities that I work with is that if I screw up, people die. It is just the nature of any industry that deals with [functional safety](https://en.wikipedia.org/wiki/Functional_safety).

It's why our industries are also heavily regulated. Regulations that include, but are not limited to:

- [ISO 26262](https://en.wikipedia.org/wiki/ISO_26262) for road vehicles.
- [IEC 61508](https://en.wikipedia.org/wiki/IEC_61508) for industrial equipment.
- [IEC 62279](https://en.wikipedia.org/wiki/IEC_61508#Rail_software) for rail roads.
- [IEC 61513](https://en.wikipedia.org/wiki/IEC_61508#Nuclear_power_plants) for nuclear power plants.
- [DO-178B](https://en.wikipedia.org/wiki/DO-178B) for avionics *software*.
- [DO-254](https://en.wikipedia.org/wiki/DO-254) for avionics *hardware*.
- [IEC 62304](https://en.wikipedia.org/wiki/IEC_62304) for medical device software.

## CYA

For every engineer in those industries they must be cognizant of CYA:

> *Cover your ass (British: arse), abbreviated CYA, is activity done by an individual to protect himself or herself from possible subsequent criticism, legal penalties, or other repercussions, usually in a work-related or bureaucratic context. In one sense, it may be rightful steps to protect oneself properly while in a difficult situation, such as what steps to take to protect oneself after being fired.* 
> - [Wiki](https://en.wikipedia.org/wiki/Cover_your_ass)

So that when the NTSB, lawyers, or anyone else comes to the door, you (on a personal level) can show that you did nothing wrong.

A very public and recent example is the the case of VW and Dieselgate.

>  *In the July 2015 discussion, Weiß was asked to cheat, the testimony said. Weiß refused. After more discussion, the engineer demanded an order in writing. According to the testimony, his boss Heiduk went in conference with the board, and came back with a written order to break the law.*
> - [Forbes: https://www.forbes.com/sites/bertelschmitt/2017/02/22/audi-engineer-had-smoking-dieselgate-gun-in-his-safe-pulls-it-in-court/#2e819e4d2423](https://www.forbes.com/sites/bertelschmitt/2017/02/22/audi-engineer-had-smoking-dieselgate-gun-in-his-safe-pulls-it-in-court/#4a1a7b1b2423)

That engineer then went to keep that order[locked in a safe until he presented it in court.

## Provability


## Cryptographic Hash

> *A cryptographic hash function is a hash function which takes an input (or 'message') and returns a fixed-size alphanumeric string. The string is called the 'hash value', 'message digest', 'digital fingerprint', 'digest' or 'checksum').*
> 
> *The ideal hash function has three main properties:*
> *- It is extremely easy to calculate a hash for any given data.*
> *- It is extremely computationally difficult to calculate an alphanumeric text that has a given hash.*
>  *- It is extremely unlikely that two slightly different messages will have the same hash.*
> - [Wiki](https://simple.wikipedia.org/wiki/Cryptographic_hash_function)


## Blockchain

> *A blockchain, originally block chain,is a continuously growing list of records, called blocks, which are linked and secured using cryptography. Each block typically contains a hash pointer as a link to a previous block, a timestamp and transaction data. By design, blockchains are inherently resistant to modification of the data. The Harvard Business Review describes it as "an open, distributed ledger that can record transactions between two parties efficiently and in a verifiable and permanent way."* - [Wiki](https://en.wikipedia.org/wiki/Blockchain)


 $280,315,020,148 USD.

# Example.

If you have graduated engineering in the last few decades you were probably discussed the [Space Shuttle Challenger](https://en.wikipedia.org/wiki/Space_Shuttle_Challenger_disaster). It is a case study in [group think](https://en.wikipedia.org/wiki/Groupthink) and [engineering ethics](https://en.wikipedia.org/wiki/Engineering_ethics).

For this example I will show what Allan McDonald could have done in 2018 to CYA.

1. Write your message.

	I am concerned that below-freezing temperatures might impact the integrity of the solid rockets' O-rings. 

	I refuse to sign the launch recommendation over safety concerns.

	Allan McDonald

	https://www.nasa.gov/centers/langley/news/researchernews/rn_Colloquium1012.html

https://github.com/jed-frey/BlockchainCYA/blob/master/ChallengerLaunch.txt


https://poex.io/
- https://www.cryptograffiti.info/

## Future Topics:

This was a very short and not at all complete tutorial of all the tools available.

- [PGP/GPG Keys & Signing](https://en.wikipedia.org/wiki/Pretty_Good_Privacy)
- [FIDO U2F](https://en.wikipedia.org/wiki/Universal_2nd_Factor) (Universal 2nd Factor Authentication)
- Distributed Blockchain Storage ([Storj](https://storj.io/), [Sia](https://sia.tech/))

If you want to see any of the above topics prioritized, open an issue.