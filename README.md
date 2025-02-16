# Jaccard 🧬

Calculate the similarity index between two texts.

This uses the [Jaccard index](https://en.wikipedia.org/wiki/Jaccard_index) (developed by [Paul Jaccard](https://en.wikipedia.org/wiki/Paul_Jaccard)) to determine how similar two texts are.


### Prerequisites

Before starting, ensure you have the following dependencies installed locally:

- **dune** (v**3.16** or higher)
- **OCaml** (v**4.08.0** or higher)
- **make**

### Usage

**Steps**

1. Clone this repository and open it

2. Compile the program with the command

```
make
```

3. Then you can use it as specified here :

```
USAGE: ./jaccard <str1> <str2>

   <str1>          : The first text to compare (as a string)
   <str2>          : The second text to compare (as a string)

OPTIONS:
   -h              : display this message
```