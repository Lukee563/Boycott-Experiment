# Consumer Boycott Experiment: Behavioral Analysis of Injunction Norms

### UCSC LEEPS - Learning and Experimental Economics Projects of Santa Cruz

This repository contains the data analysis and experimental results for the Consumer Boycott Game, 
a strategic interaction model developed in collaboration with Professor Kristian López Vargas 
at UC Santa Cruz. The Consumer Boycott Game concept originated from Luke Catalano, 
Sadhika Agrawal and Derek Zhao in conjunction with Vivian J. Zheng at UC Santa Cruz

The Otree code and original documentation for the Consumer Boycott Game
can be found in Vivian’s Boycott_Consumer Repository, detailing the
game’s core block components and the underlying experimental structure.
This repository can be accessed here:
<https://github.com/vivianzvz/boycott_consumer>

### Research Overview
This study explores the intersection of Microeconomic Theory and Behavioral Economics, 
specifically examining how social norms and information shocks regarding labor 
practices influence consumer choice in a duopoly setting.

### The Identification Strategy

We utilize a controlled laboratory experiment to test the 
power of injunctive norms versus price incentives.

Baseline: Consumers choose between an unethical (low-cost) 
seller and an ethical (high-cost) seller with neutral information.

Treatment 1: An information shock detailing unfair labor practices is introduced.

Treatment 2: An information shock detailing unfair labor practices 
is introduced, and users are polled to determine if they
would support a boycott of seller 1 to activate social expectations and injunctive norms.

Analysis: We measure the "switching rate" to quantify the price 
premium consumers are willing to pay to align with social expectations.

### Key Technical Features

Game Architecture: Implemented using oTree (Python-based framework) 
to manage real-time strategic interactions between participants in a web-based
environment. 

Econometric Techniques: Used a logistic regression model to estimate a shift in preferences 
after receiving certain treatments 

Theoretical Framework: Grounded in Game Theory, modeling the boycott as a collective action 
problem where individual utility is a function of both monetary payoff and social image/conformity.

### Findings and Implications

Individuals were significantly more likely to choose the ethical seller when
reminded of unfair labor practices, and when they were reminded then exposed to injuctive norms 

Treatment 1 Effect: 57.5 percentage point incease in ethical consumption

Treatment 2 Effect: 61.5 percentage points increase in ethical consumption

