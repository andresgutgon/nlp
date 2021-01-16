# What's this?
This is just me learning a bit about NLP (Natural Lenguage Proccesing). I got interested in this when I heard about sentiment analysis. I'll put in this readme the main resources that I find interesting.

## Learning material
I'll try to update here with all the resourses I find helpfull for learning and doing things related with NLP

### NLP || Dan Jurafsky || Stanford University
I got introduced to NLP in [this YouTuve playlist](https://www.youtube.com/playlist?list=PLLssT5z_DsK8HbD2sPcUIDfQ7zmBarMYv). Is a series of short introductory videos explaining the base concepts.

### NLTK Book (I'm here now)
[nltk](http://nltk.org/) is a Python framework to work with human language language. They have [a book](http://www.nltk.org/book/) explaining the software and how it works

## NLTK (The software)
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
Inside the container:
```
python
>> import nltk
>> nltk.download()
```
This will prompt you with a menu inside Python interactive session.
The instructions about how to [download the book materials is in this chapter](http://www.nltk.org/book/ch01.html)
The downloaded book is mounted in a Docker volume so it's in your machine (Check Dockerfile if courious).
Ok now read the chapter and follow the instructions :)

### Pick from previous day
To start an existing container and attach to it in one command
This is when you already run the 2 previous commands. When you come back to learning more.
```
docker start -ai nltkplayground
```

## Ideas
1. Do a Node application with Svelte as UI framework and a backend that analyse sentiment analisis with [retextJS](https://github.com/retextjs/retext). This can be expanded to input a Tweet and analyse the overall sentiment of all the replys to that tweet.
