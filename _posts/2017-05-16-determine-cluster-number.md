---
layout: post
date: 2017-05-6
title: "Determining the number of clusters: a curvature-based method"
label: "Machine Learning"
imgstr: "/images/fig2_2.PNG"

---

Determining the number of clusters is one of the research questions attracting considerable interests in recent years. Majority of the existing methods require parametric assumptions and substantiated computations. In this work, we proposed a simple yet powerful method for determining the number of clusters based on curvature. Our technique is computationally efficient and straightforward to implement. We compare our method with 6 other approaches on a wide range of simulated and real-world datasets. Theoretical motivation underlying the proposed method is also presented.

## Maxinum Curvature Point at the Evaluation Graph
* Evaluation Graph
<img src="https://latex.codecogs.com/svg.latex?\Large&space;J(k)=\sum\limits_{j=1}^{k}{\sum\limits_{{x_i}\in{C_j}}{||{{\mathbf{x}}_{i}}-{{{\mathbf{\bar{x}}}}_{j}}|{{|}^{2}}}" title="TEST" />
<img src="/images/curvature_pic/fig1_1.png"  height="200" />
<img src="/images/curvature_pic/fig1_2.png"  height="200" />
<img src="/images/curvature_pic/fig1_3.png"  height="200" />
<img src="/images/curvature_pic/fig1_4.png"  height="200" />

* Curvature of Evalutation Graph

<img src="/images/curvature_pic/fig2-1.PNG"  height="200" />
<img src="/images/curvature_pic/fig2_2.png"  height="200" />


<img src="https://latex.codecogs.com/svg.latex?\Large&space;\kappa=\frac{|y''|}{(1+{{y'}^{2}})^{3/2}}" title="\Large x=\frac{-b\pm\sqrt{b^2-4ac}}{2a}" />

## Beyond Curvature
<img src="https://latex.codecogs.com/svg.latex?\Large&space;{{\kappa}_{a}}(k)=\frac{|{{a}^{2}}J''|}{{{(1+{{a}^{4}}J{{'}^{2}})}^{3/2}}}=\beta(k)\kappa(k)" title="\Large x=\frac{-b\pm\sqrt{b^2-4ac}}{2a}" />

where
<img src="https://latex.codecogs.com/svg.latex?\Large&space;\beta(k)={{a}^{2}}{{\left(\frac{1+{{a}^{4}}{{{{J}'}}^{2}}}{1+{{{{J}'}}^{2}}}\right)}^{\frac{3}{2}}}" title="\Large x=\frac{-b\pm\sqrt{b^2-4ac}}{2a}" />
<img src="https://latex.codecogs.com/svg.latex?\Large&space;K=\underset{k}{\mathop{\arg\max}}\,\underset{\alpha}{\mathop{\max}}\,\kappa(\alpha,k)" title="\Large x=\frac{-b\pm\sqrt{b^2-4ac}}{2a}" />
<img src="https://latex.codecogs.com/svg.latex?\Large&space;K=\underset{k}{\mathop{\arg\max}}\,|\frac{{J}''(k)}{{J}'(k)}|" title="\Large x=\frac{-b\pm\sqrt{b^2-4ac}}{2a}" />
	


## Detection of Hierarchical Cluster Structure


<img src="/images/fig2_2.PNG"  class="inline" height="400"/>




 
