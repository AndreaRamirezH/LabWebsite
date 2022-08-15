@def title = "Research"
@def tags = ["research"]


# Computational and engineering principles of neural circuit function

\toc

## Brain Machine Interfaces (BMIs)

- Using a BMIs, neural signals in the brain can be directly connected to control outputs, bypassing standard neural pathways. We are interested in exploring how BMIs can be used to investigate learning, plasticity, and function in the brain. In collaboration with the Harvey Lab at Harvard Medical School, we are developing a BMI for navigation of virtual environments by mice. In real-time, we decode kinematic variables directly from 2-photon calcium images recorded in the posterior parietal cortex of mice navigating a virtual maze. We can then switch the control of movement through this maze between the physical movements of the mice and their decoded brain signals, creating a closed-loop BMI. We aim to use this interface to investigate phenomena in the brain such as representational drift.

~~~
<div class="row">
  <div class="container">
    <img class="left" src="/assets/minimal-mistakes/Neurons1.jpeg" style="width:50%">
    <p>
    some relevant image
    </p>
    <div style="clear: both"></div>      
  </div>
</div>
~~~

- Over the last two decades BMIs have enjoyed advances in the quality of neuroimaging data: it's now possible to simultaneously capture the activity of hundreds of individual neurons. Reading out from these neuron populations produces high-bandwidth BMIs that are accurate at interpreting the user's intentions. However, these neuron populations are far from static: the representation of the outside world within these populations -- the patterns of neural activity that coincide with events or correlate closely with external variables -- change over time, often on the order of days. Modern BMIs require daily recalibration to learn these new representations and maintain their accuracy. On the other hand: isolated, individual neurons can be conditioned by repeated success to display highly stable behaviour over the course of weeks. How do we reconcile these phenomena in the context of BMI design? What are the 'rules of the game' governing the evolution of these neuron population dynamics, and how can we take advantage of them to inform stable BMI implementations?  

## Representational drift

Some populations of neurons can change their tuning to behaviour over the course of days, even in the absence of overt learning, and the rate of this drift varies from neuron to neuron. Reliable communication among brain regions must reconcile this volatility to continue to accurately interpret representations as they drift. Can the information contained in interactions between cells predict how much their tuning will change? 

We quantified the informativeness of pairwise interactions in published data from [Driscoll et al.](https://www.sciencedirect.com/science/article/pii/S0092867417308280) and found that tuning stability is more strongly correlated with a neuron’s average redundancy than with its informativeness. This suggests that redundant subpopulations form a ‘backbone’ that is less susceptible to drift, potentially because of the alignment of these neurons’ trial-to-trial variability with the coding direction.

## Distributed online estimation of biophysical neural networks
The mechanisms underlying neuronal behavior are extremely intricate, and since Hodgkin and Huxley’s seminal work much effort went into constructing detailed models of neuronal excitability. Thanks to those efforts, neural circuits can now be studied by constructing complex models and fitting them to experimental data. However, this comes at a cost: state-of-the-art methods for fitting detailed models require large computational resources and take time to run. And even after fitting, model misspecification (e.g., due to the omission of unknown currents) is almost guaranteed; furthermore, ion channel degeneracy implies that most biophysical models have redundant parameter configurations. A recent trend has been to abandon the quest for the "right model" and the "right (distribution of) parameters", and exploit deep learning techniques to obtain flexible, unconstrained, and predictive artificial neural network (ANN) models of neuronal behaviour from data — the downside being a lack of biophysical interpretability. In our research, we propose an alternative, middle-ground modelling principle for neuronal dynamics that incorporates ANNs in models of ionic (intrinsic and synaptic) currents [Burghi et. al. 2020](https://ieeexplore.ieee.org/document/9304363). Our models respect the physics of electrical circuits, retaining much of the interpretability required to link model parameters to different ionic species and neuromodulators, and allowing for a like-for-like comparison of living cells whose ion channel makeup need not be known in advance. Such models can be analysed using tools from dynamical systems theory, can be learned offline with backpropagation, or online with adaptive observers from control theory [Burghi et. al. 2022](https://arxiv.org/pdf/2204.01472.pdf).

## Circuit architecture

## Spiking networks

## Homeostatic regulation

How do nervous systems adapt and repair themselves? How do they exhibit coherent function in spite of variable underlying properties? We study these questions using theory, computational models and experiments. It is well known that neurons have homeostatic mechanisms that control activity levels. But how does cell-level regulation affect network function? What are the limits to what homeostatic mechanisms can achieve?

Another goal is to understand variability. Cellular and circuit properties vary between individuals even when overall function is similar. This is a major problem (experimentally and theoretically) for understanding how components (e.g. genes, synaptic pathways) affect circuit function. This also raises an intriguing question: why is there variability? Do regulatory mechanisms simply tolerate some amount of 'slop', or does variability offer benefits?

