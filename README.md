# What's this?
This is just me learning a bit about NLP (Natural Lenguage Proccesing). I got interested in this when I heard about sentiment analysis. I'll put in this readme the main resources that I find interesting.

## Learning material
I'll try to update here with all the resourses I find helpfull for learning and doing things related with NLP

### NLP || Dan Jurafsky || Stanford University
I got introduced to NLP in [this YouTuve playlist](https://www.youtube.com/playlist?list=PLLssT5z_DsK8HbD2sPcUIDfQ7zmBarMYv). Is a series of short introductory videos explaining the base concepts.

### NLTK Book (I'm here now)
[nltk](http://nltk.org/) is a Python framework to work with human language language. They have [a book](http://www.nltk.org/book/) explaining the software and how it works

## A note on Jupyter Notebooks
From [jupyter.org](https://jupyter.org/) website:
> The Jupyter Notebook is an open-source web application that allows you to create and share documents that contain live code, equations, visualizations and narrative text.

So this is great. I started my `Dockerfile` from on Dockerfile they maintain with python package for science and added
the packages I need like `nltk`.

## Follow the book with Jupyter Notebooks and NLTK (The software)
To interact with this Python package I'm going to use a Docker image with latest Python and nltk + dependencies. This is how to build and open the playground
To build the Docker images go to the root of this repo and do:
`nltk` is the name of the image we built
```
 docker build --rm -t jupyter/nltk-book .
```

This command will start an server on port `8888` on your browser. Follow the instructions
```
 docker run -p 8888:8888 --volume={PATH_IN_YOUR_COMPUTER}:/home/jovyan jupyter/nltk-book:latest
```
Note:
`PATH_IN_YOUR_COMPUTER` has to be a valid path in your computer. Mine for example is:
`/Users/andres/code/andresgutgon/nlp/book`. This way when Jupyter writes a book page it is storage in my
machine because the volume is share between Docker and the host (my machine).

### Download the book with nltk command line
Create a note book in Jupyter UI and run these commands. This will save in `PATH_IN_YOUR_COMPUTER` the book
chapters and all NLP code necesary
```
python
>> import nltk
>> nltk.download()
```
After that follow the book. To import

## Ideas
1. Do a Node application with Svelte as UI framework and a backend that analyse sentiment analisis with [retextJS](https://github.com/retextjs/retext). This can be expanded to input a Tweet and analyse the overall sentiment of all the replys to that tweet.
