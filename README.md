# Information Retrieval Project 2: Search engine

We are requested to implement 2 variants of an information retrieval system:  
  - Term-based model: 
    We implemented a tf-idf system, after pre-processing the data 
    (tokenizing, stop-words removal, stemming and pruning the vocabulary).  
    We implemented both a naieve approach and 
    an approach that pruns candidates based on the number of intersections between the query tokens and the document tokens, 
    then looks more closely at the highest ranking candidates in order to propose a final ranked list.  
    Later, we also experimented with models inspired by the Okapi-BM25 model.  
  - Language Model:  
    We implemented a language system, with MLE for the relative term probabilities, as well as a Jelinek-Mercer smoothing, 
    on the pre-processed data, as described above.  
    We experimented with different combinations of hyper-parameters and transformations (raw tf, log(1+tf), etc.).  
Both systems and their configurations were optimized and scored based on their MAP (mean average precision) metric.  
