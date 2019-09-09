---
layout: post
title: "Dynamic difficulty adjustment for visual memory training"
date: 2018-06-30
label: "Intelligent Tutoring Systems"
imgstr: "/images/MainGameScreen.png"
---

## Research Objective
The purpose of the study is to develop a data-driven method to adaptively adjust difficulty level in visual memory game to facilitate memory training. Studies in neuroscience suggest that working memory can be improved by training. However, substantial and sustained gains in working memory were only found in adaptive training that taxed working memory to its limits and no such gains were observed in non-adaptive version where the difficulty was always set to the initial low level. Therefore it is important to personalize training for individual player. Nevertheless, determining the difficulty of a visual memory task for a player is non-trivial. The adaptive rules employed in the previous studies are often hand-craft. Due to the complex property of visual working memory and the limitation of hand-craft adaptation rules, we propose to use reinforcement learning method to generate the task intelligently based on the play history of the players. This research aims to propose new RL algorithm for task generation to make memory training more efficient and meanwhile achieve a deeper understanding of visual memory. 

<figure style="text-align:center">
<img src="/images/vmg/personalization.png" alt="hi" class="inline" width="400" />
  <figcaption style="text-align:center">Figure 1. Static versus personalized interactive systems design</figcaption>
  </figure>
## Visual Memory Game
<figure style="text-align:center">
<img src="/images/MainGameScreen.png" alt="hi" class="inline" width="400" />
  <figcaption style="text-align:center">Figure 1. Visual memory game design</figcaption>
  </figure>
## Algorithm: Machine Learning-Based Difficulty Adaptation
<figure style="text-align:center">
<img src="/images/vmg/overview_ML_dda.png" alt="hi" class="inline" width="600" />
  <figcaption style="text-align:center">Figure 2. Overview structure of ML-based dynamic difficulty adaptation combining difficulty ranking  personalization and stochastic difficulty adjustment</figcaption>
  </figure>

## Research Trial

The participants will play an online game to complete 25 visual memory tasks.

## Result
<figure style="text-align:center">
<img src="/images/vmg/fast_slow.png" alt="hi" class="inline" width="400" />
  <figcaption style="text-align:center">Figure 3. The memorization time variations in three difficutly adaptation modes for fast and slow players as the game progresses</figcaption>
  </figure>

<figure style="text-align:center">
<img src="/images/vmg/performanceDis_binmap.png" alt="hi" class="inline" width="400" />
  <figcaption style="text-align:center">Figure 4. Performance disparity at the start stage and end stage of the game</figcaption>
  </figure>
