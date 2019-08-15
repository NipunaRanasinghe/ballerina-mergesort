
function seqMergesort(int[] array) returns int[] {
    int[] helper = [];
    return doSeqMergesort(array, helper, 0, array.length() - 1);
}

function doSeqMergesort(int[] array, int[] helper, int low, int high) returns int[] {
    if (low < high) {
        int middle = (low + high) / 2;
        _ = doSeqMergesort(array, helper, low, middle);
        _ = doSeqMergesort(array, helper, middle + 1, high);
        _ = merge(array, helper, low, middle, high);
        return array;
    } else {
        return array;
    }
}
