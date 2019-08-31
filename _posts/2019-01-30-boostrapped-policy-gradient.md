---
layout: post
title: "Sample Efficient Bootstrapped Policy Gradient for Difficulty Adaptation"
date: 2018-06-30
label: "Reinforcement Learning"
imgstr: "/images/fig4_0.PNG"
---


One challenge for an intelligent interactive tutoring agent is to
autonomously determine the difficulty levels of the questions presented
to the users. This difficulty adaptation problem can be formulated
as a sequential decision making problem which can be
solved by Reinforcement learning (RL) methods. However, the cost
of taking an action is an important consideration when applying
RL in real-time responsive application involving human in the loop.
Sample efficient algorithms are therefore critical for such applications,
especially when the action space is large. This paper proposes
a bootstrapped policy gradient (BPG) framework, which can incorporate
prior knowledge into policy gradient to enhance sample
efficiency. The core idea is to update the summed probability of
a set of related actions rather than a single action at gradient estimation
sample. A sufficient condition for unbiased convergence
is provided and proved. We apply the BPG to solve the difficulty
adaptation problem in a challenging environment with large action
space and short horizon, and it achieves fast and unbiased convergence
both in theory and in practice. We also generalize BPG
to multi-dimensional continuous action domain in general actor-critic
reinforcement learning algorithms with no prior knowledge required.

## Policy Gradient
The problem of difficulty adaptation can be formalized using Reinforcement Leanring by taking question difficulty as action and the suitability of a difficulty as reward:

<img src="/images/bpg_pic/system.png" alt="hi" class="inline" width="400" />

In this way, the difficulty adaptation problem can be solved by reinforcement learning method. One popular reinforcement learning method is policy gradient, which directly takes gradient on the RL objective function. And the gradient can be expressed in an expectation form.

<img src="/images/bpg_pic/pg.png" alt="hi" class="inline" width="300" />

Policy gradient method is considered to be more stable than value-based RL method but a major drawback is its sample inefficiency. Due to the high variance in the gradient estimations, a large batch size is needed to ensure stable policy improvement. In a real-time responsive system, it cannot afford to use large batchsize. In fact, instead of batch update, incremental update with batch size of one is often employed in interactive systems to ensure good user experience. This work investigates how to make policy gradient achieve stable convergence with small batch size.
# Bootstrapped Policy Gradient (BPG)
Consider a piece of prior information which states certain actions are likely to have higher/lower reward than others. We will first discuss how to incorporate such prior information into policy gradient with unbiased convergence guarantee and then discuss how such information can be obtained in practice.
## What is BPG?
The key idea proposed here is to use bootstrap policy gradient with better/worse actions by updating the probability of \textit{a set of actions} instead of a single action in the gradient sample. Specifically, for each action, we defined _Better Action Set_, which includes the actions that might be better than the current action, and _Worse Action Set_ which contains the worse actions than the current action. 
<img src="/images/bpg_pic/better_worse.png" alt="hi" class="inline" width="600" />

The bootstrapped policy gradient is defined as:
* Bootstrapped Policy Gradient with Better/Worse Actions 
<img src="/images/bpg_pic/bpg.png" alt="hi" class="inline" width="600" />

## Why BPG?

<img src="/images/bpg_pic/why_BPG.png" alt="hi" class="inline" width="300" />

## How to ensure unbiased convergence?
* Surrogate Policy Gradient Theorem
<img src="/images/bpg_pic/convergence.png" alt="hi" class="inline" width="600" />
<img src="/images/bpg_pic/surrogate.png" alt="hi" class="inline" width="300" />

## How to obtain Better/Worse Action set in practice?
The remaining questions is how to obtain the prior information of Better/Worse Actions. In the case of difficulty adaptation, there happens to be a convenient way to construct _approximate better/worse action sets_ from prior information of difficulty ranking. Specifically, if a question is observed to be too easy or too hard for the user, then those questions which are even easier or harder than the current one can be considered as worse actions;  and in contrast those questions which are harder or easier than the current one can be considered as better actions. 
<img src="/images/bpg_pic/DDA.png" alt="hi" class="inline" width="400" />


## Experimental Results
<img src="/images/fig4_1.PNG" alt="hi" class="inline" width="600" />

