classdef ENTITY < handle
    
    properties
        workspace
        location
        model
        plyFile
    end
    
    methods
        function self = ENTITY(workspace, location, name, plyFile)
            self.workspace = workspace;
            self.location = location;
            self.model(name, plyFile);
        end
        
        
    end
    
end