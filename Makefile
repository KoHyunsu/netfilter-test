netfilter-test: netfilter-test.o
	gcc -o netfilter-test netfilter-test.o -lnetfilter_queue

netfilter-test.o: nfqnl_test.c
	gcc -c -o netfilter-test.o nfqnl_test.c -lnetfilter_queue
clean:
	rm -f netfilter-test *.o
