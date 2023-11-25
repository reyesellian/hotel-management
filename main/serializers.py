import serializers
from .models import Amenitie, Room, StandardRoom, FamilyRoom, DeluxeRoom

class RoomSerializer(serializers.ModelSerializer):
    class Meta:
        model = StandardRoom
        fields = ['room_number', 'amenitie', 'occupied', 'paid']