# Review 2

This is a repo for my second tech test review with Makers. Reviews are an hour-long remote sessions conducted via Zoom. The reviewer roleplays as a product owner with a set of non-technical requirements. The developer uses the Makers dev process to convert these requirements into a working, tested, well-written application.

I decided to complete this review using Ruby.

## Client Specification

Client provides digital audio workstations, to allow musicians to apply filters to tracks.
They would like a band pass filter that filters out frequencies that are too low or too high.
Any frequency that exceeds the upper limit is set to the upper limit.
Any frequency that exceeds the lower limit is set to the lower limit.

Sometimes filters aren't passed in correctly, and sometimes there are nils in the input - if there are nils, it should raise an error that the input is corrupted

### Sample Input and Output

Input

1. Array - the track that's being changed - Each integer is a frequency
2. Lower limit - 40 (default if not specified)
3. Upper limit - 1000 (default if not specified)

Input | Output

```
[10, 20, 30, 40, 50, 60], 25, 45 => [25, 25, 30, 40, 45, 45]


<!-- TEST SIMPLEST ELEMENT FIRST -> then wouldn't have to iterate over an array!
[40], 40, 1000 => [40] -->


[40, 50, 60, 1000], 40, 1000 => [40, 50, 60, 1000]
[30, 50, 60, 1000], 40, 1000 => [40, 50, 60, 1000]
[40, 50, 60, 1100], 40, 1000 => [40, 50, 60, 1000]
[30, 50, 60, 1100], 40, 1000 => [40, 50, 60, 1000]

[30, 50, 60, 1100] => [40, 50, 60, 1000]

[40, 50, 60, 1000] 25, 45 => [40, 45, 45, 45]

[40, 50, 60, nil] 25, 45 => error "The input is corrupted"
```
