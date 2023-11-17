from django.contrib.auth.forms import UserCreationForm

class Registerform(UserCreationForm):
    class Meta(UserCreationForm.Meta):
        fields = UserCreationForm.Meta.fields + ("username","password1","password2","first_name","last_name","email",)