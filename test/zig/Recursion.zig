fn factorial(num: u32) u32 {
    if (num <= 1) {
        return 1;
    }

    return num * factorial(num - 1);
}
