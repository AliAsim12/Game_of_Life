N = 200;          % size of the grid
p = 0.3;          % probability of each cell being alive

A = rand(N)<p;    % create a random matrix A of size N x N with values between 0 and 1, and set each element to 1 with probability p

B = zeros(N+2);   % create a larger matrix B of size (N+2) x (N+2) with all elements set to 0
B(2:N+1,2:N+1) = A;   % copy the values from matrix A into the center of matrix B, starting from row 2 and column 2

while true   % start an infinite loop
   A = zeros(N+2);   % create a new matrix A with all elements set to 0

   % iterate over all the cells in the grid, starting from row 2 and column 2
   for l=2:N+1
      for k=2:N+1
         % compute the number of "alive" neighbors
         n =  B(l+1,k) + B(l+1,k+1) + B(l,k+1) + B(l-1,k+1) + B(l-1,k) + B(l-1,k-1) + B(l,k-1) + B(l+1,k-1);

         % apply the rules of the game
         if ~B(l,k) & n==3
            A(l,k) = true;
         elseif B(l,k) & ((n==2) | (n==3))
            A(l,k) = true;
         else
            A(l,k) = false;
         end
      end
   end

   B = A;   % copy the updated state of the grid from matrix A to matrix B

   spy(B);        % display the current state of the grid as a black-and-white image using the "spy" function
   drawnow;       % update the image on the screen using the "drawnow" function
   pause(0.01);      % introduce a delay of one second using the "pause" function
end   % end the infinite loop
