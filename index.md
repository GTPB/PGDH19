---
layout: page
title: PGDH19
tagline: Population Genetics and Demographic History - model-based approaches
description: Models to analise genomic data. Discussions on how to interpret demographic inferences in population genetics
---


![](./assets/Lemur.jpg)

## Course Description

Genetic and genomic data are increasingly used by ecologists and evolutionary biologists in general. It has thus become important for many biologists with different levels of experience to produce and analyse genetic (and genomic) data. In this course we will take a practical approach to the analysis of genetic and genomic data, but we will also provide some of the theoretical background required to understand the outputs of the software used. This course will be organised so as to mix lectures where important notions are introduced with practicals where freely available software will be used. While this will not be the focus of the course, we will also introduce and discuss genealogical (coalescent-based) simulation methods and those based on forward-in-time simulations. Altogether this will allow to discuss the potentialities and limitations of the tools available to the community.

In this five-day course we will introduce the main concepts that underlie many of the models that are frequently used in population genetics. We will focus on the importance of demographic history (e.g. effective sizes and migration patterns) in shaping genetic data. We will go through the basic notions that are central to population genetics, insisting particularly on the statistics used to measure genetic diversity and population differentiation. The course will also cover a short introduction to coalescent theory, Bayesian inference in population genetics and data simulation. We will also introduce methods that have been recently developed to analyse genomic data such as the PSMC method of Li and Durbin that reconstructs the demographic history of a species or population with the genome of a single individual.

Most theory will be put into practice in practical sessions, analyzing real and/or simulated datasets. In these sessions, we will look at measures of genetic diversity and differentiation and use methods to infer demographic history. We will learn how to perform coalescent simulations of genetic/genomic data (using mainly Richard Hudson's ms program). We will also show how to simulate data for PSMC analyses. This will allow users to compare the PSMC obtained with real data to those obtained for the models they used. We will also look at how habitat fragmentation can be simulated using an in-house program. Some exercises will make use of R scripts (R being a freely available statistical program). Basic R knowledge is a pre-requisite but we will provide a short introduction to R. The R statistical package is a very powerful tool to analyse data outputs from many population genetics software, and can also be used to simulate genetic data under simple demographic scenarios.

## Target Audience

This course is intended for those wishing to analise genomic data under models of population genetics.

## Detailed Program

Find the detailed program [here](./pages/detailed_program.md)

## Course Documentation

* Day #1 [Coalescent theory](./pages/Day1_coalescent.md)
* Day #2 [Demographic Inference in Population Genetics 1](./pages/Day2_DemogInf1.md)
* Day #3 [Demographic Inference in Population Genetics 2](./pages/Day3_DemogInf2.md)
* Day #4 [Influence of population structure on the demographic inference](./pages/Day4_PopStructDH.md)
* Day #5 [Demographic history with genomic data](./pages/Day5_DH_genomic_data.md)

---

<!--- ### Learning objectives
-->



### Instructors

<div style="float:left;margin-right:10px">
    <img src="./assets/Mark_Beaumont.png" width="110px;"  align="left">
</div>

**Mark Beaumont** obtained his PhD in population genetics at the University of Nottingham in 1988. His main research focuses on how genetic information can be used to uncover the demographic history of populations, and how to disentangle the effects of demography and selection, often in the context of conservation genetics. Since June 2010 he has held a joint position in Mathematics and Biology at the University of Bristol. Previously he worked at the University of Reading (1999-2010), for the Zoological Society of London (1995-1999), as well as holding a number of earlier postdoctoral positions.

**Affiliations:** Schools of Mathematics and Biology, University of Bristol, Bristol, UK

<div style="float:left;margin-right:10px">
    <img src="./assets/Lounes.jpg" width="110px;"  align="left">
</div>

**Lounès Chikhi** obtained his PhD in 1995 from the University of Paris working in population genetics of fish, in Montpellier, SÃ¨te and Abidjan. He is a CNRS Senior Researcher based in Toulouse, France but has also been working at the IGC since 2005, where he is the PI of the Population and Conservation Genetics group. He held post-doctoral positions at the Universities of Padua and Ferrara, at the Institute of Zoology in London, at Queen Mary and Westfield College and at University College London, and Cardiff University. He is interested in the use of genetic data to improve our understanding of the past demographic history of different species, including our own. His main interests span from conservation genetics of wild and domesticated species to human recent evolutionary history. He has been increasingly interested in population and social structure and how they, together with sampling, influence demographic inference.  
**Affiliations:** Laboratoire Evolution et Diversité Biologique, CNRS, Toulouse, FR
Instituto Gulbenkian de Ciência, Oeiras, PT


<div style="float:left;margin-right:10px">
    <img src="./assets/Willy_Rodriguez.jpg" width="110px;"  align="left">
</div>

**Willy Rodriguez** obtained his PhD in 2016 at the Institut de Mathématiques de Toulouse (IMT), in France, under the co-supervision of Olivier Mazet (IMT) and Lounès Chikhi (CNRS/IGC). He is a Mathematician by background and worked on the development of statistical methods to use of genomic data to reconstruct the history of species. He is interested in the development of computational and analytical methods to understand the relative roles of changes in population size and changes in connectivity in the patterns observed in present-day populations. After a post-doctoral project at INRA in Orsay University in France and a one-year post-doctoral fellow at the IMT, he is now a post-doctoral researcher at the Instituto Gulbenkian de Ciência.  
**Affiliation:** Instituto Gulbenkian de Ciência, Oeiras, PT


<div style="float:left;margin-right:10px">
    <img src="./assets/Vitor_Sousa.jpg" width="110px;"  align="left">
</div>

**Vitor Sousa** obtained his PhD in 2010 from the Universidade de Lisboa, after developing is thesis work at the IGC in Oeiras, PT under the co-supervision of LounÃ¨s Chikhi (IGC) and Manuela Coelho (FCUL). He was a postdoctoral researcher in Jody Hey's lab (Rutgers University, New Jersey, USA) from 2010 to 2013, and in Laurent Excoffier's lab (University of Bern and Swiss Institute of Bioinformatics, Switzerland) from 2013 to 2016. He is currently an invited Researcher at the cE3c in order to address biological questions arising in the fields of speciation, conservation, molecular ecology and human genetics from a population genomics perspective. His research aims at understanding the roles of demography and selection in the structure and divergence of populations. In particular, he is interested in developing inference methods to extract such information from population genomics data, and hence his work involves population genetics theory, modeling, statistics and data analysis. For this purpose he has developed approximate Bayesian computation (ABC) methods to study population admixture, full likelihood methods to study population divergence and detect the effects of natural selection, and composite likelihood methods to infer the demographic history of populations.  
**Affiliation:** cE3c - Centre for Ecology, Evolution and Environmental Changes, Faculdade de Ciências, Universidade de Lisboa, Lisboa, PT


<div style="float:left;margin-right:10px">
    <img src="./assets/Armando_Arredondo.jpg" width="110px;"  align="left">
</div>

**Armando Arredondo** is a PhD student at the *Institut National des Sciences Appliquées* (INSA Toulouse), in France, under the co-supervision of Olivier Mazet (IMT) and Lounès Chikhi (CNRS/IGC). He is a Mathematician by background and is currently working on new statistical methods allowing the use of genomic data to reconstruct the history of species under models of populations structure. He is interested in stochastic processes, and in the interface between mathematics and biology, including computational methods to understand how changes in population size and connectivity influence genomic patterns observed in present-day populations.  
**Affiliation:** Institut National des Sciences Appliquées (INSA Toulouse), FR

---

## IMPORTANT DATES for this Course
Deadline for applications: <b>May 7<sup>th</sup> 2019</b>
Course date: <b>May 14<sup>th</sup> - May 18<sup>th</sup> 2019</b>

Candidates with adequate profile will be accepted in the next 72 hours after the application until we reach 20 participants.

---


The source for this course webpage is [on github](https://github.com/GTPB/PGDH19).
