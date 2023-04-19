
image:image.c image.h
	gcc -g image.c -o image -lm
thread_image:thread_image.c thread_image.h
	gcc -g thread_image.c -o thread_image -lm -lpthread
clean:
	rm -f image thread_image output.png