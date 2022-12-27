# Materials Classification using Bayesian Netowrks
A MATLAB implementation of Bayesian networks for Material Classification

### Dataset
The Flickr Materials Database (FMD) was used for solving the classification problem using Bayesian networks. <br>
The database can be downloaded from https://people.csail.mit.edu/celiu/CVPR2010/FMD/

### Pre-requisites
The code was implemented on MATLAB 2021a. The following MATLAB packages were used.
<li><a href="https://se.mathworks.com/products/image.html">Image Processing Toolbox </li>
<li><a href="https://se.mathworks.com/products/computer-vision.html">Computer Vision Processing Toolbox </li>
<li><a href="https://se.mathworks.com/products/deep-learning.html">Deep Learning Toolbox </li>
<li><a href="https://github.com/bayesnet/bnt"> Bayesian Network Toolbox </a></li>
<li><a href="https://se.mathworks.com/products/parallel-computing.html"> Parallel Computing Toolbox </a></li>

### Usage
<ol type="1">
  <li> Ensure the dataset and the downloaded Bayes network toolbox are present in the working directory </li>
  <li> To perform classification using Bayesian Networks, execute the MATLAB live script textureBN.mlx within MATLAB. </li>
  <li> To perform classification using neural networks, execute the MATLAB live script textureCNN.mlx within MATLAB. </li>
  <li> The confusion chart and accuracy numbers for the above chosen approach will be presented. </li>
</ol>
