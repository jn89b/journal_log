Dr. K. M. Isaac
Department of Mechanical and Aerospace Engineering
233B Toomey Hall
400 West 13th Street
Rolla, MO 65409-0050

Dear Dr. Isaac,

I am writing to express my interest in the NASA Missouri Space Grant Consortium (MOSGC) Internship/Fellowship Program for the summer of 2024. As a current PhD student with a strong academic background and a deep passion for aerospace innovations, particularly in Urban Air Mobility (UAM), Unmanned Aerial Vehicles (UAVs), and Artificial Intelligence (AI) applications in higher-level decision-making, I am excited about the opportunity to contribute to and learn from projects aligned with NASA's mission.

My interest in UAM and UAVs stems from a fascination with the potential of these technologies to revolutionize transportation, logistics, and environmental monitoring. The opportunity to explore the integration of AI for autonomous navigation and decision-making in these domains is particularly compelling to me. I believe that the intersection of these areas holds the key to addressing some of the most pressing challenges in aerospace and beyond.

Change This 
Throughout my academic career, I have consistently pursued opportunities to expand my knowledge and skills in these areas. This includes coursework in aerospace engineering, robotics, and computer science, as well as hands-on projects and research initiatives that have allowed me to apply theoretical knowledge in practical contexts. I am particularly proud of a project where I led a team in designing and implementing a prototype UAV capable of environmental monitoring with AI-based image analysis, demonstrating my ability to innovate and collaborate effectively.

Participating in the MOSGC Internship/Fellowship Program would not only allow me to further develop my expertise in UAM, UAVs, and AI but also enable me to contribute meaningfully to NASA’s mission with current UAM challeneges. I am particularly drawn to the program's emphasis particularly the work that has been done for UAM through NASA's Data and Reasoning Fabric (DRF) teaM.

Enclosed with this letter, you will find a detailed project proposal that outlines my planned research, its objectives, and its alignment with NASA's mission. I have also included a letter of recommendation from my faculty mentor, who has guided me in my previous projects and research endeavors, and my résumé for your consideration.

I am excited about the possibility of joining the MOSGC Internship/Fellowship Program and am committed to contributing my best work to the projects I will be involved in. Thank you for considering my application.

Sincerely,

[Your Name]




Justin Nguyenvu
3205 South Mark Twain Avenue
Blue Springs, MO 64015
(816) 929-1163
jnguyenblue2804@gmail.com

[Date]

NASA Grant Program Coordinator
National Aeronautics and Space Administration
[Address Line 1]
[Address Line 2]
[City], [State] [Zip]

Dear NASA Grant Program Coordinator,

I am applying for NASA's summer program, driven by my commitment to Urban Air Mobility (UAM) and Advanced Air Mobility (AAM) advancements. My interdisciplinary Ph.D. in Computer Science and Mechanical Engineering at the University of Missouri-Kansas City, coupled with professional experiences at Lockheed Martin, Missouri Institute for Defense and Energy, and Edwards Air Force Base, has prepared me to contribute significantly to aerospace innovation.

My proposed project focuses on integrating Small Language Models (SLMs) into UAVs for clearer decision-making frameworks, aligning with NASA's AAM vision. This role capitalizes on my skills in Deep Reinforcement Learning (DRL) and my practical experiences with UAV systems, aiming to enhance AI transparency and efficiency in air traffic control interactions.

I am keen to apply my expertise in AI, deep learning, and machine learning to support NASA's objectives in air mobility, ensuring safer, more reliable autonomous aerospace systems. I look forward to the opportunity to collaborate with NASA's team and contribute to the future of aerospace technology.

Thank you for considering my application.

Sincerely,

Justin Nguyenvu

## Note check out the following links:
https://www.nasa.gov/centers-and-facilities/armstrong/autonomous-systems/#hds-sidebar-nav-3

https://www.nasa.gov/intelligent-systems-division/autonomous-systems-and-robotics/asr-research-groups/


# Enhancing Decision-Making in Urban Air Mobility Using Language Models for Unmanned Aircraft Vehicles

## Project Scope and Objectives
    The project aims to aid the Urban Air Mobility (UAM) and Advanced Air Mobility (AAM) by building upon common practices of Deep Reinforcement Learning (DRL) through incorporating Small Language Models (SLMs) into the decision-making framework of Unmanned Aircraft Vehicles (UAVs). By utilizing SLMs this would provide transparency for the actions fo these autonomous systems to interact with Air Traffic Control (ATC) in UAM environments, in comparison to end-to-end training pipelines for autonomous systems. By providing/showcasing this feature, it would elevate operation standards by ensuring these agents comply to safety regulations of UAM regulations through its transparency and capabilities to provide reasoning through its actions.

## My Role in the Project
My role in this project is train and finetune the SLM utilizing DRL to generate a synthetic dataset which will then be interfaced with a Large Lanugage Model (LLM) to instruct the SLM on decision making when traversing through a stochastic environment. This synthetic dataset will be derived from my simulation framework that I am developing, which encorporates a high-fidelity model of the aircraft flight dynamics. 

## Approach and Anticipated Outcomes
The approach for this project is shown in Figure (insert the high level architecture figure). The first component (which is the first deliverable) that will be tasked is to build the simulation environment which encapsulates a dynamic environment with other agents, which will simulate the UAM environment. In addition JSBSim, high-fidelity Flight Dynamics Model module will be utilized to represent the flight dynamics of the agent traversing through this environment. From this environment DRL will be used to train the DRL agent utilizing Proximal Policy Optimization (PPO) to find the optimal policy to navigate through this stochastic environment. After the DRL agent has been trained to find this policy, synthetic datasets will be created with numeric values collected on the reference commands and surroundings the DRL agent experienced.   

With this numeric dataset, the dataset will be augmented through a language generator and interfaced with a LLM, ChatGPT4. The LLM will then be prompted that it is an expert UAS operator in UAM environments, and is tasked with generating Question-Answer (QA) Datasets, with actuations of high level attitude commands, with provided reasoning behind these commands.  

With this dataset an SLM will be utilized as the student where knowledge will be transfered from the LLM to the student, known as Knowledge Distllation. By utilizing a SLM this will reduce the carbon/memory footprint for the agent allowing for faster inference time and providing capabilities for the SLM to be run on smaller embedded system platforms. 

After the SLM agent has been trained, the agent will be deployed in the simulation environment, with it sending high level commands to its flight controller with reasoning displayed due to the current circumstance it is experiencing within the environment. The agent will be tested in various conditions within the simulation, to showcase its capabilities to make decisions in a closed-loop envirionment while providing transparent and reasonable decisions that UAS operators would be comfortable with. Thus providing a higher level of trust, despite the increase in levels of autonomy for the system.

General Outline for Deliverables of Anticipated Outcomes for a 10-week span is as follows:
- Week 1 - 2 Simulation Pipeline, initial benchmark testing of DRL agent 
- Week 3 - 4 Generate synthetic datasets and utilize ChatGPT4 to develop QA of data
- Week 5 - 6 Vector encode the QA datasets to feed into SLM, test various SLM models (Orca2, Phi2, etc)
- Week 7 - 8 Test SLM agent and conduct comparison test with environments the SLM agent has not seen before, compare to traditional DRL and LLM agents
- Week 8 - 9 Write up formal report/presentation 
- Week 10 - This is carryover for any potential delays from work demand  

## Connection to NASA’s Mission
This initiative aligns with NASA's current vision for Advanced Air Mobility (AAM). By providing transparent AI, this will increase trust for human beings with AI through its capabilities to provide reasoning on its actions. In addition, by providing transparency, any potential bugs or edge-case conditions can be detected from the reasoning and identified, allowing for much easier trouble-shooting and correction.
