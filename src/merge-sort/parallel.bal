
function parallelMergesort(int[] array) returns int[] {
    int[] helper = [];
    return doSeqMergesort(array, helper, 0, array.length() - 1);
}

function doParallelSeqMergesort(int[] array, int[] helper, int low, int high) returns int[] {
    if (low < high) {
        int middle = (low + high) / 2;
        fork {
            worker w1 {
                _ = doSeqMergesort(array, helper, low, middle);
            }
            worker w2 {
                _ = doSeqMergesort(array, helper, middle + 1, high);
            }
        }
        _ = wait{w1,w2};
        _ = merge(array, helper, low, middle, high);
        return array;
    } else {
        return array;
    }
}
