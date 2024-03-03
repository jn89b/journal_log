## Obstacle avoidance 
- Use KNN to find nearest n obstacle
- Check for the following
    - if heading towards the obstacle:
        - compute ego_unit_vector
        - compute los_from ego to los
        - dot_product:
            - if positive facing towards it
    - distance/manuever check
        - Compute the minimum radius to turn
        - Take the difference and if negative we're probably screwed so need to turn 
        - If within threshold or buffer we need to turn  
        - compute distance and compute phi to manuever:
            - $\phi_{computed} = v_{curr}^2/(gr)$
            - if $\phi_{computed} + \phi_{computed} >= \phi_{max}$
            - Then dangerous

    - If both these conditions hold true then I need to set a reference point and depending on the sign convention of the aircraft (left or right) set the desired phi angle to the max or min phi angle  
    