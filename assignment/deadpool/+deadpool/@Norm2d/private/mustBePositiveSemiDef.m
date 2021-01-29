function mustBePositiveSemiDef(obj)
% Validates if the covariance matrix is positive semi-definite
    eigenval = eig(obj) 
    if ~(all(eigenval>=0))
        eidType = "CovM:hasnoinverse"
        msgType = 'Covariance matrix is not Positive Semidefinite.';
        throwAsCaller(MException(eidType,msgType))
    end
end