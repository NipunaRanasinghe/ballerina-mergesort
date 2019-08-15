
function parallelMergesort(int[] array) {
    int[] helper = [];
    doParallelMergesort(array, helper, 0, array.length() - 1);
}

function doParallelMergesort(int[] array, int[] helper, int low, int high) {
    if (low < high) {
        int middle = (low + high) / 2;
        fork {
            worker w1 {
                doParallelMergesort(array, helper, low, middle);
            }
            worker w2 {
                doParallelMergesort(array, helper, middle + 1, high);
            }
        }
        _ = wait {w1,w2};
        merge(array, helper, low, middle, high);
    }
}
