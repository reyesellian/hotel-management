"""
URL configuration for DigibyteHotel project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from django.conf import settings
from django.conf.urls.static import static

from main.views import (
    home_screen_view,
    about_screen_view,
    contact_screen_view,
    facility_screen_view,
    qr_screen_view,
    room_overview_screen_view,
    rooms_category_screen_view,
    shortcodes_screen_view,
)
urlpatterns = [
    path('admin/', admin.site.urls),
    path ('', home_screen_view, name="index"),
    path ('about/', about_screen_view, name="about"),
    path ('contact/', contact_screen_view, name="contact"),
    path ('facility/', facility_screen_view, name="facility"),
    path ('qr/', qr_screen_view, name="qr"),
    path ('rooms-overview/', room_overview_screen_view, name="rooms-overview"),
    path ('category/', rooms_category_screen_view, name="category"),
    path ('shortcodes/', shortcodes_screen_view, name="shortcodes"),
    ] + static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
