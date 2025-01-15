from rest_framework import serializers
from .models import *
from src.models import *
from home.models import *


class GetUserRentalsSerializer(serializers.Serializer):
    makeName = serializers.CharField()
    modelName = serializers.CharField()
    companyName = serializers.CharField()
    noOfSeats = serializers.IntegerField()
    automatic = serializers.BooleanField()
    price = serializers.FloatField(default=0.1)
    rating = serializers.FloatField(default=0.1)
    noOfReviews = serializers.IntegerField()
    dateTimeRented = serializers.DateTimeField()
    dateTimeReturned = serializers.DateTimeField()
    expired = serializers.BooleanField()
    canReview = serializers.BooleanField()
    offer_id = serializers.IntegerField()
    image = serializers.ImageField(default="IMAGE")


class GetUserInfoSerializer(serializers.Serializer):
    firstName = serializers.CharField()
    lastName = serializers.CharField()
    phoneNo = serializers.CharField()
    driversLicense = serializers.CharField()


class PutUserInfoSerializer(serializers.Serializer):
    firstName = serializers.CharField()
    lastName = serializers.CharField()
    phoneNo = serializers.CharField()
    driversLicense = serializers.CharField()
    password = serializers.CharField()


class PutUserPasswordSerializer(serializers.Serializer):
    oldPassword = serializers.CharField()
    newPassword = serializers.CharField()


class DeleteUserSerializer(serializers.Serializer):
    password = serializers.CharField()


class GetCompanyVehicles(serializers.Serializer):
    image = serializers.ImageField(default="IMAGE")
    makeName = serializers.CharField()
    registration = serializers.CharField()
    modelName = serializers.CharField()
    isVisible = serializers.BooleanField()
    vehicleId = serializers.IntegerField()
    price = serializers.FloatField(default=0.1)
    rating = serializers.FloatField(default=0.1)
    noOfReviews = serializers.IntegerField()
    offerId = serializers.IntegerField()


class GetCompanyOffers(serializers.Serializer):
    offerId = serializers.IntegerField()
    price = serializers.FloatField(default=0.1)
    rating = serializers.FloatField(default=0.1)
    noOfReviews = serializers.IntegerField()
    makeName = serializers.CharField()
    modelName = serializers.CharField()
    image = serializers.ImageField(default="IMAGE")
    isVisible = serializers.BooleanField()


class GetCompanyRents(serializers.Serializer):
    makeName = serializers.CharField()
    modelName = serializers.CharField()
    registration = serializers.CharField()
    vehicleId = serializers.IntegerField()
    firstName = serializers.CharField()
    lastName = serializers.CharField()
    noOfReviews = serializers.IntegerField()
    dateTimePickup = serializers.DateTimeField()
    dateTimeReturned = serializers.DateTimeField()
    image = serializers.ImageField(default="IMAGE")


class GetCompanyReviews(serializers.Serializer):
    image = serializers.ImageField(default="IMAGE")
    makeName = serializers.CharField()
    modelName = serializers.CharField()
    registration = serializers.CharField()
    vehicleId = serializers.IntegerField()
    firstName = serializers.CharField()
    lastName = serializers.CharField()
    rating = serializers.FloatField(default=0.1)
    descriptions = serializers.CharField()


class GetCompanyEarnings(serializers.Serializer):
    totalEarnings = serializers.FloatField(default=0.1)
    yearEarnings = serializers.FloatField(default=0.1)
    totalRentals = serializers.IntegerField()
    yearRentals = serializers.IntegerField()
    monthlyEarnings = serializers.ListField(child=serializers.FloatField(default=0.1))


class GetCompanyInfo(serializers.Serializer):
    day = serializers.CharField()
    startTime = serializers.TimeField()
    endTime = serializers.TimeField()


class GetCompanyLocations(serializers.Serializer):
    cityName = serializers.CharField()
    streetName = serializers.CharField()
    streetNo = serializers.CharField()
    locationId = serializers.IntegerField()


class GetCompanyLocations(serializers.Serializer):
    cityName = serializers.CharField()
    streetName = serializers.CharField()
    streetNo = serializers.CharField()
    locationId = serializers.IntegerField()


class GetCompanyLocation(serializers.Serializer):
    latitude = serializers.FloatField()
    longitude = serializers.FloatField()
    streetName = serializers.CharField()
    streetNo = serializers.CharField()
    cityName = serializers.CharField()
    workingHours = serializers.ListField(
        child=serializers.DictField(child=serializers.CharField())
    )


class GetCompanyVehicleEdit(serializers.Serializer):
    registration = serializers.CharField()
    streetName = serializers.CharField()
    streetNo = serializers.CharField()
    cityName = serializers.CharField()
    locationId = serializers.IntegerField()


class GetCompanyOffer(serializers.Serializer):
    price = serializers.FloatField(default=0.1)
    image = serializers.ImageField(default="IMAGE")
    description = serializers.CharField()
    model_id = serializers.IntegerField()
    makeName = serializers.CharField()
    modelName = serializers.CharField()


class OnGoing(serializers.Serializer):
    pickUpDateTime = serializers.DateTimeField()
    dropOffDateTime = serializers.DateTimeField()
    firstName = serializers.CharField()
    lastName = serializers.CharField()
    price = serializers.FloatField()
    pickUpLocationId = serializers.IntegerField()
    dropOffLocationId = serializers.IntegerField()
    pickUpLocation = serializers.CharField()
    dropOffLocation = serializers.CharField()


class GetCompanyVehicleLog(serializers.Serializer):
    makeName = serializers.CharField()
    modelName = serializers.CharField()
    registration = serializers.CharField()
    streetName = serializers.CharField()
    streetNo = serializers.CharField()
    cityName = serializers.CharField()
    timesRented = serializers.IntegerField()
    moneyMade = serializers.FloatField()
    timesRented = serializers.IntegerField()
    moneyMade = serializers.FloatField()
    rentedTime = serializers.DateTimeField()
    onGoing = OnGoing(many=True)


class GetCompanyLog(serializers.Serializer):
    dateTimePickup = serializers.DateTimeField()
    dateTimeReturned = serializers.DateTimeField()
    firstName = serializers.CharField()
    lastName = serializers.CharField()
    price = serializers.FloatField()
    pickUpLocation = serializers.CharField()
    dropOffLocation = serializers.CharField()


class GetCompanyLogReviews(serializers.Serializer):
    firstName = serializers.CharField()
    lastName = serializers.CharField()
    date = serializers.DateTimeField()
    description = serializers.CharField()
    rating = serializers.FloatField()
