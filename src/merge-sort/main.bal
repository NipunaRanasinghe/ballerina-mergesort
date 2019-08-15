import ballerina/io;
import ballerina/time;

public function main(string... args) {
     testSeqMergesort(10000);
     testParallelMergesort(10000);
}

function testSeqMergesort(int size) {
    int[] sample = [];
    foreach var x in 0 ... size {
        sample[x] = size - x;
    }

    int startTime = time:currentTime().time;
    seqMergesort(sample);
    int diff = time:currentTime().time - startTime;
    io:println("Finished in " + diff.toString() + " milliseconds");
}

function testParallelMergesort(int size) {
    int[] sample = [];
    foreach var x in 0 ... size {
        sample[x] = size - x;
    }

    int startTime = time:currentTime().time;
    parallelMergesort(sample);
    int diff = time:currentTime().time - startTime;
    io:println("Finished in " + diff.toString() + " milliseconds");
}
