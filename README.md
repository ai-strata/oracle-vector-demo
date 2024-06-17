# du-oracle.ipynb

This Jupyter notebook contains Python code for uploading documents to an Oracle Database and querying the database to retrieve the top-k closest vectors to a given query vector. The notebook uses various libraries such as OpenAI, Sentence Transformers, OracleDB, NumPy, and Llama Index.

## Dependencies

The notebook requires the following Python libraries:

- openai
- sentence-transformers
- oracledb
- numpy
- llama-index
- pypdf

These can be installed using pip:

```bash
pip install openai sentence-transformers oracledb numpy llama-index==0.9.39 pypdf
```

## Configuration

The notebook uses several configuration parameters to connect to the Oracle Database and to define the behavior of the document upload and query processes. These parameters include the Oracle DB username, password, host IP, service name, and the Sentence Transformer model to use for generating embeddings.

## Document Upload

The `upload_documents` function is used to upload documents to the Oracle DB. The documents are split into chunks, and the embeddings for each chunk are generated using a pre-trained Sentence Transformer model. The embeddings are then saved to the DB.

## Querying the Database

The `oracle_query_cosine` function is used to query the Oracle DB to retrieve the top-k closest vectors to a given query vector. The function uses the cosine distance to compute the similarity between vectors.

## Testing

The notebook includes code to test the document upload and query processes. The tests upload documents for a business user and a technical user, and then retrieve the closest vectors for a given query vector. The retrieved vectors are used to generate an answer to a question using a pre-trained GPT-4 model. The answer is appended to the chat history, which is then displayed.

## Usage

To use this notebook, you need to have access to an Oracle Database and the necessary Python libraries. You also need to provide the documents to upload and the query vector for the query process. The notebook includes code to clear DB sessions, preprocess text, and handle exceptions.

## Note

This notebook is part of a larger project and is intended for developers with knowledge of Python, SQL, and machine learning concepts.
