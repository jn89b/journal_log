-- Parameters
local rc_channel = 7 -- Example: RC channel 7
local parameter_name = "PEW_PEW" -- Replace PARAM_NAME with your parameter's name
local pwm_threshold = 1500 -- PWM threshold for switching

local pew_pew_param = Parameter(parameter_name)

function update()
    local pwm = rc:get_pwm(rc_channel)
    if pwm then
        if pwm > pwm_threshold then
            -- Set parameter to 1
            -- param:set(parameter_name, 1)
            pew_pew_param:set(1)
        else
            -- Set parameter to 0
            -- param:set(parameter_name, 0)
            pew_pew_param:set(0)
        end
    end
    
    return update, 1000 -- Check every 1000ms (1 second)
end

return update()