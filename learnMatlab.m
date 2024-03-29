	
% --------------Basics--------------
	;	% supresses a command
	help(min())		% returns the manual pages of the function
	~= 	% means !=
	% For statements
		for x=0:15
			disp(x)
		end
	% while
		x=0;
		while x<5
			disp(x);
			x=x+1;
			break;
		end
	% If 
		if logical=stuff
			% do something
		elseif other=logical
			% do this
		else
			% this
		end



% --------------Data Types--------------
	syms X Y phi 			% symbolic variables are made
	double
	single 
	int32, int16, int8    	% (int, short, char, *)
	uint32, uint16, uint8 	% (unsigned)
	% To typecast
	x=rand()*7;
	y=int32(x);


% --------------Matrices--------------
	x=[1,2;3,4] % "," defines a column break, ";" defiens a row break
		% y=[1;2] is a column.
		% z=[1,2] is a row.
	% To access a matrix value:
	num=x(1,1);
	% To access all of a dimension in a matrix
	y=(:,1:2,:);
	z=(:,2:end,:);
	% Dot operator - evaluates on individual entries rather than the whole matrix
	z=x.^2; %squares the individual values


% --------------Functions--------------
	% Normal ones
	function [x,y,z]=convert3d(RR,iinz)
		%info and x,y,z are set
		return;
	end
	% Anonymous functions
	Func=@(x)   x.*sin(1./x) 
	Name=@(variable)
	% call function
	feval(Func, variables)



% --------------Figures and plotting--------------
	f=figure();
	% Subplot
		subplot(2,2,1);
		x=rand(10,1);
		y=x.^2;
		plot(x,y);
		title({'subplot 1', 'below it'}, 'color', 'white');		
		xlabel("x")
		ylabel("y")
		subplot(2,2,2);
		plot(x,y);

	% Boxplot
		boxplot(x)	% will create a boxplot for the values in x
	% Histogram
		hist(x, nbins)	% x is the data, generally nbins=sqrt(x) number of bins
	% Normal distribution plot
		normplot(x)
	% Qqplots
		qqplot(x)
		qqplot(x,pd)	% where pd is the probability distribution
		% If the data is in the configuration of being normal, it will match the red line in the centre
		

% --------------Image Maniplation and functions--------------
	% 2d images are in the form a 3d matrix
		% Image=[x,y,z];
			% x is the x co-ord
			% y is the y co-ord
			% z[3] is the rgb 
		% z(1)=red,  z(2)=green, z(3)=blue
		red=Image(:,:,1);
	% RGB:
		%0 is black 
		% 255 is full color or white
	% Depth to xyz
		[r,c]=ind2sub(size(RR), iinz);
		xx=RR(iinz);
		yy=RR(iinz).*(c-80).*(4/594);
		zz=-RR(iinz).*(r-60).*(4/592);
	% Angle rotation
		% Rotates about y
		radang=angle*(pi/180);
		rad=sqrt(xx.^2+zz.^2);
		currang=atan(zz./xx);
		ang=currang+radang;
		newxx=cos(ang).*rad;
		newzz=sin(ang).*rad;
	% Remove points
		x=find(y>0.5);
		y(x)=[];
	% Show an image in a figure
		fig=figure();
		subplot(1,2,1);
		imshow(A);	% where A is the image
	% flip an image lr
		B=fliplr(A)
	% check if an image exists
		if ~exist('image', 'var')
			%shit happens if the image does not exist
		end;
	% saving figure
		savefig(A, 'Name.jpeg');
	% Camera Calibration
		% Detect the checkerboard corners in the images.
		[imagePoints, boardSize] = detectCheckerboardPoints(files);
		% Generate the world coordinates of the checkerboard corners in the
		% pattern-centric coordinate system, with the upper-left corner at (0,0).
		squareSize = 29; % in millimeters
		worldPoints = generateCheckerboardPoints(boardSize, squareSize);
		% Calibrate the camera.
		cameraParams = estimateCameraParameters(imagePoints, worldPoints);
		% Undistort the Image
		[im, newOrigin] = undistortImage(imOrig, cameraParams, 'OutputView', 'full');
	% image importing 
		imread()	% imports image array to Matlab from a source
		imshow()	% displays image array in Matlab
	% changing colour spaces
		rgb2hsv(image);
		rgb2gray(image);				% makes a grayscale image
		im2bw(image,thresholdValue);	% makes a bw image 
		% RGB to LAB
		cform = makecform(‘srgb2lab’);
		lab = applycform(image, cform);
	% binary image manipulation
		bwareaopen(binaryImage, size)	% Removes small objects from binary image
		imerode(binaryImage)			% Erodes the binary image
		imdilate(binaryImage)			% Dilates the binary image
		imopen()
		imclose()
		regionprops(binaryImage)		% Measures various properties of the binary image
		% We can create filters to extract the regions of interest
		% Properties include – Area, bounding box, eccentricity, convex hull etc


			

% --------------Functions--------------
	zeros(100,1) 	% Creates a vector of 100 rows and 1 column, all are zero. 
	ones(100,1)		% Same as zeros, but sets to 1. 
	rand(10,10) 	% returns a 10x10 matrix of random numbers between 0 and 1. 
	disp(variable);		% prints text.
		disp('text');
	eye(num);		% 2D square matrix with num columns and rows, whose elements are all equal to zero, except the diagonals are equal to 1. 
	diag(vector);	% creates a square matrix whose diagonals are determined by vector, the other values are zero. 
		diag([11,12,13]);
		diag(y);	% Additionally, it can extract the diagonal elements of a matrix when given a matrix as an argument.
	cat()				% Concatenates x onto y in the third dimension. 
		x=zeros(3,4,2);
		y=ones(3,4,3);
		z=cat(3,x,y);
	horzcat()
	vertcat();
	whos('z');	% prints out certain info about the variable. 
	transpose(x)	% transposes the matrix
		y=x'' (but just one);		% alternative
	reshape 	% Reshapes the matrix, keeping all of the components, but changing the shape. 
		A=rand(2,4);
		A=reshape(A,8,1);
	permute							% transpose, but can deal with higher dimensions. In the second line, the [1,2,3]-->[2,1,3], 1st dim is permed with the 2nd, 2nd with the 1st, and 3rd with itself. 
		A=rand(3,4,5);
		B=permute(A, [2,1,3]);
	ndims(B);	% returns the number of dimensions for matrix B
	size(B);	% Will return the size of B (lengths of the arrays).
	find(B>0.5);	% Returns the indexes for which >0.5 applies to B. C is the elements of B that apply to find. 
		C=B(A);
	min(Array)	% returns the min val in array
	max(Array)	% returns the max val in array
	mean(func)	% mean of a function??
	ceil(x)		% rounds upwards to the nearest integer
	floor(x)	% rounds downwards to the nearest integer
	linspace(x,y,n)	% Generates a vector of n points between x and y.
	length(x)	% will return the length of an array
	sum(x)	% gets the sum of integers in an array
	char 	% converts an integer to the character 
	findstr 	% inds one string in another. Returns ...???
	num2str		% Converts a number to a string.
	str2num 	% Converts a string to a number
	strcmp 	% Compares two strings- returns __ when true. Returns __ if not
	strmatch 	% Identifies rows of a character array that begin with a string.
	strncmp 	% compares the first n elements of two strings.
	sprintf 	% Converts strings and numeric values to a string
	sqrt(m) 	% root of a matrix
	round 	% rounds to the nearest integer	
	prod	% finds the product of an array
	sort 	% sorts an array
	var
	std 	% std deviation
	feval(Func, variables)
	jacobian(function, [x;y;phi])



% --------------Statistics--------------
	% --------------Data Analysis--------------
		% 5 number summary
			v=[0  0.25  0.5  0.75  1]
			q=quantile(x,v)	% where x is the array or vector of numbers. will give 5 number summary
			IQR=q_3−q_1
				% Outliers are 1.5*IQR away from q3 and q1
			summary(table)	% 5 num sum as well

	% --------------Distributions--------------
		% Normal (Or Gaussian): X~N(μ, σ)~N(mean,std)
			normpdf(a,μ, σ)						% P(X=a)
			normcdf(a,μ, σ)						% P(X<a)
			1−normcdf(a,μ, σ)					% P(X>a)
			binocdf(15,μ, σ)−binocdf(9,μ, σ)	% P(10≤X≤15)   Because of the equality 10 must still be included!!!!
			z^∗=norminv(0.75+(1−0.75)/2)		% P(−z^∗<Z<z^∗ )=0.75     
		% Standard normal
			% This is the normal distribution with a μ=0  and  σ=1 
		% Binomial: X~Bin(n,π) - N is the number of events (times done), Pi is the probability  (μ=E(X)=nπ, σ^2=Var(X)=nπ(1−π))
			binopdf(a,n,π)	% P(X=a)
			binocdf(a,n,π)	% P(X<a)
		% Bernoulli: X~Bern(π)- 
			% This is a special case of the binomial distribution where n=1. 
		% Poisson: X~P(λ) - λ is the intensity of the function.  (E(X)=λ=var(X))
			% This is concerned with the number of occurrences of some random event over a fixed amount of time.
			poisspdf(a,λ)	% P(X=a)
			poisscdf(a,λ)	% P(X<a)
		% T distribution: T~t_4
			% Used when we don't know the standard distribution
			tcdf(2,4)						% P(T<2)     
			z^∗=tinv(0.75+(1−0.75)/2, 4)	% P(−t^∗<T<t^∗ )=0.75 
		% Uniform Distribution: X~U_[α,β] 
			% Continuous distribution that is uniform
			% E(X)=(α+β)/2
			% Var(X)=(β−α)^2/12
			% P(a<X<b)=(b−a)/(β−α)
			unifpdf(a, A, B)	% P(X=a)
			unifcdf(a, A,B)		% P(X≤a)
		% Random variables of distributions
			% if   X~N(μ,σ)    and   Y~exp⁡(μ)
			% 1000 random values of T=X+Y=1000 normal values+1000 exp⁡values
			RANDT=normrnd(μ,σ, 1000, 1)+exp⁡(μ, 1000, 1)
				% Where the 1000 and 1 are a 1000x1 array
		% Independent variables
			T=X+Y
			mean(T)=mean(X)+mean(Y)


	% --------------Statistical interference--------------
		% Confidence intervals:
			% For a 90% confidence interval:
			Z=norminv(0.95)		% as 0.95=0.9+(1−0.9)/2
		% Testing
			% Ztest- will test if the data from x comes from a normal distribution with the desired mean and std. 
				ztest(x, μ,σ)	 % Returns 1 if it rejects the hypothesis and 0 if it accepts
				
			% Ttest - tests if the data from x comes from a normal distribution with a mean of 0 and an unknown std
				ttest(x)	% Returns 1 if null
				
		
		




