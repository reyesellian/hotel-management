from django.shortcuts import get_object_or_404, render
from django.http import JsonResponse
from .models import Amenitie, Room, StandardRoom, FamilyRoom, DeluxeRoom

from django.views.decorators.csrf import csrf_exempt

API_KEY = "django-digibyte-hotels-key"

# Create your views here.
def home_screen_view(request):
    return render(request, "personal/home.html")

def update_vacancy_status(room_number, occupied=True):
    try:
        room = Room.objects.get(room_number=room_number)
        room.occupied = occupied  
        room.save() 
        return True
    except Room.DoesNotExist:
        return False
    
def update_room_status(request, room_number, token):
    if token_is_valid(token):
        success = update_vacancy_status(room_number, occupied=True)
        if success:
            response_data = {
                'status': 'success',
                'message': 'Room status updated successfully.',
                'data': {'room_number': room_number, 'occupied': True}
            }
            return JsonResponse(response_data, status=200)
        else:
            response_data = {
                'status': 'error',
                'message': 'Room not found.',
            }
            return JsonResponse(response_data, status=404)
    else:
        response_data = {
            'status': 'error',
            'message': 'Invalid Token.',
        }
        return JsonResponse(response_data, status=403)

def token_is_valid(token):
    return token == API_KEY

def about_screen_view(request):

    context = {}

    return render(request, "about.html", context)

def qr_screen_view(request):

    context = {}

    return render(request, "qr.html", context)

def contact_screen_view(request):

    context = {}

    return render(request, "contact.html", context)

def facility_screen_view(request):

    context = {}

    return render(request, "facility.html", context)

def rooms_overview_screen_view(request):

    context = {}

    return render(request, "room-overview.html", context)

def rooms_category_screen_view(request):

    context = {}

    return render(request, "rooms-category.html", context)

def shortcodes_screen_view(request):

    context = {}

    return render(request, "shortcodes.html", context)