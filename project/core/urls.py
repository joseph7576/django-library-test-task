from django.urls import path
from core import views


app_name = 'core'

urlpatterns = [
    path('user/create/', views.CreateUserView.as_view(), name='create'),
    path('user/token/', views.CreateTokenView.as_view(), name='token'),
    path('user/profile/', views.ManageUserView.as_view(), name='me'),
]