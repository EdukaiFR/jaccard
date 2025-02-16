## Example 1

### Input

```
./jaccard "The cat sat on mat and watched the bird fly by the window." "By the window the bird fly watched and cat sat on the mat."
```

### Output

```
Index of similarity: 100.00%
```

## Example 2

### Input

```
./jaccard "The quick brown fox jumps over lazy dog." "Lazy dog jumps over the quick brown fox."
```

### Output

```
Index of similarity: 100.00%
```

## Example 3

### Input

```
./jaccard "THIs twO TwO tWo texts MAy look Different but they'Re verY Similar" "This two texts may look different but they're very similar"
```

### Output

```
Index of similarity: 100.00%
```

## Example 4

### Input

```
./jaccard "Success is achieved through dedication and perseverance. Those who remain committed to their goals and consistently put in effort will achieve great things. Whether in education, sports, or business, steady progress is made through persistence. Challenges will arise, but those who keep moving forward will succeed. Hard work, perseverance, and determination are the foundation of success." "Success comes through dedication and perseverance. Those who stay committed to their goals and consistently put in effort will achieve great things. Whether in education, sports, or business, steady progress is made through persistence. Obstacles will arise, but those who keep moving forward will succeed. Hard work, perseverance, and determination are the core of success."
```

### Output

```
Index of similarity: 84.00%
```

## Example 5

### Input

```
 ./jaccard "The old oak tree stood tall in the park, its branches reaching towards the sky. Its thick trunk bore the marks of countless years, while its leaves rustled gently in the breeze. Children played beneath its sprawling canopy, seeking shade from the summer sun. This ancient guardian had witnessed generations come and go, standing as a silent sentinel of time." "The old oak tree stood tall in the park, its branches stretching towards the sky. Its thick trunk bore the signs of countless years, while its leaves whispered softly in the breeze. Children played beneath its sprawling canopy, seeking shelter from the summer sun. This ancient guardian had observed generations come and go, standing as a quiet sentinel of time."
```

### Output

```
Index of similarity: 75.86%
```

## Example 6

### Input

```
 ./jaccard "The purple elephant danced a tango on the shimmering moonbeam" "A rusty cog turned slowly within the heart of the ancient clock tower."
```

### Output

```
Index of similarity: 10.00%
```

## Example 7

### Input

```
./jaccard "OCaml is a great programming language" "This has nothing to do with it."
```

### Output

```
Index of similarity: 0.00%
```