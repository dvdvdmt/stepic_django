from django.db import models
from django.contrib.auth.models import User


# Create your models here.
class Question(models.Model):
    title = models.CharField(max_length=255)
    text = models.TextField()
    rating = models.IntegerField()
    added_at = models.DateTimeField(auto_now=True)
    author = models.ForeignKey(User, related_name="question_author")
    likes = models.ManyToManyField(User)


class Answer(models.Model):
    text = models.TextField()
    added_at = models.DateTimeField(auto_now=True)
    question = models.ForeignKey(Question)
    author = models.ForeignKey(User, related_name="answer_author")
