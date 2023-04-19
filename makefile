
image:image.c image.h
	gcc -g image.c -o image -lm
thread_image:thread_image.c thread_image.h
	gcc -g thread_image.c -o thread_image -lm -lpthread -std=c99
openmp_image:openmp_image.c openmp_image.h
	gcc -g thread_image.c -o thread_image -lm -fopenmp -std=c99
darwin: thread_image.c thread_image.h openmp_image.c openmp_image.h
	openmp_image
	thread_image
clean:
	rm -f image thread_image output.png