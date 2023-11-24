from django.db import models

class Amenitie(models.Model):
    name = models.CharField(max_length=50)

    def __str__(self):
        return self.name

class Room(models.Model):
    room_number = models.IntegerField(unique=True)
    amenitie = models.ManyToManyField(Amenitie)
    occupied = models.BooleanField(default=False)
    paid = models.BooleanField(default=False)

    ROOM_CATEGORIES = [
        (1, 'Standard Rooms'),
        (2, 'Deluxe Rooms'),
        (3, 'Family Rooms'),
    ]
    
    category = models.IntegerField(choices=ROOM_CATEGORIES, default=1)

    def __str__(self):
        return f"Room {self.room_number}"

class StandardRoom(Room):
    MAX_CAPACITY = 2

class FamilyRoom(Room):
    MIN_CAPACITY = 3
    MAX_CAPACITY = 5

class DeluxeRoom(Room):
    MIN_CAPACITY = 6
    MAX_CAPACITY = 10