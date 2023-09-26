This is a framework to support the organization of continual work on a project by scheduling a series of overlapping pair programming sessions. Adjacent pairs of developers have an overlap to allow the departing pair to brief the incoming pair of their progress.

All work is both streamed and recorded. Participants receive a base payment for being present for a session and recording a video. That compensation, however, can be more than doubled based on peer review of the session stream.

The goal is to provide a resource for architects who have a reasonably well structured project description, but don't have the resources to build a development organization. Also, the recordings will capture the entire development process for the program, and, when combined with the review metadata should provide interested parties a live "blame" view of the author's thinking for each piece of code.

## Interfaces

There are four primary interfaces used to orchestrate the endeavor:

  * [Scheduling](#scheduling)
  * [Transition](#transition)
  * [Execution](execution)
  * [Review](#review)

### Scheduling

A session has at least three participants: the Navigator, the Driver, and a Witness. The Navigator described the code to be written while the Driver operates the keyboard.

Navigators apply for sessions by providing:

* a minimum hourly rate they will accept
* the time slot they desire; because the time is dependant on the session before, they specify what they want as:
  * a minimum start time
  * a maximum end time
  * a minimum duration
  * a preferred duration
  * a maximum duration
* a set of GitHub issues they intend to address
* a set of tasks they expect to accomplish

Members of a planning circle maintain a GitHub project to rank issues and tasks so that would be Navigators know what to prioritize.

Navigators are chosen using ranked choice ratings voted on by token holders. Drivers and Witnesses are then chosen by the Navigators. Once complete, the cost has to be approved for the entire set.

There is a rolling window of five days by which a team should have been chosen. A backup team may also have a conditional bid approved.

There are multiplier tokens which increase voters' influence. A project has a single primary Architect who has the ability to distribute tokens *(and the ability to distribute the ability to distribute tokens)*. Tokens can be destroyed via collective action.

Five days in advance of a slot being worked, bids are chosen both for a worker and an on-call backup to take the session if the selected group doesn't make check-in.

#### Scheduling Incentives

The expected minimum pay is $15 / hour for everyone with bonuses based on the result of the evaluation of the recording.

### Transition

An hour before the previous pair leaves, the next pair checks in and joins the stream of the departing pair.

The Navigator has a ten minute window to make checkin. After that the system will attempt to replace the team with its backup.

During the hour of overlap the incoming pair will get a stream key for the Driver to configure OBS on their system. The viewing key will be encrypted using Lit & made accessible to appropriate token and address holders.

All participants in the call are encouraged to record in case there's some issue with the Driver's stream.

Calls take place via a Discord video chat that has a bot bouncer limiting access to holders of specific addresses and tokens.

The two pairs use the overlapping hour for the departing team to summarize their accomplishments & any outstanding tasks. Based on this feedback the coming pair may choose to alter the tasks they play to address.

Eventually, the leaving pair makes a final commit and control passes to the new team.

### Execution

A major component of compensation is based on input from a program that semantically breaks down the video into time periods of activities like debugging or new development or testing.

Periods when the pair goes off track are marked as well as events like discovering a solution and writing code that doesn't conform to the syntax standards.

During their session the participants have access to this review interface to create a first pass at marking the recording in real time.

### Review

One of the dangers of this system is that the development pair will accidentally reveal secret information to the stream that will be used by an attacker to perform an exploit.

To avoid this, until the video has undergone a set of trusted full reviews where the interface allows the flagging for blurring of secret data review will be limited to sets of token holders.

As well as an objective description of the events, reviewers are also able to make subjective assessments: both descriptive statements and also weighted terms. It will also be possible to review reviews and rate the veracity of an assessment.

#### Incentives

The pair of programmers receive a fixed rate that is moderated by the reviews of their session.



## Technologies

* [Livepeer](https://livepeer.org) will be used for steaming the sessions & capturing recordings.
* [Ceramic](https://ceramic.network) will be used for storing review information.
* The FEVM will be used for an ERC-1155 deployed for token-based accomplishment tracking and permissions.
* [IPFS](https://ipfs.io) will be used for the storage of video streams.
* Postgresql will be used for querying bids to determine potential schedules.