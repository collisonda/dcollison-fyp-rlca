function [Scenarios] = generatescenarios(nScenarios)
    Scenarios = cell(1,nScenarios);
    
    th = linspace(-pi/2,2*pi-pi/2,nScenarios+2);
    xunit = round(2*(90*cos(th)))/2;
    yunit = round(2*(90*sin(th)))/2;
    
    for iScenario = 1:nScenarios
        data = [xunit(iScenario+1), yunit(iScenario+1); xunit(1),yunit(1)];
       Scenarios{iScenario} =  data;
    end

end
