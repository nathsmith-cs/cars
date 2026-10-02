# Cars Script

A menu-driven Bash exercise for adding and displaying cars stored in a text file.

## Author and course

- Nate Smith
- CPSC 298, Chapman University
- Assignment: Cars Script
- Date: November 3, 2025

## Behavior

1. Add a car by entering its year, make, and model.
2. Display saved cars.
3. Quit.

Cars are appended to `my-old-cars` as `YEAR:MAKE:MODEL`. `cars-input` is an input fixture, not the storage file.

## Run

Run from this repository's directory:

```bash
bash cars.sh
# Replay the supplied input fixture:
bash cars.sh < cars-input
```

The fixture adds a car to `my-old-cars`; repeated runs append additional entries.

## Learning focus and limitations

This exercise practices loops, case statements, and file append operations. Input validation is limited; quit with option `3`. The quoted `"*"` case currently matches a literal asterisk rather than acting as a general invalid-input fallback.

## Resources and context

No additional references were listed for the original assignment. This repository is coursework for Chapman University and is intended for educational use.
