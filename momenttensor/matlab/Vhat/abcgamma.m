function [a,b,c] = abcgamma(phi,sigma,gamma)
% 
%
% INPUT
%   phi     in radians
%   sigma   in radians
%   gamma   in radians
%

cosphi2 = cos(phi).^2;
sinphi2 = sin(phi).^2;
cossig2 = cos(sigma).^2;
sinsig2 = sin(sigma).^2;
cos2phi = cos(2*phi);
sin2phi = sin(2*phi);
cos2sig = cos(2*sigma);
sin2sig = sin(2*sigma);
cos2gam = cos(2*gamma);
sin2gam = sin(2*gamma);

a = 1/2 * ( ...
      sinphi2 + sinsig2 + 2*cosphi2 .* cossig2 ...
    + (cosphi2 + cossig2 - sinphi2 .* sinsig2 ) .* cos2gam ...
    + sqrt(3) * (1 - cosphi2 .* cossig2) .* sin2gam ...
    );

b = -sin2phi .* sin2sig .* sin(gamma - pi/6).^2;

c = 1/2 * ( ...
    -cosphi2 - cossig2 + 2*cosphi2 .* cossig2 ...
    + (sinphi2 .* sinsig2 - 2*cosphi2 .* cossig2) .* cos2gam ...
    - sqrt(3)*sinphi2 .* sinsig2 .* sin2gam ...
    );
