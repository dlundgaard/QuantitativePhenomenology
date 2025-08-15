import pandas as pd
import numpy as np
import sentence_transformers

def main():
    database = pd.read_parquet("data/database_preprocessed.parquet")
    corpus = database["content"].values

    # model = sentence_transformers.SentenceTransformer("nvidia/NV-Embed-v2", trust_remote_code=True)
    model = sentence_transformers.SentenceTransformer("data/transformer_models/NV-Embed-v2.model", trust_remote_code=True)

    embeddings = model.encode(
       corpus,
       batch_size = 4,
       normalize_embeddings = True,
       show_progress_bar = True,
    )

    # pools = model.start_multi_process_pool(target_devices = ["cpu"] * 4)
    # embeddings = model.encode_multi_process(
    #     corpus,
    #     pool = pools,
    #     batch_size = 32,
    #     normalize_embeddings = True,
    #     show_progress_bar = True,
    # )
    # model.stop_multi_process_pool(pools)

    print(embeddings.shape)
    print(embeddings)

    np.save("data/embeddings", embeddings)

if __name__ == "__main__":
    main()
