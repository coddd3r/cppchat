// C++ program for the Server Side



// Semaphore variables


// Reader Function

	// Lock the semaphore
	
	// Unlock the semaphore
	

	// Lock the semaphore
	

	// Lock the semaphore
	


// Writer Function

	// Lock the semaphore
	

	// Unlock the semaphore
	

// Driver Code

	// Initialize variables
	
	
	

	// Bind the socket to the
	// address and port number.
	
	// Listen on the socket,
	// with 40 max connection
	// requests queued
	

	// Array for thread
	

		// Extract the first
		// connection in the queue
		
			// Creater readers thread
			
				// Error in creating thread
				
		
			// Create writers thread
			
				// Error in creating thread

			// Update i
			
				// Suspend execution of
				// the calling thread
				// until the target
				// thread terminates


			// Update i
			