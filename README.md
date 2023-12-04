Logos Sophokleios/Logoi Sophokleioi
------

An experiment with TF-IDF and the Sophoclean corpus (excluding Trackers and fragments).

## Overview

Select interactive charts can (barring application failure) be viewed here: https://logos-sophokleios.fly.dev/apps/logos-sophokleios --- please reach out if you need the password.

All of the raw data are also available under [files](./files).

These results represent early experiments in "guided close-reading."

The texts are those from the [Perseus Digital Library](https://github.com/PerseusDL/canonical-greekLit).

Lemmatization was performed using the [CLTK](https://cltk.org).

These experiments use TF-IDF to create weighted vectors for each character's speech in a tragedy. Every line of a character's speech can then be compared with the other characters' "bag of words" to approximate "similarity" or "characteristicness."

For example, to score a line from Character A:

- Let `L` be a line from Character A.
- Let `B` be the vector of all lemmata from Character B.
- Calculate the average of every lemma `w` in `L`, taking the weight for `w` in `B` (or 0 if `w` ∉ `B`).
- Divide the average by the max score in `B` (to help adjust for vector differences)

These scores can then be plotted for visual comparison.

## Areas for improvement

- The lemmatization process is consistent, but it is not perfect.
- I'm not entirely convinced that dividing by the max score for the compared character is the correct way to normalize the scores. (Cosine similarity is another common method of comparison, but it seems to answer the wrong question here: the experiments here want to look at the relative magnitude of one character's speech compared to other characters' speeches, not at how similar their individual weights are for a given line.)

## Additional experiments

- Compare same-named speakers in different plays
  - [ ] Oedipus (OT, OC)
  - [ ] Odysseus (Ajax, Philoctetes)
  - [ ] Antigone (Antigone, OC)
  - [ ] Ismene (Antigone, OC)
  - [ ] Creon (Antigone, OT, OC)

- Cross-genre comparisons (epic and tragedy)
- Microphilology (comparing tokens at the sub-word level)?

# LICENSE

The MIT License

Copyright 2023 Charles Pletcher

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

