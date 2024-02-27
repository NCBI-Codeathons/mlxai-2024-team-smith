# A Gentle Introduction to ML and AI Applied to Antibody Engineering

List of participants and affiliations:

- Team Leader: Todd Smith, PhD, Digital World Biology
- Tech Lead:	 Herminio Vazquez, Copado Inc.
- Writer:		   Stephen Panossian, unaffiliated
- Flex:        Jake Lance, student, University of Toronto
               Mohsen Sharifi, Spotify
               Zainab Adenaike, NIH

## Project Goals
For large numbers of scientists, students, and instructors of machine learning (ML) and artificial intelligence (AI), the methods and tools are opaque. Understanding the processes, from defining data sets, to encoding data, to choosing appropriate algorithms to verifying a model's predictive (or generative) quality, to producing random trials using ML, becomes magical learning. These issues exacerbate when peer review (grants and papers) is considered, resulting in unfair critiques, or misleading science that cannot be reproduced. To address this issue we need to look at the ways we can introduce ML concepts in easy-to-digest formats that provide hands-on instruction.

This project will focus on antibody ML methods. The resulting work will be used in Digital World Biology's National Science Foundation funded summer hackathon (August 2024) on antibody engineering. In the project we will consider ML applications for predicting antibody antigen recognition, genetic contributions to antibody expression, and de novo antibody design. Work will identify one or two examples that include specific datasets, workflows, an appropriate ML method, and tests. The examples will then be used to create instructions and explanations that can be used in classroom settings, starting points for undergraduate research, and scientists wishing they had ways to better understand ML.

Project materials will create a resource with instruction and hands on examples that can demystify ML and AI for many scientists and students who need greater awareness of the data, steps, and practicalities. The focus on antibodies supports work in basic research and biotechnology. Digital World Biology's Antibody Engineering Hackathons are creating materials for course-base undergraduate research in community colleges (https://antibody-engineers.org/).


## Approach
We will use software including Amazon Web Service (AWS) cloud computing accounts, Docker containers, Jupyter notebooks, and tools from SAbDab (The Structural Antibody Database) from the Oxford Protein Information Group (OPIG). We will also identify relevant NCBI datasets.

Example: Covid not Covid 
- https://github.com/AntibodyEngineers/covid-not-covid
- notebook: https://github.com/AntibodyEngineers/covid-not-covid/blob/main/ab_predict_neutralising.ipynb
- datafile: covabdab_all.csv

Example: ImmuneProfiling
- https://github.com/AntibodyEngineers/immune-profiling
- data: (https://gateway.ireceptor.org/sequences?query_id=85212), needs to uploaded to our amazon instance

The general workflow is: 1) create an AWS account, 2) upload our Docker container, 3) step through the enclosed Jupyter notebook, and 4) analyze the antibody results.


## Results

## Future Work

## NCBI Codeathon Disclaimer
This software was created as part of an NCBI codeathon, a hackathon-style event focused on rapid innovation. While we encourage you to explore and adapt this code, please be aware that NCBI does not provide ongoing support for it.

For general questions about NCBI software and tools, please visit: [NCBI Contact Page](https://www.ncbi.nlm.nih.gov/home/about/contact/)

