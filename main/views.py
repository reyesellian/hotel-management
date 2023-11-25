from django.shortcuts import render

# Create your views here.
def home_screen_view(request):

    context = {}
    return render(request, "personal/home.html", context)

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

def room_overview_screen_view(request):

    context = {}

    return render(request, "room-overview.html", context)

def rooms_category_screen_view(request):

    context = {}

    return render(request, "rooms-category.html", context)

def shortcodes_screen_view(request):

    context = {}

    return render(request, "shortcodes.html", context)