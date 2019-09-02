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

<img src="/images/curvature_pic/fig1_1.png"  height="200" />
<img src="/images/curvature_pic/fig1_2.png"  height="200" />
<img src="/images/curvature_pic/fig1_3.png"  height="200" />
<img src="/images/curvature_pic/fig1_4.png"  height="200" />

* Curvature of Evalutation Graph

$$\kappa=\frac{|y''|}{(1+{y'}^2)^{\frac{3}{2}}}$$

<img src="/images/curvature_pic/fig2-1.PNG"  height="200" />
<img src="/images/curvature_pic/fig2_2.png"  height="200" />



## Beyond Curvature

$$\beta(k)={{a}^{2}}{{\left(\frac{1+{{a}^{4}}{{{{J}'}}^{2}}}{1+{{{{J}'}}^{2}}}\right)}^{\frac{3}{2}}}$$



## Detection of Hierarchical Cluster Structure

<img src="/images/fig2_2.PNG"  class="inline" height="400"/>




 
