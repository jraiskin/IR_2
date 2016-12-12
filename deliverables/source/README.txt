All of the code needed to reproduce our results is found in the jupyter notebook provided.
The code runs with 4GB RAM, however we noticed that the pre-processing stage runs significantly faster when 6GB RAM where allocated.

1) Increase the allocated RAM to 6GB (or at least to 4GB).
2) Place "tinyir-1.1.jar" in a directory and the Tipster dataset in another directory (could also be the same directory).
3) Determine your system username. This could be done from within Scala with by typing: System.getProperties().get("user.name").toString
4) Set a new case in the first cell of the code that matches you username with the Tipster dataset directory (doc_dir) and the tinyir-1.1.jar directory (files_path).

You are all set to run the code!

Estimated running time:
    Preprocessing and pruning: ~90 minutes
    Hyper-parameters and model configurations search: ~60 minutes
    Other parts of the code run reasonably fast (several minutes)
