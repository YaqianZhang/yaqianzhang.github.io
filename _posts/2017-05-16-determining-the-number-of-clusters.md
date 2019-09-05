---
layout: post
date: 2017-05-16
title: "Determining the number of clusters: a curvature-based method"
label: "Machine Learning"
imgstr: "/images/fig2_2.PNG"
---

Determining the number of clusters is one of the research questions attracting considerable interests in recent years. Majority of the existing methods require parametric assumptions and substantiated computations. In this work, we proposed a simple yet powerful method for determining the number of clusters based on curvature. Our technique is computationally efficient and straightforward to implement. We compare our method with 6 other approaches on a wide range of simulated and real-world datasets. Theoretical motivation underlying the proposed method is also presented.


	
## Maxinum Curvature Point at the Evaluation Graph
* Evaluation Graph

In order to find the appropriate number of clusters, some approaches construct an evaluation graph by taking  the x-axis as the cluster number and  the y-axis as the corresponding evaluation function value. In these graphs, the within-cluster variance is often used as the evaluation metric.

$$J(k)=\sum\limits_{j=1}^{k}\sum\limits_{x_i\in C_j}||x_i-\overline{x}_j||$$

where $$C_j$$ is the set of samples belonging to class $$j$$ and  $$\overline{x}_j$$ is the sample mean of class $$j$$.

One can then examine the characteristics of such an evaluation graph to determine the number of clusters. A basic idea is to identify the _knee_ or _elbow_ of the evaluation graph. 

<img src="/images/curvature_pic/fig1_1.png"  height="200" />
<img src="/images/curvature_pic/fig1_2.png"  height="200" />
<img src="/images/curvature_pic/fig1_3.png"  height="200" />
<img src="/images/curvature_pic/fig1_4.png"  height="200" />

The evaluation graph is monotonically decreasing as the within-cluster variance will decline as the cluster number $k$ increases. However, the decrease in the within-cluster variance would become much smaller when $k$ surpasses the true cluster number, as after this point creating more clusters only lead to partitions within groups rather than between groups. Therefore, one can visually inspect the _knee_ of the evaluation curve which corresponds to the correct number of cluster.


* Curvature of Evalutation Graph

However, determining the _knee_ position of the evaluation curve is actually a non-trivial problem. The visual inspection method is ambiguous especially when there is a high degree of intermix between the clusters. In order to reduce the ambiguity stemming from the process of visual inspection an idea is to use the curvature information of the evaluation graph. In mathematics, curvature is the amount by which a geometric object deviates from being flat, or straight in the case of a line. So the \textit{knee} in the graph should correspond to the point with the maximum curvature. For a curve explicitly given as $y=f(x)$ , the curvature is defined as:
$$\kappa=\frac{|y''|}{(1+{y'}^2)^{\frac{3}{2}}}$$

As an example,  this curvature method is applied to a real-world dataset (Seed from UCI). The within-cluster variance and the corresponding curvature graph are presented in the figures below. The true cluster number (equal to 3) corresponds to the maximum curvature point. 

<img src="/images/curvature_pic/fig2-1.PNG"  height="200" />
<img src="/images/curvature_pic/fig2_2.png"  height="200" />



## Beyond Curvature

$$\kappa_a(k)=\frac{|a^2J''|}{(1+a^4J^{'2})^{\frac{3}{2}}}=\beta(k)\kappa(k)$$

where 

$$\beta(k)=a^2{(\frac{1+a^4J^{'2}}{1+J^{'2}})}^{\frac{3}{2}}$$

$$K=\underset{k}{\mathop{\arg\max}}\,\underset{\alpha}{\mathop{\max}}\,\kappa(\alpha,k)$$

After some derivations, we have:
$$K=\underset{k}{\mathop{\arg\max}}\,|\frac{J''(k)}{J'(k)}|$$


## Detection of Hierarchical Cluster Structure

<img src="/images/fig2_2.PNG"  class="inline" height="400"/>




 
