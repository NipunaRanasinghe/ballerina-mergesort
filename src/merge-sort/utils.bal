public function merge(int[] array, int[] helper, int low, int middle, int high) {
    foreach var i in low ... high {
        helper[i] = array[i];
    }

    int helperLeft = low;
    int helperRight = middle + 1;
    int current = low;

    while (helperLeft <= middle && helperRight <= high) {
        if (helper[helperLeft] <= helper[helperRight]) {
            array[current] = helper[helperLeft];
            helperLeft = helperLeft + 1;
        } else {
            array[current] = helper[helperRight];
            helperRight = helperRight + 1;
        }
        current = current + 1;
    }

    while (helperLeft <= middle) {
        array[current] = helper[helperLeft];
        current = current + 1;
        helperLeft = helperLeft + 1;
    }
}