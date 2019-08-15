
function seqMergesort(int[] array){
    int[] helper = [];
    doSeqMergesort(array, helper, 0, array.length() - 1);
}

function doSeqMergesort(int[] array, int[] helper, int low, int high){
    if (low < high) {
        int middle = (low + high) / 2;
        doSeqMergesort(array, helper, low, middle);
        doSeqMergesort(array, helper, middle + 1, high);
        _ = merge(array, helper, low, middle, high);
    } 
}
