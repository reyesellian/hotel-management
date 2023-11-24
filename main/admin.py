from django import forms
from django.contrib import admin
from .models import Amenitie, Room, StandardRoom, FamilyRoom, DeluxeRoom


class RoomAdminForm(forms.ModelForm):
    class Meta:
        model = Room
        fields = '__all__'

    def __init__(self, *args, **kwargs):
        super().__init__(*args, **kwargs)
        # Customize the widget for the room_number field
        self.fields['room_number'].widget = forms.Select(choices=self.fields['room_number'].choices)

@admin.register(Amenitie)
class AmenitieAdmin(admin.ModelAdmin):
    list_display = ('name',)

@admin.register(Room)
class RoomAdmin(admin.ModelAdmin):
    list_display = ('room_number', 'occupied', 'paid', 'category', 'get_room_type')
    list_filter = ('occupied', 'paid', 'category')
    readonly_fields = ('room_number', 'occupied', 'paid', 'category', 'get_room_type')

    def get_room_type(self, obj):
        # Return a string representing the type of the room
        return 'Standard' if isinstance(obj, StandardRoom) else \
               'Family' if isinstance(obj, FamilyRoom) else \
               'Deluxe' if isinstance(obj, DeluxeRoom) else \
               'Unknown'
    get_room_type.short_description = 'Room Type'
    
    def has_add_permission(self, request):
        # Disable add permission
        return False

    def has_change_permission(self, request, obj=None):
        # Disable change permission
        return False

    def has_delete_permission(self, request, obj=None):
        # Disable delete permission
        return False

    def has_view_permission(self, request, obj=None):
        # Enable view permission
        return True

@admin.register(StandardRoom)
class StandardRoomAdmin(admin.ModelAdmin):
    list_display = ('room_number', 'occupied', 'paid', 'max_capacity_display')
    list_filter = ('occupied', 'paid')

    def max_capacity_display(self, obj):
        return obj.MAX_CAPACITY
    max_capacity_display.short_description = 'Max Capacity'

@admin.register(FamilyRoom)
class FamilyRoomAdmin(admin.ModelAdmin):
    list_display = ('room_number', 'occupied', 'paid', 'max_capacity_display')
    list_filter = ('occupied', 'paid')

    def max_capacity_display(self, obj):
        return obj.MAX_CAPACITY
    max_capacity_display.short_description = 'Max Capacity'

@admin.register(DeluxeRoom)
class DeluxeRoomAdmin(admin.ModelAdmin):
    list_display = ('room_number', 'occupied', 'paid', 'max_capacity_display')
    list_filter = ('occupied', 'paid')

    def max_capacity_display(self, obj):
        return obj.MAX_CAPACITY
    max_capacity_display.short_description = 'Max Capacity'
