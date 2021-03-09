## Review 2

Digital audio workstations, musicians apply filters to tracks.
Band pass filter - filters out frequencies.
Upper limit
Lower limit
Any frequency that exceeds the upper limit is set to the upper limit
Any frequency that exceeds the lower limit is set to the lower limit

Sometimes filters aren't passed in correctly, and sometimes there are nils in the input - if there are nils, it should raise an error that the input is corrupted

Input | Output
[10, 20, 30, 40, 50, 60], 25, 45 => [25, 25, 30, 40, 45, 45]

1. Array - the track that's being changed - Each integer is a frequency
2. Lower limit - 40 (default if not specified)
3. Upper limit - 1000 (default if not specified)

Input | Output
[10, 20, 30, 40, 50, 60], 25, 45 => [25, 25, 30, 40, 45, 45]

[40, 50, 60, 1000], 40, 1000 => [40, 50, 60, 1000]
[30, 50, 60, 1000], 40, 1000 => [40, 50, 60, 1000]
[40, 50, 60, 1100], 40, 1000 => [40, 50, 60, 1000]
[30, 50, 60, 1100], 40, 1000 => [40, 50, 60, 1000]

[40, 50, 60, 1000] 25, 45 => [40, 45, 45, 45]

[40, 50, 60, nil] 25, 45 => error "The input is corrupted"
