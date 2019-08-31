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

## Bootstrapped Policy Gradient (BPG)
The problem of difficulty adaptation can be formalized using Reinforcement Leanring by taking question difficulty as action and the suitability of a difficulty as reward:
<img src="/images/bpg_pic/system.png" alt="hi" class="inline" width="400" />
In this way, the difficulty adaptation problem can be solved by reinforcement learning method. One popular reinforcement learning method is policy gradient, which directly takes gradient on the RL objective function. And the gradient can be expressed in an expectation form.
<img src="/images/bpg_pic/pg.png" alt="hi" class="inline" width="300" />
* Bootstrapped Policy Gradient with Better/Worse Actions 
<img src="/images/bpg_pic/bpg.png" alt="hi" class="inline" width="600" />

## Difficulty Adaptation with Bootstrapped Policy Gradient (BPG)
The remaining questions is how to obtain the prior information of Better/Worse Actions
<img src="/images/bpg_pic/DDA.png" alt="hi" class="inline" width="600" />
## Experimental Results
<img src="/images/fig4_1.PNG" alt="hi" class="inline" width="600" />

