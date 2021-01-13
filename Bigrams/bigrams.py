import cudf

def bigrams(s: str):
   cudf.Series(s)
       .str
       .ngrams_tokenize(2, ' ')
       .value_counts()
