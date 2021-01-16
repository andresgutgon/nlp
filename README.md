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
```
 docker build -t nltk .
```
`nltk` is the name of the image we built

Enter on the immage we built. Run the Docker container:
```
 docker run --name nltkplayground -it nltk
```
Now you should be inside that container and have Python running. Type `python`

### Download the book with nltk command line
```
python
>> import nltk
>> nltk.download()
```
This will prompt you with a menu inside Python interactive session.
The instructions about how to [download the book materials is in this chapter](http://www.nltk.org/book/ch01.html)
Ok now read the chapter and follow the instructions :)

## Ideas
1. Do a Node application with Svelte as UI framework and a backend that analyse sentiment analisis with [retextJS](https://github.com/retextjs/retext). This can be expanded to input a Tweet and analyse the overall sentiment of all the replys to that tweet.
